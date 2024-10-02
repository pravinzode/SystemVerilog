//Enumeration

module top;
  enum {red=2,blue,green,yellow}color;
initial begin
  color =blue;
  $display("Value of first element is %s",color.name());
  color=color.first();
  $display("Value of first element is %s",color.name());
  color=color.last()-1;
  $display("Value of first element is %s",color.name());
  
end 
  
endmodule