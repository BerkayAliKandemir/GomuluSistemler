module memory_design(input clk, //
                      input [15:0] vin, // veri giriş sinyali
                     input [3:0] address, // adres sinyali
                      input write, // yazma  sinyali
                      output reg [15:0] vout); // veri çıkış sinyali
reg [15:0] ram [0:15]; // 16 * 16 bellek

 always @(posedge clk) begin // yükselen kenar bellek okuma 
    vout <= ram[address];
  end

always @(negedge clk) begin // düşen kenar bellek yazma 
    if (write) begin
      ram[address] <= vin;
    end
  end
endmodule
