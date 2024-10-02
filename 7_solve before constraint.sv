//program for solver before constraint

class test;
 rand bit a;
 rand bit [2:0]b;
  constraint c1 {(a==1)->(b==4);
                solve a before b;};
endclass

module top;
test c;
initial begin 
c=new();
  repeat(10) begin
c.randomize();
$display("a = %d and b=%d ",c.a,c.b);
end 
end
endmodule