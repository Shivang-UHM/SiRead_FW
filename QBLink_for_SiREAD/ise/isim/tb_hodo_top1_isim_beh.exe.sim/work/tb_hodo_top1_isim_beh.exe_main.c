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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *WORK_P_4250642694;
char *UNIMACRO_P_0947159679;
char *IEEE_P_0774719531;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    unimacro_p_0947159679_init();
    work_p_4250642694_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_3458723563_3979135294_init();
    unisim_a_2627850724_0725860537_init();
    ieee_p_0774719531_init();
    unisim_a_4160231357_3824467259_init();
    unisim_a_1027153212_2930107152_init();
    unisim_a_3468871596_1532504268_init();
    unisim_a_1490675510_1976025627_init();
    work_a_4041658745_0912031422_init();
    unisim_a_3321449454_0621957688_init();
    xilinxcorelib_a_3928059347_3212880686_init();
    xilinxcorelib_a_3931412523_3212880686_init();
    xilinxcorelib_a_1706808773_3212880686_init();
    work_a_0802900139_3159074371_init();
    xilinxcorelib_a_0903201034_3212880686_init();
    xilinxcorelib_a_2606897407_3212880686_init();
    xilinxcorelib_a_2035134324_3212880686_init();
    work_a_3819779223_1289078305_init();
    work_a_0656900928_3212880686_init();
    xilinxcorelib_a_2942499791_3212880686_init();
    xilinxcorelib_a_3321541187_3212880686_init();
    xilinxcorelib_a_2992104550_3212880686_init();
    work_a_2464651217_0537919020_init();
    work_a_2817914012_3212880686_init();
    work_a_2883276406_3212880686_init();
    work_a_2136280892_3212880686_init();
    unisim_a_0193039582_1428675764_init();
    work_a_4287052055_3212880686_init();
    work_a_0869908689_3212880686_init();
    work_a_2385495955_3212880686_init();
    work_a_1995751545_3212880686_init();
    work_a_3998729115_3212880686_init();
    work_a_1774115812_2372691052_init();


    xsi_register_tops("work_a_1774115812_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    WORK_P_4250642694 = xsi_get_engine_memory("work_p_4250642694");
    UNIMACRO_P_0947159679 = xsi_get_engine_memory("unimacro_p_0947159679");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
