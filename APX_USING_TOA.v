//design .....approximate multiplier using three operand adder
module approximate_multiplier_using_three_operand_adder(a,b,product);

input [7:0]a,b;//8 bit

output [15:0]product;

wire  a00 , a01 , a02 , a03 , a04 , a05 , a06 , a07 , a10 , a11 , a12 , a13 ,
 a14 , a15 , a16 , a17 , a20 , a21 , a22 , a23 , a24 , a25 , a26 , a27 , a30 ,
 a31 , a32 , a33 , a34 , a35 , a36 , a37 , a40 , a41 , a42 , a43 , a44 , a45 ,
 a46 , a47 , a50 , a51 , a52 , a53 , a54 , a55 , a56 , a57 , a60 , a61 , a62 ,
 a63 ,a64 , a65 , a66 , a67 , a70 , a71 , a72 , a73 , a74 , a75 , a76 , a77 ;
 
wire  p74 , p73,p72,p71,p70,p60, p50, p40,p30,p65,p64,p63,p62,p61,
		p51 , p41,p31,p21,p54,p53,p52,p42,p32, p43  ;

wire  g74 , g73,g72,g71,g70,g60, g50, g40,g30,g65,g64,g63,g62,g61,
		g51 , g41,g31,g21,g54,g53,g52,g42,g32, g43  ;



wire G3,G4,G5,G6,G7,G8,G9,G10,G11;

wire C4,C5,C6,C7,C8,C9,C10,C11,C12;

wire S4,S5,S6,S7,S8,S9,S10,S11,S12;

wire x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13;

wire y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13;

wire [13:0] w1 ;
wire [12:0] w2 ;
wire [11:0] w3 ;

/////partial products
assign a00 = a[0] & b[0] ;
assign a01 = a[0] & b[1] ;
assign a02 = a[0] & b[2] ;
assign a03 = a[0] & b[3] ;
assign a04 = a[0] & b[4] ;
assign a05 = a[0] & b[5] ;
assign a06 = a[0] & b[6] ;
assign a07 = a[0] & b[7] ;

assign a10 = a[1] & b[0] ;
assign a11 = a[1] & b[1] ;
assign a12 = a[1] & b[2] ;
assign a13 = a[1] & b[3] ;
assign a14 = a[1] & b[4] ;
assign a15 = a[1] & b[5] ;
assign a16 = a[1] & b[6] ;
assign a17 = a[1] & b[7] ;

assign a20 = a[2] & b[0] ;
assign a21 = a[2] & b[1] ;
assign a22 = a[2] & b[2] ;
assign a23 = a[2] & b[3] ;
assign a24 = a[2] & b[4] ;
assign a25 = a[2] & b[5] ;
assign a26 = a[2] & b[6] ;
assign a27 = a[2] & b[7] ;

assign a30 = a[3] & b[0] ;
assign a31 = a[3] & b[1] ;
assign a32 = a[3] & b[2] ;
assign a33 = a[3] & b[3] ;
assign a34 = a[3] & b[4] ;
assign a35 = a[3] & b[5] ;
assign a36 = a[3] & b[6] ;
assign a37 = a[3] & b[7] ;

assign a40 = a[4] & b[0] ;
assign a41 = a[4] & b[1] ;
assign a42 = a[4] & b[2] ;
assign a43 = a[4] & b[3] ;
assign a44 = a[4] & b[4] ;
assign a45 = a[4] & b[5] ;
assign a46 = a[4] & b[6] ;
assign a47 = a[4] & b[7] ;

assign a50 = a[5] & b[0] ;
assign a51 = a[5] & b[1] ;
assign a52 = a[5] & b[2] ;
assign a53 = a[5] & b[3] ;
assign a54 = a[5] & b[4] ;
assign a55 = a[5] & b[5] ;
assign a56 = a[5] & b[6] ;
assign a57 = a[5] & b[7] ;

assign a60 = a[6] & b[0] ;
assign a61 = a[6] & b[1] ;
assign a62 = a[6] & b[2] ;
assign a63 = a[6] & b[3] ;
assign a64 = a[6] & b[4] ;
assign a65 = a[6] & b[5] ;
assign a66 = a[6] & b[6] ;
assign a67 = a[6] & b[7] ;

assign a70 = a[7] & b[0] ;
assign a71 = a[7] & b[1] ;
assign a72 = a[7] & b[2] ;
assign a73 = a[7] & b[3] ;
assign a74 = a[7] & b[4] ;
assign a75 = a[7] & b[5] ;
assign a76 = a[7] & b[6] ;
assign a77 = a[7] & b[7] ;

///genarated partial products


assign p74 = a74 | a47 ;
assign p73 = a73 | a37 ;
assign p72 = a72 | a27 ;
assign p71 = a71 | a17 ;

assign p70 = a70 | a07 ;
assign p60 = a60 | a06 ;
assign p50 = a50 | a05 ;
assign p40 = a04 | a40 ;

assign p30 = a30 | a03 ;
assign p65 = a65 | a56 ;
assign p64 = a64 | a46 ;
assign p63 = a63 | a36 ;

assign p62 = a62 | a26 ;
assign p61 = a61 | a16 ;
assign p51 = a51 | a15 ;
assign p41 = a14 | a41 ;

assign p31 = a13 | a31 ;
assign p21 = a21 | a12 ;
assign p54 = a54 | a45 ;
assign p53 = a53 | a35 ;

assign p52 = a52 | a25 ;
assign p42 = a24 | a42 ;
assign p32 = a32 | a23 ;
assign p43 = a34 | a43 ;

////
assign g74 = a74 & a47 ;
assign g73 = a73 & a37 ;
assign g72 = a72 & a27 ;
assign g71 = a71 & a17 ;

assign g70 = a70 & a07 ;
assign g60 = a60 & a06 ;
assign g50 = a50 & a05 ;
assign g40 = a04 & a40 ;

assign g30 = a30 & a03 ;
assign g65 = a65 & a56 ;
assign g64 = a64 & a46 ;
assign g63 = a63 & a36 ;

assign g62 = a62 & a26 ;
assign g61 = a61 & a16 ;
assign g51 = a51 & a15 ;
assign g41 = a14 & a41 ;

assign g31 = a13 & a31 ;
assign g21 = a21 & a12 ;
assign g54 = a54 & a45 ;
assign g53 = a53 & a35 ;

assign g52 = a52 & a25 ;
assign g42 = a24 & a42 ;
assign g32 = a32 & a23 ;
assign g43 = a34 & a43 ;

///Reduction of altered partial products
assign G3 = g30 | g21 ;
assign G4 = g40 | g31 ;
assign G5 = g50 | g41 | g32;
assign G6 = g60 | g51 | g42;
assign G7 = g70 | g61 | g52 | g43;
assign G8 = g71 | g62 | g53;
assign G9 = g72 | g63 | g54;
assign G10 = g73 | g64;
assign G11 = g74 | g65;

//instanciation
//approximate_halfadder ha(X1,X2,SUM,CARRY);
approximate_halfadder ha0(p40,p31,S4,C4);
approximate_halfadder ha1(p74,p65,S11,C11);
approximate_halfadder ha2(a75,a57,S12,C12);


approximate_fulladder ff0(p50,p41,p32,S5,C5);
approximate_fulladder ff1(p72,p63,p54,S9,C9);
approximate_fulladder ff2(p73,p64,a55,S10,C10);


compressor4to2 cm0(p60,p51,p42,a33,S6,C6);
compressor4to2 cm1(p70,p61,p52,p43,S7,C7);
compressor4to2 cm2(p71,p62,p53,a44,S8,C8);

////////

assign w1 = {a77,a76,S12,S11,S10,S9,S8,S7,S6,S5,S4,p30,a20,a10,a00} ;
assign w2 = {a67,C11,G11,G10,G9,G8,G7,G6,G5,a22,p21,a02,a01} ;
assign w3 = {C12,a66,C10,C9,C8,C7,C6,C5,C4,G4,G3,a11} ;

//three_operand_adder(a,b,c,Cin,sum,carry);

three_operand_adder TOA(.a(w1),.b({1'b0,w2,1'b0}),.c({1'b0,w3,2'b00}),.Cin(1'b0),.sum(product[14:0]),.carry(product[15]));


endmodule
///APX FULL ADDER
module approximate_fulladder(X1,X2,X3,SUM,CARRY);

input X1,X2,X3;
output SUM,CARRY; 

assign W = X1 | X2 ;
assign SUM = W ^ X3 ;
assign CARRY = W & X3 ;

endmodule
///APX HALF ADDDER
module approximate_halfadder(X1,X2,SUM,CARRY);

input X1,X2;
output SUM,CARRY;

assign SUM = X1 | X2;
assign CARRY = X1 & X2;

endmodule
///APX 4 TO 2 compressor4to2
module compressor4to2(X1,X2,X3,X4,SUM,CARRY);

input X1,X2,X3,X4;
output SUM,CARRY;

wire W1,W2;

assign W1 = X1 & X2;
assign W2 = X3 & X4;

assign SUM = (X1 ^ X2) | (X3 ^ X4) | (W1 & W2) ;
assign CARRY = W1 | W2 ;

endmodule
////THREE OPERAND ADDER
module three_operand_adder(a,b,c,Cin,sum,carry);


input [13:0] a,b,c ;
input Cin ;

output [14:0] sum;
output carry;

wire [14:0] p, g ; 
wire [13 :0] s , cr ;

///bit addition logic
bit_addition_logic bal1(.a(a[0]),.b(b[0]),.c(c[0]),.sum(s[0]),.carry(cr[0])) ;
bit_addition_logic bal2(.a(a[1]),.b(b[1]),.c(c[1]),.sum(s[1]),.carry(cr[1])) ;
bit_addition_logic bal3(.a(a[2]),.b(b[2]),.c(c[2]),.sum(s[2]),.carry(cr[2])) ;
bit_addition_logic bal4(.a(a[3]),.b(b[3]),.c(c[3]),.sum(s[3]),.carry(cr[3])) ;

bit_addition_logic bal5(.a(a[4]),.b(b[4]),.c(c[4]),.sum(s[4]),.carry(cr[4])) ;
bit_addition_logic bal6(.a(a[5]),.b(b[5]),.c(c[5]),.sum(s[5]),.carry(cr[5])) ;
bit_addition_logic bal7(.a(a[6]),.b(b[6]),.c(c[6]),.sum(s[6]),.carry(cr[6])) ;
bit_addition_logic bal8(.a(a[7]),.b(b[7]),.c(c[7]),.sum(s[7]),.carry(cr[7])) ;

bit_addition_logic bal9(.a(a[8]),.b(b[8]),.c(c[8]),.sum(s[8]),.carry(cr[8])) ;
bit_addition_logic bal10(.a(a[9]),.b(b[9]),.c(c[9]),.sum(s[9]),.carry(cr[9])) ;
bit_addition_logic bal11(.a(a[10]),.b(b[10]),.c(c[10]),.sum(s[10]),.carry(cr[10])) ;
bit_addition_logic bal12(.a(a[11]),.b(b[11]),.c(c[11]),.sum(s[11]),.carry(cr[11])) ;

bit_addition_logic bal13(.a(a[12]),.b(b[12]),.c(c[12]),.sum(s[12]),.carry(cr[12])) ;
bit_addition_logic bal14(.a(a[13]),.b(b[13]),.c(c[13]),.sum(s[13]),.carry(cr[13])) ;

//base logic
base_logic bl1 (.s(s[0]),.c(Cin),.p(p[0]),.g(g[0])) ;
base_logic bl2 (.s(s[1]),.c(cr[0]),.p(p[1]),.g(g[1])) ;
base_logic bl3 (.s(s[2]),.c(cr[1]),.p(p[2]),.g(g[2])) ;
base_logic bl4 (.s(s[3]),.c(cr[2]),.p(p[3]),.g(g[3])) ;

base_logic bl5 (.s(s[4]),.c(cr[3]),.p(p[4]),.g(g[4])) ;
base_logic bl6 (.s(s[5]),.c(cr[4]),.p(p[5]),.g(g[5])) ;
base_logic bl7 (.s(s[6]),.c(cr[5]),.p(p[6]),.g(g[6])) ;
base_logic bl8 (.s(s[7]),.c(cr[6]),.p(p[7]),.g(g[7])) ;

base_logic bl9 (.s(s[8]),.c(cr[7]),.p(p[8]),.g(g[8])) ;
base_logic bl10 (.s(s[9]),.c(cr[8]),.p(p[9]),.g(g[9])) ;
base_logic bl11 (.s(s[10]),.c(cr[9]),.p(p[10]),.g(g[10])) ;
base_logic bl12 (.s(s[11]),.c(cr[10]),.p(p[11]),.g(g[11])) ;

base_logic bl13 (.s(s[12]),.c(cr[11]),.p(p[12]),.g(g[12])) ;
base_logic bl14(.s(s[13]),.c(cr[12]),.p(p[13]),.g(g[13])) ;
base_logic bl15 (.s(1'b0),.c(cr[13]),.p(p[14]),.g(g[14])) ;

/////////PG LOGIC
grey_cell gc0 (.p1(p[1]),.g1(g[1]),.g0(g[0]), .g(g10)) ;
black_cell bc1 (.p1(p[3]),.g1(g[3]),.p0(p[2]),.g0(g[2]),.p(p32),.g(g32)) ;
black_cell bc2 (.p1(p[5]),.g1(g[5]),.p0(p[4]),.g0(g[4]),.p(p54),.g(g54)) ;
black_cell bc3 (.p1(p[7]),.g1(g[7]),.p0(p[6]),.g0(g[6]),.p(p76),.g(g76)) ;
black_cell bc4 (.p1(p[9]),.g1(g[9]),.p0(p[8]),.g0(g[8]),.p(p98),.g(g98)) ;
black_cell bc5 (.p1(p[11]),.g1(g[11]),.p0(p[10]),.g0(g[10]),.p(p1110),.g(g1110)) ;
black_cell bc6 (.p1(p[13]),.g1(g[13]),.p0(p[12]),.g0(g[12]),.p(p1312),.g(g1312)) ;

grey_cell gc1 (.p1(p32),.g1(g32),.g0(g10), .g(g30)) ;
black_cell bc01 (.p1(p54),.g1(g54),.p0(p32),.g0(g32),.p(p52),.g(g52)) ;
black_cell bc02 (.p1(p76),.g1(g76),.p0(p54),.g0(g54),.p(p74),.g(g74)) ;
black_cell bc03 (.p1(p98),.g1(g98),.p0(p76),.g0(g76),.p(p96),.g(g96)) ;
black_cell bc04 (.p1(p1110),.g1(g1110),.p0(p98),.g0(g98),.p(p118),.g(g118)) ;
black_cell bc05 (.p1(p1312),.g1(g1312),.p0(p1110),.g0(g1110),.p(p1310),.g(g1310)) ;

grey_cell gc2 (.p1(p52),.g1(g52),.g0(g10), .g(g50)) ;
grey_cell gc3 (.p1(p74),.g1(g74),.g0(g30), .g(g70)) ;
black_cell bc11 (.p1(p96),.g1(g96),.p0(p52),.g0(g52),.p(p92),.g(g92)) ;
black_cell bc12 (.p1(p118),.g1(g118),.p0(p74),.g0(g74),.p(p114),.g(g114)) ;
black_cell bc13 (.p1(p1310),.g1(g1310),.p0(p96),.g0(g96),.p(p136),.g(g136)) ;

grey_cell gc4 (.p1(p92),.g1(g92),.g0(g10), .g(g90)) ;
grey_cell gc5 (.p1(p114),.g1(g114),.g0(g30), .g(g110)) ;
grey_cell gc6 (.p1(p136),.g1(g136),.g0(g50), .g(g130)) ;

grey_cell gc8 (.p1(p[2]),.g1(g[2]),.g0(g10), .g(g20)) ;
grey_cell gc9 (.p1(p[4]),.g1(g[4]),.g0(g30), .g(g40)) ;
grey_cell gc10 (.p1(p[6]),.g1(g[6]),.g0(g50), .g(g60)) ;
grey_cell gc11 (.p1(p[8]),.g1(g[8]),.g0(g70), .g(g80)) ;
grey_cell gc12 (.p1(p[10]),.g1(g[10]),.g0(g90), .g(g100)) ;
grey_cell gc13 (.p1(p[12]),.g1(g[12]),.g0(g110), .g(g120)) ;
grey_cell gc14 (.p1(p[14]),.g1(g[14]),.g0(g130), .g(g140)) ;

//sum logic
assign sum[0] = p[0] ;
sum_logic sl1 (.p(p[1]),.g(g[0]),.s(sum[1])) ;
sum_logic sl2 (.p(p[2]),.g(g10),.s(sum[2])) ;
sum_logic sl3 (.p(p[3]),.g(g20),.s(sum[3])) ;
sum_logic sl4 (.p(p[4]),.g(g30),.s(sum[4])) ;
sum_logic sl5 (.p(p[5]),.g(g40),.s(sum[5])) ;
sum_logic sl6 (.p(p[6]),.g(g50),.s(sum[6])) ;
sum_logic sl7 (.p(p[7]),.g(g60),.s(sum[7])) ;
sum_logic sl8 (.p(p[8]),.g(g70),.s(sum[8])) ;
sum_logic sl9 (.p(p[9]),.g(g80),.s(sum[9])) ;
sum_logic sl10 (.p(p[10]),.g(g90),.s(sum[10])) ;
sum_logic sl11 (.p(p[11]),.g(g100),.s(sum[11])) ;
sum_logic sl12 (.p(p[12]),.g(g110),.s(sum[12])) ;
sum_logic sl13 (.p(p[13]),.g(g120),.s(sum[13])) ;
sum_logic sl14 (.p(p[14]),.g(g130),.s(sum[14])) ;

assign carry = g140 ;
endmodule
//BIT ADDITION logic///full adder...using half adders

module bit_addition_logic(a,b,c,sum,carry) ;

input a,b,c ;

output sum,carry ;

assign A1 = b & c ;
assign X1 = b  ^ c ;

assign A2 =X1 & a ;
assign sum  = X1  ^ a;

assign carry = A1 | A2 ;

endmodule

///BASE logic

module base_logic (s,c,p,g) ;

input s,c ;

output p,g ;

assign p = s ^ c ;
assign g = s & c ;

endmodule
///BLOCK CELL

module black_cell (p1,g1,p0,g0,p,g) ;

input p1,g1,p0,g0 ;

output  p,g ;

assign A1 = g0 & p1 ;
assign p = p1 & p0 ;
assign g = g1 | A1 ;

endmodule
////GREY CELL

module grey_cell (p1,g1,g0,g) ;//p0

input p1,g1,g0 ;

output  g ;

assign A1 = g0 & p1 ;
assign g = g1 | A1 ;

endmodule
///SUM logic

module sum_logic (p,g,s) ;

input p,g ;

output s ;

assign s= p ^ g ;

endmodule

//test bench

module APM_TOA_TB ;

reg [7:0]a,b;
wire [15:0]product;    

//module approximate_multiplier_using_three_operand_adder(a,b,product);


approximate_multiplier_using_three_operand_adder uut(.a(a),.b(b),.product(product));

initial 

	begin
	repeat(10)///we are going to verify 10 test cases
		begin
		a = $random ;//100
		b = $random ;//200
		#2;
		$display (" %d     %d     : %d ", a , b , product ) ;
		end
		$stop ;
	end
endmodule

