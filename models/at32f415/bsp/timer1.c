/*
 * timer1.c
 *
 *  Created on: 2023 Mar 9
 *      Author: ruffman
 */
#include "at32f415_board.h"

void timer1_config(){

	crm_clocks_freq_type crm_clocks_freq_struct = {0};

	/* get system clock */
	crm_clocks_freq_get(&crm_clocks_freq_struct);

	/* enable tmr1 clock */
	crm_periph_clock_enable(CRM_TMR1_PERIPH_CLOCK, TRUE);

	/* tmr1 configuration */
	/* time base configuration */
	/* systemclock/12000/10000 = 1hz */
	tmr_base_init(TMR1, 9999, (crm_clocks_freq_struct.ahb_freq / 10000) - 1);
	tmr_cnt_dir_set(TMR1, TMR_COUNT_UP);

	/* overflow interrupt enable */
	tmr_interrupt_enable(TMR1, TMR_OVF_INT, TRUE);

	/* tmr1 overflow interrupt nvic init */
	nvic_priority_group_config(NVIC_PRIORITY_GROUP_4);
	nvic_irq_enable(TMR1_OVF_TMR10_IRQn, 0, 0);

	/* enable tmr1 */
	tmr_counter_enable(TMR1, TRUE);


}


/**
  * @brief  this function handles timer1 overflow handler.
  * @param  none
  * @retval none
  */
void TMR1_OVF_TMR10_IRQHandler(void)
{
  if(tmr_flag_get(TMR1, TMR_OVF_FLAG) != RESET)
  {
    /* add user code... */
    // at32_led_toggle(LED3);
    tmr_flag_clear(TMR1, TMR_OVF_FLAG);
  }
}
