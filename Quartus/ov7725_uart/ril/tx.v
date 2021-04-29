module tx (
	input clk100M,
	input reset_n,
	input [15:0] data_in,
	input data_valid,
	output data_ready,
	output reg uart_tx,
	output clk_uart9600

);

wire clk;
clk_div uart_clk_div (
	.clk(clk100M),    // Clock
	.rst_n(reset_n),  // Asynchronous reset active low
	//.div(32'd10416),
	.div(32'd2),
	.clk_out(clk)
);

assign clk_uart9600 = clk;

parameter IDLE = 2'd0;
parameter START= 2'd1;
parameter TRASMIT = 2'd2;
parameter STOP = 2'd3;

reg [15:0] data_buf;
wire [15:0] data_buf_nx;
wire data_grant;

reg [1:0] cs;
// wire [1:0] ns;
reg [1:0] ns;
reg [3:0] send_cnt;
wire [3:0] send_cnt_nx;
wire send_done;
reg uart_tx_nx;
reg is_second_round;
reg is_second_round_nx;
assign data_grant = data_valid & data_ready;
assign data_buf_nx = (data_grant) ? data_in : 
					 (cs == STOP) ? {data_buf[15:8],data_buf[15:8]}:data_buf;


assign data_ready = (cs == IDLE);

// assign ns = (cs == 2'd0) ? (data_grant) ? 2'd1:cs :
// 			(cs == 2'd1) ? 2'd2:
// 			(cs == 2'd2) ? (send_done) ? 2'd3:cs:
// 			(cs == 2'd3) ? 2'd0:2'd0;

always @(*) begin 
	case (cs)
		IDLE:    ns = (data_grant) ? START:cs;
		START:   ns = TRASMIT;
		TRASMIT: ns = (send_done) ? STOP:cs;
		STOP: 	 ns = (is_second_round) ? IDLE:START;
		default : ns = IDLE;
	endcase
end

assign send_cnt_nx = (cs != TRASMIT) ? 4'd0:send_cnt + 1'd1;
assign send_done = send_cnt == 4'd7;

always @(*) begin 
	if (cs == STOP) begin
		is_second_round_nx = ~is_second_round;
	end else begin
		is_second_round_nx = is_second_round;
	end
end


always @(*) begin
	if (cs == START) begin
		uart_tx_nx = 1'd0;
	end else if (cs == TRASMIT) begin
		uart_tx_nx = data_buf[send_cnt];
	end else if (cs == STOP) begin
		uart_tx_nx = 1'b1;
	end else begin
		uart_tx_nx = 1'b1;
	end
end

always @(posedge clk or negedge reset_n) begin 
	if(~reset_n) begin
		uart_tx <= 0;
	end else begin
		uart_tx <= uart_tx_nx;
	end
end

always @(posedge clk or negedge reset_n) begin 
	if(~reset_n) begin
		is_second_round <= 0;
	end else begin
		is_second_round <= is_second_round_nx;
	end
end

always @(posedge clk or negedge reset_n) begin 
	if(~reset_n) begin
		send_cnt <= 0;
	end else begin
		send_cnt <= send_cnt_nx;
	end
end

always @(posedge clk or negedge reset_n) begin 
	if(~reset_n) begin
		data_buf <= 8'd0;
	end else begin
		data_buf <= data_buf_nx;
	end
end

always @(posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		cs <= IDLE;
	end else begin
		cs <= ns;
	end
end


endmodule
