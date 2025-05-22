module andg(
input a,
input b,
input clk,
output reg y
);

always@(posedge clk)begin 
y <= a & b;
end
endmodule
