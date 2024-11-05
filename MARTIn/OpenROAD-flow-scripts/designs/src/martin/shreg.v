`define SIZE 1600

module shreg(
    clk,
    rst,
    shreg_enable,
    shreg_in,
    shreg_out
);

input wire clk;
input wire rst;
input wire shreg_enable;
input wire shreg_in;
output wire shreg_out;

reg [`SIZE-1:0] storage; 

always @(posedge clk) begin
    if(rst == 1'b0) 
        storage <= {`SIZE{1'b0}};
    else if (shreg_enable == 1'b1)
        storage <= {storage[`SIZE-2:0], shreg_in};
    else
        storage <= storage;
end

assign shreg_out = storage[`SIZE-1];

endmodule
