// program for randomization 

class test;
   randc bit [3:0]a;
   randc bit [3:0]b;	
  constraint c1{
   a>2 && a<12;
   b>5 && b<14;
  }
endclass

module top;
test c;
initial begin
c=new();
  repeat(6) begin
  c.randomize();
  $display("Values of a and b are :");  
  $display("a=%d b=%d", c.a,c.b);
  end
end
endmodule

