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
static const char *ng0 = "C:/Users/152/Documents/Ram and Jonny/Stopwatch-master/SW.v";
static const char *ng1 = "";
static int ng2[] = {9572, 0};
static int ng3[] = {9, 0};
static int ng4[] = {5, 0};
static int ng5[] = {0, 0};
static int ng6[] = {1, 0};



static void Always_45_0(char *t0)
{
    char t6[8];
    char t8[8];
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;

LAB0:    t1 = (t0 + 4448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 4768);
    *((int *)t2) = 1;
    t3 = (t0 + 4480);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = ((char*)((ng2)));
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 16, t4, 16, t5, 16);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 16, t6, 16, t7, 16);
    t9 = ((char*)((ng2)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 16, t8, 16, t9, 16);
    t11 = (t0 + 3528);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 3368);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t0 + 3208);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t0 + 3048);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlogfile_write(1, 0, 0, ng1, 6, t0, (char)118, t10, 16, (char)118, t13, 4, (char)118, t16, 4, (char)118, t19, 4, (char)118, t22, 4);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t9 = (t5 + 4);
    t23 = *((unsigned int *)t4);
    t24 = *((unsigned int *)t5);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t7);
    t27 = *((unsigned int *)t9);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t7);
    t31 = *((unsigned int *)t9);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB9;

LAB6:    if (t32 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t12 = (t6 + 4);
    t35 = *((unsigned int *)t12);
    t36 = (~(t35));
    t37 = *((unsigned int *)t6);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t9 = (t5 + 4);
    t23 = *((unsigned int *)t4);
    t24 = *((unsigned int *)t5);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t7);
    t27 = *((unsigned int *)t9);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t7);
    t31 = *((unsigned int *)t9);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB26;

LAB23:    if (t32 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t6) = 1;

LAB26:    t12 = (t6 + 4);
    t35 = *((unsigned int *)t12);
    t36 = (~(t35));
    t37 = *((unsigned int *)t6);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(78, ng0);

LAB40:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 4, t5, 32);
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);

LAB29:
LAB12:    goto LAB2;

LAB8:    t11 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(49, ng0);

LAB13:    xsi_set_current_line(50, ng0);
    t13 = (t0 + 3208);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng4)));
    memset(t8, 0, 8);
    t17 = (t15 + 4);
    t18 = (t16 + 4);
    t40 = *((unsigned int *)t15);
    t41 = *((unsigned int *)t16);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t17);
    t44 = *((unsigned int *)t18);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t17);
    t48 = *((unsigned int *)t18);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB17;

LAB14:    if (t49 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t8) = 1;

LAB17:    t20 = (t8 + 4);
    t52 = *((unsigned int *)t20);
    t53 = (~(t52));
    t54 = *((unsigned int *)t8);
    t55 = (t54 & t53);
    t56 = (t55 != 0);
    if (t56 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(57, ng0);

LAB22:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 4, t5, 32);
    t7 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);

LAB20:    goto LAB12;

LAB16:    t19 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(51, ng0);

LAB21:    xsi_set_current_line(52, ng0);
    t21 = ((char*)((ng5)));
    t22 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 4, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 4, t5, 32);
    t7 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);
    goto LAB20;

LAB25:    t11 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(64, ng0);

LAB30:    xsi_set_current_line(65, ng0);
    t13 = (t0 + 3528);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng4)));
    memset(t8, 0, 8);
    t17 = (t15 + 4);
    t18 = (t16 + 4);
    t40 = *((unsigned int *)t15);
    t41 = *((unsigned int *)t16);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t17);
    t44 = *((unsigned int *)t18);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t17);
    t48 = *((unsigned int *)t18);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB34;

LAB31:    if (t49 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t8) = 1;

LAB34:    t20 = (t8 + 4);
    t52 = *((unsigned int *)t20);
    t53 = (~(t52));
    t54 = *((unsigned int *)t8);
    t55 = (t54 & t53);
    t56 = (t55 != 0);
    if (t56 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(72, ng0);

LAB39:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 4, t5, 32);
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);

LAB37:    goto LAB29;

LAB33:    t19 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(66, ng0);

LAB38:    xsi_set_current_line(67, ng0);
    t21 = ((char*)((ng5)));
    t22 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 4, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB37;

}


extern void work_m_00000000003319339166_1454352450_init()
{
	static char *pe[] = {(void *)Always_45_0};
	xsi_register_didat("work_m_00000000003319339166_1454352450", "isim/swtb_isim_beh.exe.sim/work/m_00000000003319339166_1454352450.didat");
	xsi_register_executes(pe);
}
