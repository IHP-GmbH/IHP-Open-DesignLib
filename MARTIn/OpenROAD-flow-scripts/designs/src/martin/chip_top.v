module chip_top (
    clk_pad,
	rst_pad,
	wr_enable_pad,
	aux_enable_pad,
	data_in_pad,
	shreg_in_pad,
	reg_addr_pad,
	out_select_pad,
	data_out_pad,
	shreg_out_pad,
	lfsr_out_pad
);
//Inputs
inout wire wr_enable_pad, clk_pad, rst_pad, shreg_in_pad, aux_enable_pad;
inout wire [7:0] data_in_pad;
inout wire [2:0] reg_addr_pad;
inout wire [1:0] out_select_pad;

//Outputs
inout wire [7:0] data_out_pad;
inout wire shreg_out_pad, lfsr_out_pad;

//Expanded pads
wire data_in_pad_1;
wire data_in_pad_2;
wire data_in_pad_3;
wire data_in_pad_4;
wire data_in_pad_5;
wire data_in_pad_6;
wire data_in_pad_7;
wire data_in_pad_8;
assign {data_in_pad_8, data_in_pad_7, data_in_pad_6, data_in_pad_5, data_in_pad_4,
		data_in_pad_3, data_in_pad_2, data_in_pad_1} = data_in_pad;

wire reg_addr_pad_1;
wire reg_addr_pad_2;
wire reg_addr_pad_3;
assign {reg_addr_pad_3, reg_addr_pad_2, reg_addr_pad_1} = reg_addr_pad;

wire out_select_pad_1;
wire out_select_pad_2;
assign {out_select_pad_2, out_select_pad_1} = out_select_pad;

wire data_out_pad_1;
wire data_out_pad_2;
wire data_out_pad_3;
wire data_out_pad_4;
wire data_out_pad_5;
wire data_out_pad_6;
wire data_out_pad_7;
wire data_out_pad_8;
assign data_out_pad =  {data_out_pad_8, data_out_pad_7, data_out_pad_6, data_out_pad_5, data_out_pad_4,
						data_out_pad_3, data_out_pad_2, data_out_pad_1};


//Pad to core nets
wire clk_p2c;
wire rst_p2c;
wire aux_enable_p2c;
wire shreg_in_p2c;
wire wr_enable_p2c;
wire [7:0] data_in_p2c;
wire [2:0] reg_addr_p2c;
wire [1:0] out_select_p2c;

//Expanded nets
wire data_in_p2c_1;
wire data_in_p2c_2;
wire data_in_p2c_3;
wire data_in_p2c_4;
wire data_in_p2c_5;
wire data_in_p2c_6;
wire data_in_p2c_7;
wire data_in_p2c_8;
assign data_in_p2c = {data_in_p2c_8,data_in_p2c_7,data_in_p2c_6,data_in_p2c_5,
        data_in_p2c_4,data_in_p2c_3,data_in_p2c_2,data_in_p2c_1} ;

wire reg_addr_p2c_1;
wire reg_addr_p2c_2;
wire reg_addr_p2c_3;
assign reg_addr_p2c = {reg_addr_p2c_3,reg_addr_p2c_2,reg_addr_p2c_1};

wire out_select_p2c_1;
wire out_select_p2c_2;
assign out_select_p2c = {out_select_p2c_2, out_select_p2c_1};

//Core to pad nets
wire [7:0] data_out_c2p;
wire shreg_out_c2p;
wire lfsr_out_c2p;

//Expanded nets
wire data_out_c2p_1;
wire data_out_c2p_2;
wire data_out_c2p_3;
wire data_out_c2p_4;
wire data_out_c2p_5;
wire data_out_c2p_6;
wire data_out_c2p_7;
wire data_out_c2p_8;
assign {data_out_c2p_8, data_out_c2p_7, data_out_c2p_6, data_out_c2p_5, data_out_c2p_4,
		data_out_c2p_3, data_out_c2p_2, data_out_c2p_1} = data_out_c2p;
//Input cells
sg13g2_IOPadIn port_clk_cell(.pad(clk_pad), .p2c(clk_p2c));
sg13g2_IOPadIn port_rst_cell(.pad(rst_pad), .p2c(rst_p2c));
sg13g2_IOPadIn port_wr_enable_cell(.pad(wr_enable_pad), .p2c(wr_enable_p2c));
sg13g2_IOPadIn port_aux_enable_cell(.pad(aux_enable_pad), .p2c(aux_enable_p2c));
sg13g2_IOPadIn port_shreg_in_cell (.pad(shreg_in_pad), .p2c(shreg_in_p2c));

sg13g2_IOPadIn port_data_in1_cell(.pad(data_in_pad_1), .p2c(data_in_p2c_1));
sg13g2_IOPadIn port_data_in2_cell(.pad(data_in_pad_2), .p2c(data_in_p2c_2));
sg13g2_IOPadIn port_data_in3_cell(.pad(data_in_pad_3), .p2c(data_in_p2c_3));
sg13g2_IOPadIn port_data_in4_cell(.pad(data_in_pad_4), .p2c(data_in_p2c_4));
sg13g2_IOPadIn port_data_in5_cell(.pad(data_in_pad_5), .p2c(data_in_p2c_5));
sg13g2_IOPadIn port_data_in6_cell(.pad(data_in_pad_6), .p2c(data_in_p2c_6));
sg13g2_IOPadIn port_data_in7_cell(.pad(data_in_pad_7), .p2c(data_in_p2c_7));
sg13g2_IOPadIn port_data_in8_cell(.pad(data_in_pad_8), .p2c(data_in_p2c_8));

sg13g2_IOPadIn port_reg_addr1_cell(.pad(reg_addr_pad_1), .p2c(reg_addr_p2c_1));
sg13g2_IOPadIn port_reg_addr2_cell(.pad(reg_addr_pad_2), .p2c(reg_addr_p2c_2));
sg13g2_IOPadIn port_reg_addr3_cell(.pad(reg_addr_pad_3), .p2c(reg_addr_p2c_3));

sg13g2_IOPadIn port_out_select1_cell(.pad(out_select_pad_1), .p2c(out_select_p2c_1));
sg13g2_IOPadIn port_out_select2_cell(.pad(out_select_pad_2), .p2c(out_select_p2c_2));


//Output cells

sg13g2_IOPadOut16mA port_data_out1_cell(.pad(data_out_pad_1), .c2p(data_out_c2p_1));
sg13g2_IOPadOut16mA port_data_out2_cell(.pad(data_out_pad_2), .c2p(data_out_c2p_2));
sg13g2_IOPadOut16mA port_data_out3_cell(.pad(data_out_pad_3), .c2p(data_out_c2p_3));
sg13g2_IOPadOut16mA port_data_out4_cell(.pad(data_out_pad_4), .c2p(data_out_c2p_4));
sg13g2_IOPadOut16mA port_data_out5_cell(.pad(data_out_pad_5), .c2p(data_out_c2p_5));
sg13g2_IOPadOut16mA port_data_out6_cell(.pad(data_out_pad_6), .c2p(data_out_c2p_6));
sg13g2_IOPadOut16mA port_data_out7_cell(.pad(data_out_pad_7), .c2p(data_out_c2p_7));
sg13g2_IOPadOut16mA port_data_out8_cell(.pad(data_out_pad_8), .c2p(data_out_c2p_8));

sg13g2_IOPadOut16mA port_shreg_out_cell(.pad(shreg_out_pad), .c2p(shreg_out_c2p));

sg13g2_IOPadOut16mA port_lfsr_out_cell(.pad(lfsr_out_pad), .c2p(lfsr_out_c2p));


//Instanced design
filter median_processor(.clk(clk_p2c), .rst(rst_p2c), .data_in(data_in_p2c), .reg_addr(reg_addr_p2c), .wr_enable(wr_enable_p2c), .out_select(out_select_p2c), .data_out(data_out_c2p));

shreg shift_storage(.clk(clk_p2c), .rst(rst_p2c), .shreg_enable(aux_enable_p2c), .shreg_in(shreg_in_p2c), .shreg_out(shreg_out_c2p));

lfsr rando_generator(.clk(clk_p2c), .rst(rst_p2c), .lfsr_en(aux_enable_p2c), .lfsr_data(lfsr_out_c2p));



endmodule