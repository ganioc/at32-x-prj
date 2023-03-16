/*
 * i2c.c
 *
 *  Created on: 2023 Mar 6
 *      Author: ruffman
 */

#include "at32f415_board.h"



i2c_handle_type hi2cx;


/**
  * @brief  initializes peripherals used by the i2c.
  * @param  none
  * @retval none
  */
void i2c_lowlevel_init(i2c_handle_type* hi2c)
{
  gpio_init_type gpio_initstructure;

  if(hi2c->i2cx == I2Cx_PORT)
  {
    /* i2c periph clock enable */
    crm_periph_clock_enable(I2Cx_CLK, TRUE);
    crm_periph_clock_enable(I2Cx_SCL_GPIO_CLK, TRUE);
    crm_periph_clock_enable(I2Cx_SDA_GPIO_CLK, TRUE);
    crm_periph_clock_enable(CRM_IOMUX_PERIPH_CLOCK, TRUE);

    gpio_pin_remap_config(I2C1_MUX , TRUE);

    /* gpio configuration */
    gpio_initstructure.gpio_out_type       = GPIO_OUTPUT_OPEN_DRAIN;
    gpio_initstructure.gpio_pull           = GPIO_PULL_UP;
    gpio_initstructure.gpio_mode           = GPIO_MODE_MUX;
    gpio_initstructure.gpio_drive_strength = GPIO_DRIVE_STRENGTH_MODERATE;

    /* configure i2c pins: scl */
    gpio_initstructure.gpio_pins = I2Cx_SCL_PIN;
    gpio_init(I2Cx_SCL_GPIO_PORT, &gpio_initstructure);

    /* configure i2c pins: sda */
    gpio_initstructure.gpio_pins = I2Cx_SDA_PIN;
    gpio_init(I2Cx_SDA_GPIO_PORT, &gpio_initstructure);

//	gpio_pin_mux_config(GPIOB, GPIO_PINS_SOURCE6, GPIO_MUX_2);
//	gpio_pin_mux_config(GPIOB, GPIO_PINS_SOURCE7, GPIO_MUX_2);

    // gpio_pin_remap_config(I2C1_MUX , TRUE);

    i2c_init(hi2c->i2cx, I2C_FSMODE_DUTY_2_1, I2Cx_SPEED);

    // i2c_own_address1_set(hi2c->i2cx, I2C_ADDRESS_MODE_7BIT, I2Cx_ADDRESS);
    i2c_own_address1_set(hi2c->i2cx, I2C_ADDRESS_MODE_7BIT, I2Cx_ADDRESS);
  }
}
