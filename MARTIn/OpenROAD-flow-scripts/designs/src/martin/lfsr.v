
module lfsr(clk, rst,
            lfsr_en,
             /*outputs*/
             lfsr_data
             );


  input               clk;          // Clock
  input               rst;         // Reset, active low
  input               lfsr_en;      // Shift lfsr
  output              lfsr_data;    // LFSR data


  reg [30:0] lfsr_reg;

  assign lfsr_data = lfsr_reg[0];
  
  always @(posedge clk)
    if(!rst)
      lfsr_reg = 31'd0;
    else
      if (lfsr_en)
        lfsr_reg = {lfsr_reg[29:0], lfsr_reg[30] ~^ lfsr_reg[27] };
      else
        lfsr_reg = 31'd0;

endmodule