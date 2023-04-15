module Trafik_Led(
                input clk ,
                output reg led_green, 
                output reg led_red,
                output reg led_blue
);
reg[31:0] counter =0; // 10 sn icin 32 bit yeterli 

always@(posedge clk) begin 
    counter<=counter+1;
    if(counter>=0 && counter<2_2000_0000) begin  // 10 sn kırmızı led yanar
        led_red<=1;
        led_green<=0;
        led_blue<=0;
    end
    else if(counter>=2_2000_0000&& counter<3_3000_0000) begin // 5 sn yeşil led yanar 
        led_red<=0;
        led_green<=1;
        led_blue<=0;
    end
   
    else if (counter>=3_3000_0000 && counter< 3_9000_0000) begin // 2 sn mavi  led yanar
        led_red<=0;
        led_green<=0;
        led_blue<=1;
    end 

    else begin 
        led_red<=0;
        led_green<=0;
        led_blue<=0;
        counter<= 0;
    end

end 
endmodule
