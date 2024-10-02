 //weighted constraint 
//dist  ( distribution 
//:= ( weight ) 

class test;
rand bit [3:0]var1;
  constraint c1{var1 dist{1:=2,2:=2,3:=1};};
endclass

module top;
  
test c;
initial begin
c=new();
  repeat(10) begin
  c.randomize();
$display("var1= %d",c.var1);
end
end
endmodule
