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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/MY New Processor/Register_File/Reg_file.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};



static void Always_34_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    int t41;
    char *t42;
    unsigned int t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 4464);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB25;

LAB22:    if (t18 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t6) = 1;

LAB25:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB26;

LAB27:
LAB28:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(36, ng0);

LAB13:    xsi_set_current_line(38, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2728);
    t32 = (t0 + 2728);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = (t0 + 2728);
    t36 = (t35 + 64U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t30, t31, t34, t37, 2, 1, t38, 32, 1);
    t39 = (t30 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (!(t40));
    t42 = (t31 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (!(t43));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    t4 = (t0 + 2728);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 2728);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng1)));
    xsi_vlog_generic_convert_array_indices(t6, t30, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t41 = (!(t9));
    t32 = (t30 + 4);
    t10 = *((unsigned int *)t32);
    t44 = (!(t10));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    t4 = (t0 + 2728);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 2728);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t6, t30, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t41 = (!(t9));
    t32 = (t30 + 4);
    t10 = *((unsigned int *)t32);
    t44 = (!(t10));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    t4 = (t0 + 2728);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 2728);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t6, t30, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t41 = (!(t9));
    t32 = (t30 + 4);
    t10 = *((unsigned int *)t32);
    t44 = (!(t10));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB20;

LAB21:    goto LAB12;

LAB14:    t46 = *((unsigned int *)t30);
    t47 = *((unsigned int *)t31);
    t48 = (t46 - t47);
    t49 = (t48 + 1);
    xsi_vlogvar_assign_value(t29, t28, 0, *((unsigned int *)t31), t49);
    goto LAB15;

LAB16:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t30);
    t48 = (t11 - t12);
    t49 = (t48 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t30), t49);
    goto LAB17;

LAB18:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t30);
    t48 = (t11 - t12);
    t49 = (t48 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t30), t49);
    goto LAB19;

LAB20:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t30);
    t48 = (t11 - t12);
    t49 = (t48 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t30), t49);
    goto LAB21;

LAB24:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(45, ng0);

LAB29:    xsi_set_current_line(47, ng0);
    t21 = (t0 + 1528U);
    t22 = *((char **)t21);
    t21 = (t0 + 2728);
    t28 = (t0 + 2728);
    t29 = (t28 + 72U);
    t32 = *((char **)t29);
    t33 = (t0 + 2728);
    t34 = (t33 + 64U);
    t35 = *((char **)t34);
    t36 = (t0 + 1368U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t30, t31, t32, t35, 2, 1, t37, 2, 2);
    t36 = (t30 + 4);
    t40 = *((unsigned int *)t36);
    t41 = (!(t40));
    t38 = (t31 + 4);
    t43 = *((unsigned int *)t38);
    t44 = (!(t43));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB30;

LAB31:    goto LAB28;

LAB30:    t46 = *((unsigned int *)t30);
    t47 = *((unsigned int *)t31);
    t48 = (t46 - t47);
    t49 = (t48 + 1);
    xsi_vlogvar_assign_value(t21, t22, 0, *((unsigned int *)t31), t49);
    goto LAB31;

}

static void Cont_53_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2728);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2728);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1048U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 8, t4, t8, t11, 2, 1, t13, 2, 2);
    t12 = (t0 + 4576);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t17, 0, 8);
    t18 = 255U;
    t19 = t18;
    t20 = (t5 + 4);
    t21 = *((unsigned int *)t5);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 | t18);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 | t19);
    xsi_driver_vfirst_trans(t12, 0, 7);
    t26 = (t0 + 4480);
    *((int *)t26) = 1;

LAB1:    return;
}

static void Cont_55_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 4144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2728);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2728);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1208U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 8, t4, t8, t11, 2, 1, t13, 2, 2);
    t12 = (t0 + 4640);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t17, 0, 8);
    t18 = 255U;
    t19 = t18;
    t20 = (t5 + 4);
    t21 = *((unsigned int *)t5);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 | t18);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 | t19);
    xsi_driver_vfirst_trans(t12, 0, 7);
    t26 = (t0 + 4496);
    *((int *)t26) = 1;

LAB1:    return;
}


extern void work_m_00000000000754317264_0520159928_init()
{
	static char *pe[] = {(void *)Always_34_0,(void *)Cont_53_1,(void *)Cont_55_2};
	xsi_register_didat("work_m_00000000000754317264_0520159928", "isim/TB_Final_Phase_isim_beh.exe.sim/work/m_00000000000754317264_0520159928.didat");
	xsi_register_executes(pe);
}
