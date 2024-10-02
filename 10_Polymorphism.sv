//polymorphism 

class parent;
  function void print();
    $display("I am Parent Class");
  endfunction
endclass

class child extends parent;
  function void print();
    $display("I am Child Class");
  endfunction
endclass
    
module top;
  parent p;
  child c;
 initial begin
   p=new();
   c=new();
  // p=c;
   p.print();
   c.print();
 end
endmodule
    