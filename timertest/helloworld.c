/******************************************************************************
 * @File Name:          
 * @Description:        
 * @Author:             刘知海 SimonLiu 
 * @Email:              sliu009@gmail.com 
 * @Date:               2019-02-23 17:50:30 
 * @Last Modified by: SimonLiu
 * @Last Modified time: 2019-02-23 21:44:16
 ******************************************************************************/

#include <aos/aos.h>
#include <hal/soc/uart.h>
#include "driver/uart.h"
#include <hal/soc/soc.h>

//声明一个定时器变量
aos_timer_t timer1; 

//声明定时器回调函数
void timer1_cb(void); 

static void printMessage(void *arg);

//定时器回调函数实现
void timer1_cb(void)  
{
    printf("[%06d]messager from  timer\r\n" ,(unsigned)aos_now_ms());
}


static void printMessage(void *arg)
{
    printf("[%06d]messager from  yloop\r\n" ,(unsigned)aos_now_ms());
    aos_post_delayed_action(1000, printMessage, NULL);
}

int application_start(int argc, char *argv[])
{
    uart_config_t uartConfig;
    uartConfig.baud_rate = 9600; 
    uart_dev_t uart;
    uart.port = 1; 
    uart.config = uartConfig;
    hal_uart_init(&uart);
    //创建定时器
    aos_timer_new(&timer1, timer1_cb, NULL, 1000, 1);   
    //启动定时器
    aos_timer_start(&timer1);                           

    aos_post_delayed_action(1000, printMessage, NULL);
    
    aos_loop_run();

    return 0;
}