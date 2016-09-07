; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00"
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00"
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00"
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00"
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00"
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @dct_dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2
  %col_outbuf = alloca [64 x i16], align 2
  %col_inbuf = alloca [64 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]
  %exitcond5 = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_4 = add i4 %i, 1
  br i1 %exitcond5, label %.preheader7.preheader, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind
  call fastcc void @dct_dct_1d2([64 x i16]* %in_block, i4 %i, [64 x i16]* %row_outbuf, i4 %i)
  br label %1

.preheader7.preheader:                            ; preds = %1, %.preheader7
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader7 ], [ 0, %1 ]
  %j = phi i4 [ %tmp_mid2_v, %.preheader7 ], [ 0, %1 ]
  %i_1 = phi i4 [ %i_6, %.preheader7 ], [ 0, %1 ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader6, label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  %j_2 = add i4 %j, 1
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond = icmp eq i4 %i_1, -8
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1
  %tmp_mid2_v = select i1 %exitcond, i4 %j_2, i4 %j
  %tmp_mid2_cast = zext i4 %tmp_mid2_v to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_mid2_v, i3 0)
  %tmp_1_cast = zext i7 %tmp to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_3_cast = zext i4 %i_1_mid2 to i8
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0)
  %tmp_4_cast = zext i7 %tmp_2 to i8
  %tmp_7 = add i8 %tmp_mid2_cast, %tmp_4_cast
  %tmp_7_cast = zext i8 %tmp_7 to i64
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_7_cast
  %tmp_9 = add i8 %tmp_3_cast, %tmp_1_cast
  %tmp_9_cast = zext i8 %tmp_9 to i64
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_9_cast
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_6)
  %i_6 = add i4 %i_1_mid2, 1
  br label %.preheader7.preheader

.preheader6:                                      ; preds = %.preheader7.preheader, %3
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader7.preheader ]
  %exitcond2 = icmp eq i4 %i_2, -8
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_5 = add i4 %i_2, 1
  br i1 %exitcond2, label %.preheader.preheader, label %3

; <label>:3                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind
  call fastcc void @dct_dct_1d2([64 x i16]* %col_inbuf, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2)
  br label %.preheader6

.preheader.preheader:                             ; preds = %.preheader6, %.preheader
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader6 ]
  %j_1 = phi i4 [ %tmp_4_mid2_v, %.preheader ], [ 0, %.preheader6 ]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader6 ]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %j_3 = add i4 %j_1, 1
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond4 = icmp eq i4 %i_3, -8
  %i_3_mid2 = select i1 %exitcond4, i4 0, i4 %i_3
  %tmp_4_mid2_v = select i1 %exitcond4, i4 %j_3, i4 %j_1
  %tmp_4_mid2_cast = zext i4 %tmp_4_mid2_v to i8
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_4_mid2_v, i3 0)
  %tmp_11_cast = zext i7 %tmp_s to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_5_cast = zext i4 %i_3_mid2 to i8
  %tmp_1 = add i8 %tmp_5_cast, %tmp_11_cast
  %tmp_12_cast = zext i8 %tmp_1 to i64
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_12_cast
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0)
  %tmp_14_cast = zext i7 %tmp_3 to i8
  %tmp_4 = add i8 %tmp_4_mid2_cast, %tmp_14_cast
  %tmp_15_cast = zext i8 %tmp_4 to i64
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_15_cast
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_8)
  %i_7 = add i4 %i_3_mid2, 1
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void
}

define internal fastcc void @dct_dct_1d2([64 x i16]* nocapture %src, i4 %tmp_2, [64 x i16]* nocapture %dst, i4 %tmp_21) {
  %tmp_21_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_21)
  %tmp_2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_2)
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_21_read, i3 0)
  %tmp_17_cast = zext i7 %tmp_6 to i8
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_2_read, i3 0)
  %tmp_19_cast = zext i7 %tmp_8 to i8
  br label %1

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]
  %exitcond1 = icmp eq i4 %k, -8
  %k_1 = add i4 %k, 1
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  %tmp_cast = zext i4 %k to i8
  %tmp_9 = add i8 %tmp_cast, %tmp_17_cast
  %tmp_20_cast = zext i8 %tmp_9 to i64
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_20_cast
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0)
  %tmp_23_cast = zext i7 %tmp_10 to i8
  br label %3

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_3, %4 ]
  %exitcond = icmp eq i4 %n, -8
  %n_1 = add i4 %n, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_8_cast = zext i4 %n to i8
  %tmp_11 = add i8 %tmp_19_cast, %tmp_8_cast
  %tmp_24_cast = zext i8 %tmp_11 to i64
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_24_cast
  %tmp_12 = add i8 %tmp_23_cast, %tmp_8_cast
  %tmp_25_cast = zext i8 %tmp_12 to i64
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_25_cast
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2
  %coeff_cast = sext i15 %dct_coeff_table_load to i31
  %src_load = load i16* %src_addr, align 2
  %tmp_9_cast = sext i16 %src_load to i31
  %tmp_1 = mul i31 %coeff_cast, %tmp_9_cast
  %tmp_1_cast = sext i31 %tmp_1 to i32
  %tmp_3 = add nsw i32 %tmp1, %tmp_1_cast
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1, i32 %tmp_5) nounwind
  br label %3

; <label>:5                                       ; preds = %3
  %tmp = trunc i32 %tmp1 to i29
  %tmp_s = add i29 4096, %tmp
  %tmp_7 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_s, i32 13, i32 28)
  store i16 %tmp_7, i16* %dst_addr, align 2
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_4) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2
  %buf_2d_out = alloca [64 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r_i = phi i4 [ 0, %0 ], [ %tmp_i_mid2_v_v, %.reset ]
  %c_i = phi i4 [ 0, %0 ], [ %c, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %read_data.exit, label %.reset

.reset:                                           ; preds = %1
  %r = add i4 1, %r_i
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i = icmp eq i4 %c_i, -8
  %c_i_mid2 = select i1 %exitcond_i, i4 0, i4 %c_i
  %tmp_i_mid2_v_v = select i1 %exitcond_i, i4 %r, i4 %r_i
  %tmp = trunc i4 %tmp_i_mid2_v_v to i3
  %tmp_i_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0)
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_i_mid2_v_v, i3 0)
  %tmp_27_cast = zext i7 %tmp_s to i8
  %c_i_cast6 = zext i4 %c_i_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind
  %tmp_10_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_9_i = add i6 %c_i_cast6, %tmp_i_mid2
  %tmp_i = zext i6 %tmp_9_i to i64
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_i
  %input_load = load i16* %input_addr, align 2
  %tmp_1_i_cast = zext i4 %c_i_mid2 to i8
  %tmp_13 = add i8 %tmp_27_cast, %tmp_1_i_cast
  %tmp_28_cast = zext i8 %tmp_13 to i64
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_28_cast
  store i16 %input_load, i16* %buf_2d_in_addr, align 2
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_10_i) nounwind
  %c = add i4 1, %c_i_mid2
  br label %1

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_dct_2d([64 x i16]* %buf_2d_in, [64 x i16]* %buf_2d_out) nounwind
  br label %2

; <label>:2                                       ; preds = %read_data.exit, %.reset10
  %indvar_flatten2 = phi i7 [ 0, %read_data.exit ], [ %indvar_flatten_next2, %.reset10 ]
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %tmp_i4_mid2_v, %.reset10 ]
  %c_i6 = phi i4 [ 0, %read_data.exit ], [ %c_1, %.reset10 ]
  %exitcond_flatten2 = icmp eq i7 %indvar_flatten2, -64
  %indvar_flatten_next2 = add i7 %indvar_flatten2, 1
  br i1 %exitcond_flatten2, label %write_data.exit, label %.reset10

.reset10:                                         ; preds = %2
  %r_1 = add i4 1, %r_i2
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_Col_str)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i1 = icmp eq i4 %c_i6, -8
  %c_i6_mid2 = select i1 %exitcond_i1, i4 0, i4 %c_i6
  %tmp_i4_mid2_v = select i1 %exitcond_i1, i4 %r_1, i4 %r_i2
  %tmp_14 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_i4_mid2_v, i3 0)
  %tmp_30_cast = zext i7 %tmp_14 to i8
  %tmp_4 = trunc i4 %tmp_i4_mid2_v to i3
  %tmp_1_i5_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_4, i3 0)
  %c_i6_cast2 = zext i4 %c_i6_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_3_i_cast = zext i4 %c_i6_mid2 to i8
  %tmp_15 = add i8 %tmp_30_cast, %tmp_3_i_cast
  %tmp_32_cast = zext i8 %tmp_15 to i64
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_32_cast
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2
  %tmp_4_i = add i6 %c_i6_cast2, %tmp_1_i5_mid2
  %tmp_5_i = zext i6 %tmp_4_i to i64
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_5_i
  store i16 %buf_2d_out_load, i16* %output_addr, align 2
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_6_i) nounwind
  %c_1 = add i4 1, %c_i6_mid2
  br label %2

write_data.exit:                                  ; preds = %2
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_16 = trunc i29 %empty to i16
  ret i16 %empty_16
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_17 = zext i3 %1 to i7
  %empty_18 = shl i7 %empty, 3
  %empty_19 = or i7 %empty_18, %empty_17
  ret i7 %empty_19
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_20 = zext i3 %1 to i6
  %empty_21 = shl i6 %empty, 3
  %empty_22 = or i6 %empty_21, %empty_20
  ret i6 %empty_22
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 15, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"input", metadata !4, metadata !"short", i32 0, i32 15}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 63, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 15, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"output", metadata !4, metadata !"short", i32 0, i32 15}