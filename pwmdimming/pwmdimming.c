/*##############################################################################
# File: tet                                                                    #
# Created Date: Wednesday, February 13th 2019, 11:51:23 pm                     #
# Author: SimonLiu_刘知海 (sliu009@gmail.com)                                     #
# ---------------                                                              #
# Last Modified: Wed Feb 13 2019                                               #
# Modified By: SimonLiu_刘知海                                                    #
# ---------------                                                              #
# Copyright (c) 2019 SimonLiu Inc.                                             #
##############################################################################*/
#include <aos/aos.h>
#include <hal/soc/uart.h>
#include "driver/uart.h"
#include <hal/soc/soc.h>
#include "../../../platform/mcu/esp8266/bsp/include/driver/gpio.h"


#define PWM_CHANNEL 1 
#define PWM_0_OUT_IO_MUX  PERIPHS_IO_MUX_GPIO5_U
#define PWM_0_OUT_IO_NUM 5
#define PWM_0_OUT_IO_FUNC FUNC_GPIO5


static void pwmInit(void);
static void dimming(void);
static void pwmrun(void);

static void pwmInit(void)
{
    const uint32_t period = 1000;
    uint32 pwm_duty_init[PWM_CHANNEL] = {1000};
    uint32_t io_info[PWM_CHANNEL][3] =
        {
            {PWM_0_OUT_IO_MUX, PWM_0_OUT_IO_FUNC, PWM_0_OUT_IO_NUM},
        };
    pwm_init(period, pwm_duty_init, PWM_CHANNEL, io_info);
}

static void dimming(void)
{
    static uint32_t duty = 0;
    static bool dimFlag = true;
    if ( dimFlag )
    {
        duty +=64;

        if (duty>=1000)
            dimFlag = false;
    }
    else
    {
            duty -= 64;
        if (duty<=0)        
            dimFlag = true;
    }
    printf("Duty = %d  \r\n",duty);
    pwm_set_duty(duty,0);
    pwm_start();
}

static void pwmrun(void)
{
    dimming();
    aos_post_delayed_action(2000, pwmrun, NULL);

}

int application_start(int argc, char *argv[])
{

    uart_config_t uartConfig;
    uartConfig.baud_rate = 9600; 
    uart_dev_t uart;
    uart.port = 1; 
    uart.config = uartConfig;
    hal_uart_init(&uart);

    pwmInit();

    aos_post_delayed_action(1000, pwmrun, NULL);
    aos_loop_run();
    return 0;
}