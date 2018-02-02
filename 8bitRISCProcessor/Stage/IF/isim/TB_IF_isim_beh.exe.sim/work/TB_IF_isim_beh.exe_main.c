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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003950822321_1957175458_init();
    work_m_00000000002014593263_4033376979_init();
    work_m_00000000000590011122_3561656756_init();
    xilinxcorelib_ver_m_00000000001067635404_1417236383_init();
    work_m_00000000003452451064_1589652559_init();
    work_m_00000000000257240875_2020526158_init();
    work_m_00000000003283271962_2352116331_init();
    work_m_00000000004150732501_3985248169_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004150732501_3985248169");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
