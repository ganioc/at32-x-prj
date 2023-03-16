/*
 * uid.c
 *
 *  Created on: 2023 Mar 6
 *      Author: ruffman
 */


/*
 *
 *
 * ����AT32��UID��������û����Դӻ���ַ��0x1FFFF7E8 �ж�ȡ96bit���ݣ������е�[87:79][33:28][16:0]
���Ϊ 32bit ��ΪΨһʶ���볤�ȡ�
 *  9 bit, 6 bit, 17 bit,  =  32 bit total
 */

#include "at32f415_board.h"

#define UIDBASE    0x1FFFF7E0
#define UID31_BASE 0x1FFFF7E8
#define UID63_BASE 0x1FFFF7EC
#define UID95_BASE 0x1FFFF7F0


uint32_t get_UID(){
	uint32_t m1 = *(uint32_t  *)UID31_BASE;
	uint32_t m2 = *(uint32_t  *)UID63_BASE;
	uint32_t m3 = *(uint32_t  *)UID95_BASE;

	uint32_t m = (m1 & 0x1FFFF)|((m1 & 0xF0000000)>>9)|((m2 & 0x3) << 21)| ((m3 & 0xFF8000) << 8);

	return m;
}
