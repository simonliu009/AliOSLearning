/*
 * Copyright (C) 2015-2017 Alibaba Group Holding Limited
 */

#include <aos/aos.h>
#include <hal/soc/soc.h>
#include <hal/soc/uart.h>
#include "driver/uart.h"
// #include "esp8266/eagle_soc.h"

/**
 * Brief:
 * This test code shows how to configure gpio and how to use gpio interrupt.
 *
 * GPIO status:
 * GPIO18: output
 * GPIO4: output
 * GPIO5:  input, pulled up, interrupt from rising edge and falling edge
 *
 * Test:
 * Connect GPIO18 with LED
 * Connect GPIO4 with GPIO5
 * Generate pulses on GPIO4, that triggers interrupt on GPIO5 to blink the led.
 *
 */

// #define GPIO_LED_IO     18
// #define GPIO_TRIGGER_IO 4
// #define GPIO_INPUT_IO   5

#define GPIO_LED1   4
#define GPIO_LED2   5
#define GPIO_INPUT 14


static void gpioInit(void);
static void toggleLed2(void);

static void gpio_isr_handler(void *arg);

// static void led_toggle_timer_cb(void);
// aos_timer_t led_toggle_timer;


// static void led_toggle_timer_cb(void)
// {
//     hal_gpio_output_toggle(&led2);
//     LOG("LOG ouput: Toggle LED2 \r\n");
// }
// static void led_toggle(void)
// {
//     // aos_timer_new_ext(&led_toggle_timer, led_toggle_timer_cb,NULL,1000,1,0);
//     aos_timer_new(&led_toggle_timer, led_toggle_timer_cb, NULL, 1000, 1);
//     aos_timer_start(&led_toggle_timer);

// }

gpio_dev_t led1;
gpio_dev_t led2;
gpio_dev_t input;

uint32_t lastPushed;


static void gpio_isr_handler(void* arg)
{
    // uint32_t gpio_num = (uint32_t) arg;
    // uint32_t value = 0;
    
    // long long lastPushedMs = 0;
    // long long currentMs;
    // currentMs = aos_now_ms();
    // uint32_t lastPushedMs = 0;
    uint32_t currentMs;
    currentMs = (uint32_t)aos_now_ms();

    if ((currentMs - lastPushed) > 50)
    {
    hal_gpio_disable_irq(&input);
    hal_gpio_output_toggle(&led1);
    hal_gpio_clear_irq(&input);
    lastPushed = currentMs;
    }

    // hal_gpio_input_get(&input, &value);
    // LOG("GPIO[%d] intr, val: %d\n", gpio_num, value);


} 





static void gpioInit(void)
{
/* gpio port config */
    led1.port = GPIO_LED1;
    /* set as output mode */
    led1.config = OUTPUT_PUSH_PULL;
    /* configure GPIO with the given settings */
    hal_gpio_init(&led1);

    /* gpio port config */
    led2.port = GPIO_LED2;
    /* set as output mode */
    led2.config = OUTPUT_PUSH_PULL;
    /* configure GPIO with the given settings */
    hal_gpio_init(&led2);

    /* input pin config */
    input.port = GPIO_INPUT;
    /* set as interrupt mode */
    input.config = IRQ_MODE;
    /* configure GPIO with the given settings */
    hal_gpio_init(&input);

    /* gpio interrupt config */
    /*
    typedef enum {
    IRQ_TRIGGER_RISING_EDGE  = 0x1, Interrupt triggered at input signal's rising edge 
    IRQ_TRIGGER_FALLING_EDGE = 0x2, Interrupt triggered at input signal's falling edge
    IRQ_TRIGGER_BOTH_EDGES   = IRQ_TRIGGER_RISING_EDGE | IRQ_TRIGGER_FALLING_EDGE,
    } gpio_irq_trigger_t;
     */

    hal_gpio_enable_irq(&input, IRQ_TRIGGER_FALLING_EDGE, gpio_isr_handler, (void *) GPIO_INPUT);

}

static void toggleLed2(void)
{
    hal_gpio_output_toggle(&led2);
    aos_post_delayed_action(500, toggleLed2, NULL);
    LOG("LOG ouput: Toggle LED2 \r\n");
    printf("Printf ouput: Toggle LED2 \r\n");
}

int application_start(int argc, char *argv[])
{
    // uart_config_t uartConfig;
    // uart_dev_t uart;
    // uartConfig.baud_rate = 115200; 
    // uart_dev_t uart;
    // uart.port = 2; //for esp8266 , when the port set is 1 ,then the uart1 ande uart2 is the same baud_rate , but the uart1 is for log 
    // uart.config = uartConfig;

   uart_dev_t uart_2;
   uart_2.port                = 2;
   uart_2.config.baud_rate    = 115200;
   uart_2.config.data_width   = DATA_WIDTH_8BIT;
   uart_2.config.parity       = NO_PARITY;
   uart_2.config.stop_bits    = STOP_BITS_1;
   uart_2.config.flow_control = FLOW_CONTROL_DISABLED;
   hal_uart_init(&uart_2);


    hal_uart_init(&uart_2);
    lastPushed = (uint32_t)aos_now_ms();
    gpioInit();
    aos_post_delayed_action(1000, toggleLed2, NULL);
    // led_toggle();
    aos_loop_run();

    return 0;
}
