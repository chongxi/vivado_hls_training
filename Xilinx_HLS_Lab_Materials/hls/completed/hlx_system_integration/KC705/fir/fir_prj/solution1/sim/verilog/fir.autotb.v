// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

 `timescale 1ns/1ps


`define AUTOTB_DUT      fir
`define AUTOTB_DUT_INST AESL_inst_fir
`define AUTOTB_TOP      apatb_fir_top
`define AUTOTB_LAT_RESULT_FILE "fir.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "fir.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_fir_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_y 1
`define AESL_DEPTH_x 1
`define AUTOTB_TVIN_x  "../tv/cdatafile/c.fir.autotvin_x.dat"
`define AUTOTB_TVIN_x_out_wrapc  "../tv/rtldatafile/rtl.fir.autotvin_x.dat"
`define AUTOTB_TVOUT_y  "../tv/cdatafile/c.fir.autotvout_y.dat"
`define AUTOTB_TVOUT_y_out_wrapc  "../tv/rtldatafile/rtl.fir.autotvout_y.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 601;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 45;
parameter LENGTH_y = 1;
parameter LENGTH_x = 1;

task read_token;
    input integer fp;
    output reg [183 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [4 : 0] fir_io_AWADDR;
wire  fir_io_AWVALID;
wire  fir_io_AWREADY;
wire  fir_io_WVALID;
wire  fir_io_WREADY;
wire [31 : 0] fir_io_WDATA;
wire [3 : 0] fir_io_WSTRB;
wire [4 : 0] fir_io_ARADDR;
wire  fir_io_ARVALID;
wire  fir_io_ARREADY;
wire  fir_io_RVALID;
wire  fir_io_RREADY;
wire [31 : 0] fir_io_RDATA;
wire [1 : 0] fir_io_RRESP;
wire  fir_io_BVALID;
wire  fir_io_BREADY;
wire [1 : 0] fir_io_BRESP;
wire  fir_io_INTERRUPT;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire fir_io_read_data_finish;
wire fir_io_write_data_finish;
wire AESL_slave_start;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_fir_io_AWADDR(fir_io_AWADDR),
    .s_axi_fir_io_AWVALID(fir_io_AWVALID),
    .s_axi_fir_io_AWREADY(fir_io_AWREADY),
    .s_axi_fir_io_WVALID(fir_io_WVALID),
    .s_axi_fir_io_WREADY(fir_io_WREADY),
    .s_axi_fir_io_WDATA(fir_io_WDATA),
    .s_axi_fir_io_WSTRB(fir_io_WSTRB),
    .s_axi_fir_io_ARADDR(fir_io_ARADDR),
    .s_axi_fir_io_ARVALID(fir_io_ARVALID),
    .s_axi_fir_io_ARREADY(fir_io_ARREADY),
    .s_axi_fir_io_RVALID(fir_io_RVALID),
    .s_axi_fir_io_RREADY(fir_io_RREADY),
    .s_axi_fir_io_RDATA(fir_io_RDATA),
    .s_axi_fir_io_RRESP(fir_io_RRESP),
    .s_axi_fir_io_BVALID(fir_io_BVALID),
    .s_axi_fir_io_BREADY(fir_io_BREADY),
    .s_axi_fir_io_BRESP(fir_io_BRESP),
    .interrupt(fir_io_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = continue;
  assign AESL_slave_write_start_in = slave_start_status  & fir_io_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & fir_io_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end


AESL_axi_slave_fir_io AESL_AXI_SLAVE_fir_io(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_fir_io_AWADDR (fir_io_AWADDR),
    .TRAN_s_axi_fir_io_AWVALID (fir_io_AWVALID),
    .TRAN_s_axi_fir_io_AWREADY (fir_io_AWREADY),
    .TRAN_s_axi_fir_io_WVALID (fir_io_WVALID),
    .TRAN_s_axi_fir_io_WREADY (fir_io_WREADY),
    .TRAN_s_axi_fir_io_WDATA (fir_io_WDATA),
    .TRAN_s_axi_fir_io_WSTRB (fir_io_WSTRB),
    .TRAN_s_axi_fir_io_ARADDR (fir_io_ARADDR),
    .TRAN_s_axi_fir_io_ARVALID (fir_io_ARVALID),
    .TRAN_s_axi_fir_io_ARREADY (fir_io_ARREADY),
    .TRAN_s_axi_fir_io_RVALID (fir_io_RVALID),
    .TRAN_s_axi_fir_io_RREADY (fir_io_RREADY),
    .TRAN_s_axi_fir_io_RDATA (fir_io_RDATA),
    .TRAN_s_axi_fir_io_RRESP (fir_io_RRESP),
    .TRAN_s_axi_fir_io_BVALID (fir_io_BVALID),
    .TRAN_s_axi_fir_io_BREADY (fir_io_BREADY),
    .TRAN_s_axi_fir_io_BRESP (fir_io_BRESP),
    .TRAN_fir_io_interrupt (fir_io_INTERRUPT),
    .TRAN_fir_io_read_data_finish(fir_io_read_data_finish),
    .TRAN_fir_io_write_data_finish(fir_io_write_data_finish),
    .TRAN_fir_io_ready_out (AESL_ready),
    .TRAN_fir_io_ready_in (AESL_slave_ready),
    .TRAN_fir_io_done_out (AESL_slave_output_done),
    .TRAN_fir_io_idle_out (AESL_idle),
    .TRAN_fir_io_write_start_in     (AESL_slave_write_start_in),
    .TRAN_fir_io_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_fir_io_transaction_done_in (AESL_done_delay),
    .TRAN_fir_io_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_x;
reg [31:0] size_x;
reg [31:0] size_x_backup;
reg end_y;
reg [31:0] size_y;
reg [31:0] size_y_backup;

initial begin : initial_process
    integer rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_y;

initial begin : dump_tvout_runtime_sign_y
    integer fp;
    dump_tvout_finish_y = 0;
    fp = $fopen(`AUTOTB_TVOUT_y_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_y_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_y_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_y_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_y = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start && AESL_ready_p1) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            if (start_cnt > finish_cnt) begin
                intra_progress = clk_cnt - start_timestamp[finish_cnt];
            end else begin
                intra_progress = 0;
            end
            intra_progress = intra_progress / LATENCY_ESTIMATION * 100;
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [N/A] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


endmodule
