module mux(a,b,c,y);
input a,b,c;
output y;
wire i,j;

assign i = a & b;
assign j = a &~c;
assign y = i|j;
endmodule
