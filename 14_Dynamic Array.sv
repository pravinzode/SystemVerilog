//dynamic array 

module top;
  
  int a[];
  
  initial begin
    $display("Size of array is :%d",a.size());
    a=new[4];
    $display("Size of array is :%d",a.size());
    a={1,2,3,4};
    for(int i=0;i<4;i++)begin
      $display("Element %0d is %d",i,a[i]);
    end
    $display("__________________________________");
    
    a=new[10](a);
    //a=new[10](a);
   //a={5,6,7,8};
  for(int i=0;i<10;i++)begin
      $display("Element %0d is %d",i,a[i]);
    end 
   a.delete();
	$display("Size of array is :%d",a.size());
  end
  
endmodule

    