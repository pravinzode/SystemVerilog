class test;
   rand bit [3:0]var1;
   rand bit [3:0]var2;
  function void pre_randomize();
    var1.rand_mode(0);
    var1=12;var2=11;
    $display("Pre_Randomize Function is called");
    $display("a = %d  and b= %d", var1, var2);
  endfunction 
  function void post_randomize();
    $display("Post_Randomize Function is called");
    $display("a = %d  and b= %d", var1, var2);
  endfunction
endclass

module top;
test c;

initial begin 
c=new();
  repeat(10)begin
c.randomize();

end
end
endmodule
