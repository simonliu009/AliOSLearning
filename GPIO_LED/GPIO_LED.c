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
 * GPIO4: output
 * GPIO5: output
 * GPIO14:  input, pulled up, interrupt from falling edge
 *
 * Test:
 * LED blink on GPIO4
 * LED toggled on GPIO5 by push button on GPIO14
 *
 */


#define GPIO_LED1   4
#define GPIO_LED2   5
#define GPIO_INPUT 14


static void gpioInit(void);
static void toggleLed2(void);

static void gpio_isr_handler(void *arg);


gpio_dev_t led1;
gpio_dev_t led2;
gpio_dev_t input;



static void gpio_isr_handler(void* arg)
{

    hal_gpio_disable_irq(&input);
    hal_gpio_output_toggle(&led1);
    hal_gpio_clear_irq(&input);
   
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

}

int application_start(int argc, char *argv[])
{

    gpioInit();
    aos_post_delayed_action(1000, toggleLed2, NULL);
    aos_loop_run();

    return 0;
}
