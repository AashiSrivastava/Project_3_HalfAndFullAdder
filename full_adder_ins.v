//Developed by: Aashi Srivastava
// TITLE: Full Adder using module instantiation
// Date: 10.10.23, 9:44 IST

module full_adder_ins(
    sum,carry_out,in1,in2,carry_in
);
input in1,in2, carry_in;
output sum, carry_out;
wire wire1, wire2, wire3;

xor n1(wire1,in1,in2);
xor n2(sum, wire1,carry_in);//Sum of half adder is given by xor of the two inputs
and n3(wire2,carry_in,wire1); // carry of the two half adder is given by the and of the two inputs
and n4(wire3, in1, in2);
or n5(carry_out,wire2,wire3);
endmodule