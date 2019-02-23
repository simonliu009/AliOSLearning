/******************************************************************************
 * @File Name:          
 * @Description:        
 * @Author:             刘知海 SimonLiu 
 * @Email:              sliu009@gmail.com 
 * @Date:               2019-02-23 17:51:10 
 * @Last Modified by:   SimonLiu 
 * @Last Modified time: 2019-02-23 17:51:10 
 ******************************************************************************/


#include <aos/aos.h>
#include <hal/soc/uart.h>
#include "driver/uart.h"
#include <hal/soc/soc.h>
#include "info_a.h"

static void app_delayed_action(void *arg)
{
    LOG("helloworld %s:%d %s\r\n", __func__, __LINE__, aos_task_name());
    info_a_fun();
    aos_post_delayed_action(5000, app_delayed_action, NULL);
}

int application_start(int argc, char *argv[])
{
    uart_config_t uartConfig;
    uartConfig.baud_rate = 9600; 
    uart_dev_t uart;
    uart.port = 1; 
    uart.config = uartConfig;
    hal_uart_init(&uart);
    LOG("application started.");
    aos_post_delayed_action(1000, app_delayed_action, NULL);
    aos_loop_run();

    return 0;
}

