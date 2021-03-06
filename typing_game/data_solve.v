module data_solve (clk,data,ready,nextdata_n,asc,count,clra,clrk,realdata);
input [7:0]data;
input ready,clk;
output reg nextdata_n;
output reg [7:0]count;
output reg [7:0]realdata;
output reg [7:0]asc;
output reg clra;
output reg clrk;
reg kill=0;
reg shift=0;
reg Caps=0;
reg [7:0] shift_res [255:0];
reg [7:0] Cap_res	  [255:0];
reg [7:0] com_res	[255:0];
initial
begin
	$readmemh("Caps.txt",Cap_res, 0, 255);
	$readmemh("Shift.txt",shift_res, 0, 255);
	$readmemh("ascii.txt",com_res, 0, 255);
	clra=1;
	clrk=1;
	nextdata_n=1;
	count=0;
end

always @(negedge clk)
begin
	if(ready)
	begin
		if(kill)
		begin
			if(data==8'h12)
				shift<=0;
			kill<=0;
			clra<=1;
			clrk<=1;
		end	
		else if(data==8'h58)
		begin
			clra<=1;
			clrk<=0;
			Caps<=!Caps;
			asc<=com_res[data];
		end
		else if(data==8'h12)	
		begin
			clra<=1;
			clrk<=0;
			shift<=1;
			asc<=com_res[data];
		end
		else if(data==8'hF0)
		begin
			kill<=1;
			count<=count+1;
			clra<=1;
			clrk<=1;
		end
		else if(shift)
		begin
			clra<=0;
			clrk<=0;
			asc<=shift_res[data];
		end
		else if(Caps)
		begin
			clra<=0;
			clrk<=0;
			asc<=Cap_res[data];
		end
		else
		begin
			clra<=0;
			clrk<=0;
			asc<=com_res[data];
		end
		nextdata_n<=0;
		realdata<=data;
	end
	else 
	begin
		nextdata_n<=1;
		realdata<=realdata;
	end
end
endmodule
