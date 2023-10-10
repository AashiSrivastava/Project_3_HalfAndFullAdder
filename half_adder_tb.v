module half_adder_tb (
    
);
    reg in1, in2;
    wire carry, out;

    half_adder_CA h(sum,carry,in1,in2);

    initial begin
        in1=0;
        in2=1;
        #2 in2=0;
    end
    initial begin
        repeat(10)
        #4 in1= ~in1;
    end
     initial begin
        repeat(10)
        #3 in2= ~in2;
    end

    initial begin
        $dumpfile("half_adder_CA.vcd");
        $dumpvars(0,half_adder_tb);
        $monitor($time, "in1=%b in2=%b sum=%b carry=%b", in1, in2, sum, carry);
        #50 $finish;
    end
endmodule