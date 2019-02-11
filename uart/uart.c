/*
 * Copyright (C) 2015-2017 Alibaba Group Holding Limited
 * 
 * 
 *   this is a uart sample from hal uart for esp8266, and the same as other chips;
 *   for esp8266 , when the port set is 1 ,then the uart1 ande uart2 is the same baud_rate , but the uart1（gpio2） is for log ;
 * 
 *   这sample是一个从hal层适配esp8266的，也许同样适配其他芯片
 *   对于esp8266，如果设置串口为1，则串口一和串口零都是这个波特率，如果需要不一样，请自行修改driver ，注意串口一（gpio2）是作为日志打印。
 * 
 *   Contributor:  https://github.com/xuhongv
 * 
 * 
 */


#include <aos/aos.h>
#include <hal/soc/uart.h>
#include "driver/uart.h"
#include <hal/soc/soc.h>

#define HAL_WAIT_FOREVER 0xFFFFFFFFU


static void printMessage(void);

static void printMessage(void)
{
    printf("[%d] -- Message from printf -- \r\n",(unsigned)aos_now_ms());
    LOG("== Message from LOG ==\r\n");
    aos_post_delayed_action(1000, printMessage, NULL);

}

int application_start(int argc, char *argv[])
{

    printf("uart sample application started...\n");

    uart_config_t uartConfig;
    uartConfig.baud_rate = 9600; 
    uart_dev_t uart;
    uart.port = 1; //for esp8266 , when the port set is 1 ,then the uart1 ande uart2 is the same baud_rate , but the uart1 is for log 
    uart.config = uartConfig;
    hal_uart_init(&uart);

    aos_post_delayed_action(1000, printMessage, NULL);
    aos_loop_run();
    return 0;
}
