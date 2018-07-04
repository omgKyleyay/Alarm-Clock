/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x1048c146 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Barry/Computer Hardware/DigitalClock_RGomez/Counter5bit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1223618268_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:
LAB3:    t1 = (t0 + 2052);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2104);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3788);
    t5 = (t0 + 2140);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2104);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2140);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1052U);
    t5 = *((char **)t2);
    t2 = (t0 + 3756U);
    t4 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t5, t2, 9);
    if (t4 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3756U);
    t3 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t2, t1, 9);
    if (t3 != 0)
        goto LAB15;

LAB16:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3756U);
    t3 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t2, t1, 17);
    if (t3 != 0)
        goto LAB17;

LAB18:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3756U);
    t3 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t2, t1, 17);
    if (t3 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3756U);
    t3 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t2, t1, 18);
    if (t3 != 0)
        goto LAB25;

LAB26:
LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(58, ng0);
    t6 = (t0 + 1052U);
    t7 = *((char **)t6);
    t6 = (t0 + 3756U);
    t8 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t7, t6, 1);
    t9 = (t10 + 12U);
    t11 = *((unsigned int *)t9);
    t12 = (1U * t11);
    t13 = (5U != t12);
    if (t13 == 1)
        goto LAB13;

LAB14:    t14 = (t0 + 2140);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 5U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2104);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB13:    xsi_size_not_matching(5U, t12, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(61, ng0);
    t5 = (t0 + 3793);
    t7 = (t0 + 2140);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t14 = (t9 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2104);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB17:    xsi_set_current_line(64, ng0);
    t5 = (t0 + 1052U);
    t6 = *((char **)t5);
    t5 = (t0 + 3756U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t6, t5, 1);
    t8 = (t10 + 12U);
    t11 = *((unsigned int *)t8);
    t12 = (1U * t11);
    t4 = (5U != t12);
    if (t4 == 1)
        goto LAB19;

LAB20:    t9 = (t0 + 2140);
    t14 = (t9 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 5U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2104);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB19:    xsi_size_not_matching(5U, t12, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(67, ng0);
    t5 = (t0 + 1052U);
    t6 = *((char **)t5);
    t5 = (t0 + 3756U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t6, t5, 1);
    t8 = (t10 + 12U);
    t11 = *((unsigned int *)t8);
    t12 = (1U * t11);
    t4 = (5U != t12);
    if (t4 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 2140);
    t14 = (t9 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 5U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2104);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB23:    xsi_size_not_matching(5U, t12, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(71, ng0);
    t5 = (t0 + 3798);
    t7 = (t0 + 2140);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t14 = (t9 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

}

static void work_a_1223618268_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2176);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2060);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1223618268_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1223618268_3212880686_p_0,(void *)work_a_1223618268_3212880686_p_1};
	xsi_register_didat("work_a_1223618268_3212880686", "isim/FinalWatch_tb_isim_beh.exe.sim/work/a_1223618268_3212880686.didat");
	xsi_register_executes(pe);
}
