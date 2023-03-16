/**
  **************************************************************************
  * @file     at32f415_board.h
  * @version  v2.0.5
  * @date     2022-05-20
  * @brief    header file for at-start board. set of firmware functions to
  *           manage leds and push-button. initialize delay function.
  **************************************************************************
  *                       Copyright notice & Disclaimer
  *
  * The software Board Support Package (BSP) that is made available to
  * download from Artery official website is the copyrighted work of Artery.
  * Artery authorizes customers to use, copy, and distribute the BSP
  * software and its related documentation for the purpose of design and
  * development in conjunction with Artery microcontrollers. Use of the
  * software is governed by this copyright notice and the following disclaimer.
  *
  * THIS SOFTWARE IS PROVIDED ON "AS IS" BASIS WITHOUT WARRANTIES,
  * GUARANTEES OR REPRESENTATIONS OF ANY KIND. ARTERY EXPRESSLY DISCLAIMS,
  * TO THE FULLEST EXTENT PERMITTED BY LAW, ALL EXPRESS, IMPLIED OR
  * STATUTORY OR OTHER WARRANTIES, GUARANTEES OR REPRESENTATIONS,
  * INCLUDING BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY,
  * FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT.
  *
  **************************************************************************
  */

#ifndef __AT32F415_BOARD_H
#define __AT32F415_BOARD_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stdio.h"
#include "at32f415.h"

#include "i2c_application.h"

/** @addtogroup AT32F415_board
  * @{
  */

/** @addtogroup BOARD
  * @{
  */

/** @defgroup BOARD_pins_definition
  * @{
  */

/**
  * this header include define support list:
  * 1. at-start-f415 v1.x board
  * if define AT_START_F415_V1, the header file support at-start-f415 v1.x board
  */

#if !defined (AT_START_F415_V1)
#error "please select first the board at-start device used in your application (in at32f415_board.h file)"
#endif

/******************** define led ********************/
typedef enum
{
  LED2                                   = 0,
  LED3                                   = 1,
  LED4                                   = 2
} led_type;

#define LED_NUM                          3

#if defined (AT_START_F415_V1)
#define LED2_PIN                         GPIO_PINS_2
#define LED2_GPIO                        GPIOC
#define LED2_GPIO_CRM_CLK                CRM_GPIOC_PERIPH_CLOCK

#define LED3_PIN                         GPIO_PINS_3
#define LED3_GPIO                        GPIOC
#define LED3_GPIO_CRM_CLK                CRM_GPIOC_PERIPH_CLOCK

#define LED4_PIN                         GPIO_PINS_5
#define LED4_GPIO                        GPIOC
#define LED4_GPIO_CRM_CLK                CRM_GPIOC_PERIPH_CLOCK
#endif

/**************** define print uart ******************/
#define PRINT_UART                       USART1
#define PRINT_UART_CRM_CLK               CRM_USART1_PERIPH_CLOCK
#define PRINT_UART_TX_PIN                GPIO_PINS_9
#define PRINT_UART_TX_GPIO               GPIOA
#define PRINT_UART_TX_GPIO_CRM_CLK       CRM_GPIOA_PERIPH_CLOCK

/******************* define button *******************/
typedef enum
{
  USER_BUTTON                            = 0,
  NO_BUTTON                              = 1
} button_type;

#define USER_BUTTON_PIN                  GPIO_PINS_0
#define USER_BUTTON_PORT                 GPIOA
#define USER_BUTTON_CRM_CLK              CRM_GPIOA_PERIPH_CLOCK


// I2C

#define I2C_TIMEOUT                      0xFFFF

#define I2Cx_SPEED                       100000
#define I2Cx_ADDRESS                     0xA0

#define I2Cx_PORT                        I2C1
#define I2Cx_CLK                         CRM_I2C1_PERIPH_CLOCK

#define I2Cx_SCL_PIN                     GPIO_PINS_8
#define I2Cx_SCL_GPIO_PORT               GPIOB
#define I2Cx_SCL_GPIO_CLK                CRM_GPIOB_PERIPH_CLOCK

#define I2Cx_SDA_PIN                     GPIO_PINS_9
#define I2Cx_SDA_GPIO_PORT               GPIOB
#define I2Cx_SDA_GPIO_CLK                CRM_GPIOB_PERIPH_CLOCK

#define BUF_SIZE                         8


/**
  * @}
  */

/** @defgroup BOARD_exported_functions
  * @{
  */

/******************** functions ********************/
void at32_board_init(void);

/* led operation function */
void at32_led_init(led_type led);
void at32_led_on(led_type led);
void at32_led_off(led_type led);
void at32_led_toggle(led_type led);

/* button operation function */
void at32_button_init(void);
button_type at32_button_press(void);
uint8_t at32_button_state(void);

/* delay function */
void delay_init(void);
void delay_us(uint32_t nus);
void delay_ms(uint16_t nms);
void delay_sec(uint16_t sec);

/* printf uart init function */
void uart_print_init(uint32_t baudrate);

// i2c
void i2c_lowlevel_init(i2c_handle_type* hi2c);
uint32_t get_UID();

// Timer1
void timer1_config();



/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

#ifdef __cplusplus
}
#endif

#endif

