//fixed array 

module top;
  int a[4]='{1,2,3,4};
  int b[4][2]='{'{10,11},'{21,22},'{31,32},'{41,42}};
initial begin
  for(int i=0;i<4;i++) begin
    $display("Value of %0d element : ",i,a[i]);
  end
end
  
initial begin
for(int i=0;i<4;i++) begin
  for(int j=0;j<2;j++) begin
    $display("Value of a[%0d][%0d] element : ",i,j,b[i][j]);
  end
end
end
 
endmodule

    