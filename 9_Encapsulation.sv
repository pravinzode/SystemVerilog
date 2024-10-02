// Encapsulation 
// accessibility - local and protected
// local and protected for use 
class parent;
protected bit [3:0]a=2;
protected bit [3:0]b=5;
function void print();
$display("Values a=%d and b=%d",a,b);
endfunction
endclass

class child extends parent;
  bit [3:0]d;
  function void add();
    d=a+b;
    $display("Addition =%d",d);
  endfunction
endclass

module top;
child c;
initial begin
c=new();
c.print();
c.add();
end
endmodule

