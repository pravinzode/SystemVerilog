class parent;
  bit [7:0] length;   
  bit [7:0] breadth;   
  bit [31:0] peri;

  function void perimeter();
    peri = 2 * (length + breadth);
    $display("Perimeter = %d", peri);
  endfunction
endclass

class child extends parent;
  bit [31:0] area;

  function void rectangle();
    area = length * breadth;
    $display("Area = %d", area);
  endfunction
endclass

module top;
  child c;

  initial begin
    c = new();
    c.length = 10;     
    c.breadth = 12;
    c.rectangle();
    c.perimeter();      
  end
endmodule
