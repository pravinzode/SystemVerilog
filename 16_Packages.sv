// Packages in SV
// Function methods
// reusability and save time 

package pkg;
function int add (int a,b) ;
      return (a+b);
	endfunction 
	function void print(int c);
		$display ( "Addition is %d ",c);
    endfunction
endpackage

import pkg:: *; // importing package

module top;
int a=10,b=20;
int c;
initial begin
c=add(10,30);
print(c);
end
endmodule
