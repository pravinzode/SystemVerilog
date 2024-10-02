//mailbox
//exchange information
//generic type and parametrized
//generic- any type of data 
//parametrized - only specific data
//bounded and unbounded 
//put method -send data 
//get method - receive data

module tb;

mailbox test=new();

initial begin
bit [3:0]a;
  for(int i=0;i<10;i++)begin
  a=$random;
  test.put(a);
$display("data sent is %d",a);
end
end  

initial begin
bit [3:0]a;
forever begin
test.get(a);
$display("data received is %d",a);
end
end
endmodule
