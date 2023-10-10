//Developed by: Aashi Srivastava
// TITLE: Full Adder using continuous assignment
// Date: 10.10.23, 9:44 IST

module full_adder_ins(
    sum,carry_out,in1,in2,carry_in
);
input in1,in2, carry_in;
output sum, carry_out;
wire wire1, wire2, wire3;
assign sum=(in1^in2)^carry_in;
assign carry_out=(in1 & in2)|(in2 & carry_in)|(carry_in & in1);
endmodule