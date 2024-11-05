module comb_comparator (
	data_in1,
	data_in2,
	gr1,
	gr2
);
	parameter DATA_SIZE = 12;
	input wire [DATA_SIZE - 1:0] data_in1;
	input wire [DATA_SIZE - 1:0] data_in2;
	output reg gr1;
	output reg gr2;
	always @(*)
		if (data_in1 < data_in2) begin
			gr1 = 1'b0;
			gr2 = 1'b1;
		end
		else begin
			gr1 = 1'b1;
			gr2 = 1'b0;
		end
endmodule
module comb_counter (
	to_count,
	num
);
	parameter CHANNELS = 64;
	input wire [CHANNELS - 2:0] to_count;
	output reg [3:0] num;
	always @(*) begin
		num = 0;
		begin : sv2v_autoblock_1
			reg signed [31:0] i;
			for (i = 0; i < (CHANNELS - 1); i = i + 1)
				num = num + to_count[i];
		end
	end
endmodule
module filter (
	clk,
	rst,
	data_in,
	reg_addr,
	wr_enable,
	out_select,
	data_out
);
	input wire clk;
	input wire rst;
	input wire [7:0] data_in;
	input wire [2:0] reg_addr;
	input wire wr_enable;
	input wire [1:0] out_select;
	output wire [7:0] data_out;
	reg [63:0] input_storage;
	wire [7:0] processor_out;
	median_brute median_processor(
		.clk(clk),
		.data_in(input_storage),
		.median_out(processor_out)
	);
	always @(posedge clk)
		if (rst == 1'b0)
			input_storage = {64 {1'b0}};
		else if (wr_enable == 1'b1)
			input_storage[reg_addr * 8+:8] = data_in;
	assign data_out = (out_select == 2'b10 ? data_in : (out_select == 2'b01 ? data_in - processor_out : processor_out));
endmodule
module median_brute (
	clk,
	data_in,
	median_out
);
	input wire clk;
	input wire [63:0] data_in;
	output reg [7:0] median_out;
	genvar _gv_x_1;
	genvar _gv_y_1;
	wire [55:0] to_counter;
	wire [31:0] counter_out;
	generate
		for (_gv_x_1 = 0; _gv_x_1 < 8; _gv_x_1 = _gv_x_1 + 1) begin : genblk1
			localparam x = _gv_x_1;
			for (_gv_y_1 = x + 1; _gv_y_1 < 8; _gv_y_1 = _gv_y_1 + 1) begin : genblk1
				localparam y = _gv_y_1;
				comb_comparator #(.DATA_SIZE(8)) comp0(
					.data_in1(data_in[x * 8+:8]),
					.data_in2(data_in[y * 8+:8]),
					.gr1(to_counter[(x * 7) + (y - 1)]),
					.gr2(to_counter[(y * 7) + x])
				);
			end
			comb_counter #(.CHANNELS(8)) count0(
				.to_count(to_counter[x * 7+:7]),
				.num(counter_out[x * 4+:4])
			);
		end
	endgenerate
	always @(posedge clk) begin : sv2v_autoblock_1
		reg signed [31:0] i;
		for (i = 0; i < 8; i = i + 1)
			if (counter_out[i * 4+:4] == 4)
				median_out <= data_in[i * 8+:8];
	end
endmodule
