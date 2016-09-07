// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

`define TV_OUT_d_o_0_TDATA "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_0.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_d_o_0 (
    input clk,
    input reset,
    input [16 - 1:0] TRAN_d_o_0_TDATA,
    input TRAN_d_o_0_TVALID,
    output TRAN_d_o_0_TREADY,
    input ready,
    input done,
    output [31:0] transaction);
    
    wire d_o_0_TDATA_full;
    wire d_o_0_TDATA_empty;
    reg d_o_0_TDATA_write_en;
    reg [16 - 1:0] d_o_0_TDATA_write_data;
    reg d_o_0_TDATA_read_en;
    wire [16 - 1:0] d_o_0_TDATA_read_data;
    
    fifo #(4, 16) fifo_d_o_0_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(d_o_0_TDATA_write_en),
        .write_data(d_o_0_TDATA_write_data),
        .read_clock(clk),
        .read_en(d_o_0_TDATA_read_en),
        .read_data(d_o_0_TDATA_read_data),
        .full(d_o_0_TDATA_full),
        .empty(d_o_0_TDATA_empty));
    
    always @ (*) begin
        d_o_0_TDATA_write_en <= TRAN_d_o_0_TVALID;
        d_o_0_TDATA_write_data <= TRAN_d_o_0_TDATA;
        d_o_0_TDATA_read_en <= 0;
    end
    
    assign TRAN_d_o_0_TREADY = ~(d_o_0_TDATA_full);
    
    function is_blank_char(input [7:0] char);
        if (char == " " || char == "\011" || char == "\012" || char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [199:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [199:0] rm_0x(input [199:0] token);
        reg [199:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_d_o_0_TDATA;
    
    assign transaction = transaction_save_d_o_0_TDATA;
    
    initial begin : AXI_stream_receiver_d_o_0_TDATA
        integer fp;
        reg [16 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_d_o_0_TDATA = 0;
        fifo_d_o_0_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_d_o_0_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_d_o_0_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_d_o_0_TDATA);
                while (~fifo_d_o_0_TDATA.empty) begin
                    fifo_d_o_0_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_d_o_0_TDATA = transaction_save_d_o_0_TDATA + 1;
                fifo_d_o_0_TDATA.clear();
                $fclose(fp);
            end
        end
    end

endmodule
