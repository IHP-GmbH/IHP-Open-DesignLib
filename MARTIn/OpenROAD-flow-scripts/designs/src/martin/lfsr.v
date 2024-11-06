// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at

//   http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.    

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