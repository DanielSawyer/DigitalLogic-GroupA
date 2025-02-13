//----------------------------------------------------------------
module Breadboard (w,x,y,z,f0,f1,f2,f3,f4,f5,f6,f7,f8,f9);
input = w,x,y,z;
output = f0,f1,f2,f3,f4,f5,f6,f7,f8,f9;
reg = f0,f1,f2,f3,f4,f5,f6,f7,f8,f9;
wire = w,x,y,z;


always @ (w,x,y,z) begin

end

endmodule
//----------------------------------------------------------------
module TestBench ();

    reg[4:0] i;
    reg w;
    reg x;
    reg y;
    reg z;

    wire f0,f1,f2,f3,f4,f5,f6,f7,f8,f9; 

    breadboard bb8(w,x,y,z,f0,f1,f2,f3,f4,f5,f6,f7,f8,f9);

    initial begin
    end
endmodule
