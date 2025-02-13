//version: iverilog
//editor: Neovim

//----------------------------------------------------------------
module Breadboard (w,x,y,z,f0,f1,f2,f3,f4,f5,f6,f7,f8,f9);
input w,x,y,z;
output f0,f1,f2,f3,f4,f5,f6,f7,f8,f9;
reg f0,f1,f2,f3,f4,f5,f6,f7,f8,f9;
wire w,x,y,z;


always @ (w,x,y,z) begin

    //placeholders
    f0 = w;
    f1 = x;
    f2 = y;
    f3 = z;
    f4 = w;
    f5 = x;
    f6 = y;
    f7 = z;
    f8 = w;
    f9 = x;
end

endmodule
//----------------------------------------------------------------
module testbench ();

    reg[4:0] i;
    reg w;
    reg x;
    reg y;
    reg z;

    wire f0,f1,f2,f3,f4,f5,f6,f7,f8,f9; 

    Breadboard bb8(w,x,y,z,f0,f1,f2,f3,f4,f5,f6,f7,f8,f9);
    initial begin

    $display ("|##|W|X|Y|Z|F0|F1|F2|F3|F4|F5|F6|F7|F8|F9|");
    $display ("|==+=+=+=+=+==+==+==+==+==+==+==+==+==+==|");
    for(i = 0; i <= 15; i = i + 1)
    begin
        w=(i/8)%2;
        x=(i/4)%2;
        y=(i/2)%2;
        z=(i/1)%2;

        #5; //time control

        $display ("|%2d|%1d|%1d|%1d|%1d| %1d| %1d| %1d| %1d| %1d| %1d| %1d| %1d| %1d| %1d|",i,w,x,y,z,f0,f1,f2,f3,f4,f5,f6,f7,f8,f9);
		if(i%4==3) //Every fourth row of the table, put in a marker for easier reading.
            $write ("|--+-+-+-+-+--+--+--+--+--+--+--+--+--+--|\n");//Write acts a bit like a java System.print


    end

end
endmodule
