// inside 

class test;
  rand bit [3:0]var1;
  constraint c1{ var1 inside{0,1,2,[4:5]};};
endclass

module top;
  test c;
  
  
 initial begin 
   c=new();
   repeat(10)begin
   c.randomize();
     //if(c.var1 inside{[0:8]}) 
   $display("Value of Var1= %d",c.var1);
 end
 end
endmodule
