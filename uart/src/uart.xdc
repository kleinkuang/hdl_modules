
# UART
# - TX IO40
set_property IOSTANDARD LVCMOS33                [get_ports TX]
set_property PACKAGE_PIN W9                     [get_ports TX]
# - TX IO41
set_property IOSTANDARD LVCMOS33                [get_ports RX]
set_property PACKAGE_PIN Y9                     [get_ports RX]

# Buttons
# - BTN0
set_property IOSTANDARD LVCMOS33                [get_ports rst]
set_property PACKAGE_PIN D19                    [get_ports rst]
# - BTN1
#set_property IOSTANDARD LVCMOS33                [get_ports start]
#set_property PACKAGE_PIN D20                    [get_ports start]


#set_property -dict { PACKAGE_PIN L20    IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L9N_T1_DQS_AD3N_35 Sch=BTN2
#set_property -dict { PACKAGE_PIN L19    IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L9P_T1_DQS_AD3P_35 Sch=BTN3

# Switches
# - SW0
set_property IOSTANDARD LVCMOS33                [get_ports start]
set_property PACKAGE_PIN M20                    [get_ports start]
#set_property -dict { PACKAGE_PIN M19    IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L7P_T1_AD2P_35 Sch=SW1

# LEDs
# - LED0
set_property IOSTANDARD LVCMOS33                [get_ports full]
set_property PACKAGE_PIN R14                    [get_ports full]
#set_property -dict { PACKAGE_PIN P14    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L6P_T0_34 Sch=LED1
#set_property -dict { PACKAGE_PIN N16    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L21N_T3_DQS_AD14N_35 Sch=LED2
#set_property -dict { PACKAGE_PIN M14    IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L23P_T3_35 Sch=LED3