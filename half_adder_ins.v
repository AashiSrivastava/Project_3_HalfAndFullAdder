//Developed by: Aashi Srivastava
// TITLE: Half Adder using continuous assignment
// Date: 10.10.23, 9:44 IST

module half_adder_ins(
    sum,carry,in1,in2
);
input in1,in2;
output sum, carry;

xor n1(sum,in1,in2); //Sum of half adder is given by xor of the two inputs
and n2(carry,in1,in2); // carry of the two half adder is given by the and of the two inputs
endmodule