//inline constraint
//Written along with randomize method using keyword "with"
//inline constraint can be added and not be overridden 

class test;
  rand bit [3:0]var1;
  constraint c1{var1>4 && var1<10;};
endclass

module test;
test c;
initial begin
c=new();
  c.randomize with {var1<6;};
$display("Var1=%d",c.var1);
end
endmodule
