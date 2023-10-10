//Developed by: Aashi Srivastava
// TITLE: Half Adder using continuous assignment
// Date: 10.10.23, 9:44 IST

module half_adder(
    sum,carry,in1,in2
);
input in1,in2;
output sum, carry;

assign sum=in1^in2; //Sum of half adder is given by xor of the two inputs
assign carry=in1 & in2; // carry of the two half adder is given by the and of the two inputs
endmodule