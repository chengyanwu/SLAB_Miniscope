module clk_div (
	input clk,    // Clock
	input rst_n,  // Asynchronous reset active low
	input [31:0] div,
	output reg clk_out
);

reg [31:0] cnt;
wire [31:0] cnt_nx; 
wire [31:0] divn;
assign divn = div >> 1;
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		cnt <= 32'd0;
	end else begin
		cnt <= cnt_nx;
	end
end

assign cnt_nx = (cnt == (div-1'd1)) ? 32'd0: cnt + 1'd1;

wire clk_out_nx;
assign clk_out_nx = (cnt <= (divn-1'd1)) ? 1'b1:1'b0;
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		clk_out <= 0;
	end else begin
		clk_out <= clk_out_nx;
	end
end

endmodule