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

char *IEEE_P_3620187407;
char *WORK_P_4250642694;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_TEXTIO;
char *IEEE_P_3499444699;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_4250642694_init();
    std_textio_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_2829566387_2959432447_init();
    xilinxcorelib_a_1241677169_1709443946_init();
    xilinxcorelib_a_0693849982_0543512595_init();
    xilinxcorelib_a_0605916680_3212880686_init();
    work_a_0357608405_1653151043_init();
    work_a_2021514811_3212880686_init();


    xsi_register_tops("work_a_2021514811_3212880686");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_4250642694 = xsi_get_engine_memory("work_p_4250642694");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
