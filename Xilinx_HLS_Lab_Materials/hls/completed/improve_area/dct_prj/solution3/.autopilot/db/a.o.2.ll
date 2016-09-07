; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table.7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=1 type=[8 x i14]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=21]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([8 x [8 x i16]]* nocapture %in_block, [8 x [8 x i16]]* nocapture %out_block) {
  %row_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %in_block}, i64 0, metadata !37), !dbg !39 ; [debug line = 23:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %out_block}, i64 0, metadata !40), !dbg !41 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_inbuf}, metadata !42), !dbg !44 ; [debug line = 27:109] [debug variable = col_inbuf]
  br label %1, !dbg !45                           ; [debug line = 32:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.4, %3 ]             ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %i, -8, !dbg !45        ; [#uses=1 type=i1] [debug line = 32:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond5, label %.preheader7.preheader, label %3, !dbg !45 ; [debug line = 32:8]

.preheader7.preheader:                            ; preds = %1
  br label %.preheader7, !dbg !47                 ; [debug line = 37:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str3) nounwind, !dbg !49 ; [debug line = 32:66]
  call fastcc void @dct_1d([8 x [8 x i16]]* %in_block, i4 %i, [8 x [8 x i16]]* %row_outbuf, i4 %i), !dbg !51 ; [debug line = 33:7]
  %i.4 = add i4 %i, 1, !dbg !52                   ; [#uses=1 type=i4] [debug line = 32:60]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !53), !dbg !52 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !52                           ; [debug line = 32:60]

.preheader7:                                      ; preds = %10, %.preheader7.preheader
  %j = phi i4 [ %j.2, %10 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i4]
  %exitcond4 = icmp eq i4 %j, -8, !dbg !47        ; [#uses=1 type=i1] [debug line = 37:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader6.preheader, label %5, !dbg !47 ; [debug line = 37:9]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !55                 ; [debug line = 43:9]

; <label>:5                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str4) nounwind, !dbg !57 ; [debug line = 38:1]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str4), !dbg !57 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp. = zext i4 %j to i64, !dbg !59             ; [#uses=2 type=i64] [debug line = 40:1]
  br label %6, !dbg !62                           ; [debug line = 39:11]

; <label>:6                                       ; preds = %8, %5
  %i.1 = phi i4 [ 0, %5 ], [ %i.6, %8 ]           ; [#uses=3 type=i4]
  %exitcond3 = icmp eq i4 %i.1, -8, !dbg !62      ; [#uses=1 type=i1] [debug line = 39:11]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond3, label %10, label %8, !dbg !62 ; [debug line = 39:11]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str5) nounwind, !dbg !63 ; [debug line = 40:2]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str5), !dbg !63 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !64 ; [debug line = 41:1]
  %tmp.3 = zext i4 %i.1 to i64, !dbg !59          ; [#uses=2 type=i64] [debug line = 40:1]
  %row_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i64 0, i64 %tmp.3, i64 %tmp., !dbg !59 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf.load = load i16* %row_outbuf.addr, align 2, !dbg !59 ; [#uses=1 type=i16] [debug line = 40:1]
  %col_inbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i64 0, i64 %tmp., i64 %tmp.3, !dbg !59 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf.load, i16* %col_inbuf.addr, align 2, !dbg !59 ; [debug line = 40:1]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str5, i32 %tmp.6), !dbg !65 ; [#uses=0 type=i32] [debug line = 40:34]
  %i.6 = add i4 %i.1, 1, !dbg !66                 ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i.6}, i64 0, metadata !53), !dbg !66 ; [debug line = 39:63] [debug variable = i]
  br label %6, !dbg !66                           ; [debug line = 39:63]

; <label>:10                                      ; preds = %6
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str4, i32 %tmp.1), !dbg !67 ; [#uses=0 type=i32] [debug line = 40:34]
  %j.2 = add i4 %j, 1, !dbg !68                   ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j.2}, i64 0, metadata !69), !dbg !68 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader7, !dbg !68                 ; [debug line = 37:61]

.preheader6:                                      ; preds = %13, %.preheader6.preheader
  %i.2 = phi i4 [ %i.5, %13 ], [ 0, %.preheader6.preheader ] ; [#uses=4 type=i4]
  %exitcond2 = icmp eq i4 %i.2, -8, !dbg !55      ; [#uses=1 type=i1] [debug line = 43:9]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader.preheader, label %13, !dbg !55 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader6
  br label %.preheader, !dbg !70                  ; [debug line = 48:9]

; <label>:13                                      ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str6) nounwind, !dbg !72 ; [debug line = 43:67]
  call fastcc void @dct_1d([8 x [8 x i16]]* %col_inbuf, i4 %i.2, [8 x [8 x i16]]* %col_outbuf, i4 %i.2), !dbg !74 ; [debug line = 44:7]
  %i.5 = add i4 %i.2, 1, !dbg !75                 ; [#uses=1 type=i4] [debug line = 43:61]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !53), !dbg !75 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader6, !dbg !75                 ; [debug line = 43:61]

.preheader:                                       ; preds = %20, %.preheader.preheader
  %j.1 = phi i4 [ %j.3, %20 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond1 = icmp eq i4 %j.1, -8, !dbg !70      ; [#uses=1 type=i1] [debug line = 48:9]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %22, label %15, !dbg !70 ; [debug line = 48:9]

; <label>:15                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str7) nounwind, !dbg !76 ; [debug line = 49:1]
  %tmp.7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str7), !dbg !76 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp.4 = zext i4 %j.1 to i64, !dbg !78          ; [#uses=2 type=i64] [debug line = 51:1]
  br label %16, !dbg !81                          ; [debug line = 50:11]

; <label>:16                                      ; preds = %18, %15
  %i.3 = phi i4 [ 0, %15 ], [ %i.7, %18 ]         ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i.3, -8, !dbg !81       ; [#uses=1 type=i1] [debug line = 50:11]
  %17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %20, label %18, !dbg !81 ; [debug line = 50:11]

; <label>:18                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str8) nounwind, !dbg !82 ; [debug line = 51:2]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str8), !dbg !82 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !83 ; [debug line = 52:1]
  %tmp.5 = zext i4 %i.3 to i64, !dbg !78          ; [#uses=2 type=i64] [debug line = 51:1]
  %col_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i64 0, i64 %tmp.5, i64 %tmp.4, !dbg !78 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf.load = load i16* %col_outbuf.addr, align 2, !dbg !78 ; [#uses=1 type=i16] [debug line = 51:1]
  %out_block.addr = getelementptr [8 x [8 x i16]]* %out_block, i64 0, i64 %tmp.4, i64 %tmp.5, !dbg !78 ; [#uses=1 type=i16*] [debug line = 51:1]
  store i16 %col_outbuf.load, i16* %out_block.addr, align 2, !dbg !78 ; [debug line = 51:1]
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str8, i32 %tmp.8), !dbg !84 ; [#uses=0 type=i32] [debug line = 51:34]
  %i.7 = add i4 %i.3, 1, !dbg !85                 ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !53), !dbg !85 ; [debug line = 50:63] [debug variable = i]
  br label %16, !dbg !85                          ; [debug line = 50:63]

; <label>:20                                      ; preds = %16
  %21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str7, i32 %tmp.7), !dbg !86 ; [#uses=0 type=i32] [debug line = 51:34]
  %j.3 = add i4 %j.1, 1, !dbg !87                 ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j.3}, i64 0, metadata !69), !dbg !87 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !87                  ; [debug line = 48:61]

; <label>:22                                      ; preds = %.preheader
  ret void, !dbg !88                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d([8 x [8 x i16]]* nocapture %src, i4 %tmp.2, [8 x [8 x i16]]* nocapture %dst, i4 %tmp.21) {
  %tmp.21.cast = zext i4 %tmp.21 to i64           ; [#uses=2 type=i64]
  %tmp.2.cast = zext i4 %tmp.2 to i64             ; [#uses=9 type=i64]
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.2.cast), !hlsrange !89
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.21.cast), !hlsrange !89
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %src}, i64 0, metadata !90), !dbg !92 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %dst}, i64 0, metadata !93), !dbg !94 ; [debug line = 4:81] [debug variable = dst]
  %src.addr = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 0, !dbg !95 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.addr.1 = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 1, !dbg !95 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.addr.2 = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 2, !dbg !95 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.addr.3 = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 3, !dbg !95 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.addr.4 = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 4, !dbg !95 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.addr.5 = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 5, !dbg !95 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.addr.6 = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 6, !dbg !95 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.addr.7 = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 7, !dbg !95 ; [#uses=1 type=i16*] [debug line = 17:10]
  br label %1, !dbg !101                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %3, %0
  %k = phi i4 [ 0, %0 ], [ %k.1, %3 ]             ; [#uses=3 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !101       ; [#uses=1 type=i1] [debug line = 13:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %5, label %3, !dbg !101 ; [debug line = 13:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !102 ; [debug line = 13:67]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !103 ; [debug line = 14:1]
  %tmp = zext i4 %k to i64, !dbg !104             ; [#uses=9 type=i64] [debug line = 16:48]
  %dct_coeff_table.0.addr = getelementptr [8 x i14]* @dct_coeff_table.0, i64 0, i64 %tmp, !dbg !104 ; [#uses=1 type=i14*] [debug line = 16:48]
  %dct_coeff_table.0.load = load i14* %dct_coeff_table.0.addr, align 2, !dbg !104 ; [#uses=1 type=i14] [debug line = 16:48]
  %coeff.cast = zext i14 %dct_coeff_table.0.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %src.load = load i16* %src.addr, align 2, !dbg !95 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9.cast = sext i16 %src.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.3 = mul i29 %tmp.9.cast, %coeff.cast, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.1.addr = getelementptr [8 x i15]* @dct_coeff_table.1, i64 0, i64 %tmp, !dbg !104 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.1.load = load i15* %dct_coeff_table.1.addr, align 2, !dbg !104 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.1.cast = sext i15 %dct_coeff_table.1.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %src.load.1 = load i16* %src.addr.1, align 2, !dbg !95 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9.1.cast = sext i16 %src.load.1 to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.1 = mul i29 %tmp.9.1.cast, %coeff.1.cast, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.2.addr = getelementptr [8 x i15]* @dct_coeff_table.2, i64 0, i64 %tmp, !dbg !104 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.2.load = load i15* %dct_coeff_table.2.addr, align 2, !dbg !104 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.2.cast = sext i15 %dct_coeff_table.2.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %src.load.2 = load i16* %src.addr.2, align 2, !dbg !95 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9.2.cast = sext i16 %src.load.2 to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.2 = mul i29 %tmp.9.2.cast, %coeff.2.cast, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.3.addr = getelementptr [8 x i15]* @dct_coeff_table.3, i64 0, i64 %tmp, !dbg !104 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.3.load = load i15* %dct_coeff_table.3.addr, align 2, !dbg !104 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.3.cast = sext i15 %dct_coeff_table.3.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %src.load.3 = load i16* %src.addr.3, align 2, !dbg !95 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9.3.cast = sext i16 %src.load.3 to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.3 = mul i29 %tmp.9.3.cast, %coeff.3.cast, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.4.addr = getelementptr [8 x i15]* @dct_coeff_table.4, i64 0, i64 %tmp, !dbg !104 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.4.load = load i15* %dct_coeff_table.4.addr, align 2, !dbg !104 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.4.cast = sext i15 %dct_coeff_table.4.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %src.load.4 = load i16* %src.addr.4, align 2, !dbg !95 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9.4.cast = sext i16 %src.load.4 to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.4 = mul i29 %tmp.9.4.cast, %coeff.4.cast, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.5.addr = getelementptr [8 x i15]* @dct_coeff_table.5, i64 0, i64 %tmp, !dbg !104 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.5.load = load i15* %dct_coeff_table.5.addr, align 2, !dbg !104 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.5.cast = sext i15 %dct_coeff_table.5.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %src.load.5 = load i16* %src.addr.5, align 2, !dbg !95 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9.5.cast = sext i16 %src.load.5 to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.5 = mul i29 %tmp.9.5.cast, %coeff.5.cast, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.6.addr = getelementptr [8 x i15]* @dct_coeff_table.6, i64 0, i64 %tmp, !dbg !104 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.6.load = load i15* %dct_coeff_table.6.addr, align 2, !dbg !104 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.6.cast = sext i15 %dct_coeff_table.6.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %src.load.6 = load i16* %src.addr.6, align 2, !dbg !95 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9.6.cast = sext i16 %src.load.6 to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.6 = mul i29 %tmp.9.6.cast, %coeff.6.cast, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.7.addr = getelementptr [8 x i15]* @dct_coeff_table.7, i64 0, i64 %tmp, !dbg !104 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.7.load = load i15* %dct_coeff_table.7.addr, align 2, !dbg !104 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.7.cast = sext i15 %dct_coeff_table.7.load to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %src.load.7 = load i16* %src.addr.7, align 2, !dbg !95 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9.7.cast = sext i16 %src.load.7 to i29, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.7 = mul i29 %tmp.9.7.cast, %coeff.7.cast, !dbg !95 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp2 = add i29 %tmp.10.1, %tmp.3, !dbg !105    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp.10.3, %tmp.10.2, !dbg !105 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !105         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp.10.5, %tmp.10.4, !dbg !105 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp7 = add i29 %tmp.10.7, 4096, !dbg !105      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp.10.6, %tmp7, !dbg !105     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !105         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp. = add i29 %tmp1, %tmp4, !dbg !105         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.6 = lshr i29 %tmp., 13, !dbg !105          ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.7 = trunc i29 %tmp.6 to i16, !dbg !105     ; [#uses=1 type=i16] [debug line = 19:7]
  %dst.addr = getelementptr [8 x [8 x i16]]* %dst, i64 0, i64 %tmp.21.cast, i64 %tmp, !dbg !105 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.7, i16* %dst.addr, align 2, !dbg !105 ; [debug line = 19:7]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.1) nounwind, !dbg !106 ; [#uses=0 type=i32] [debug line = 20:4]
  %k.1 = add i4 %k, 1, !dbg !107                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k.1}, i64 0, metadata !108), !dbg !107 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !107                          ; [debug line = 13:61]

; <label>:5                                       ; preds = %1
  ret void, !dbg !109                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !110
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !116
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %buf_2d_in = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !120), !dbg !124 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !125), !dbg !126 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !127), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !131), !dbg !132 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !133) nounwind, !dbg !135 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_in}, i64 0, metadata !136) nounwind, !dbg !137 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !138                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %8, %0
  %r.i = phi i4 [ 0, %0 ], [ %r, %8 ]             ; [#uses=4 type=i4]
  %r.i.cast7 = zext i4 %r.i to i6, !dbg !138      ; [#uses=1 type=i6] [debug line = 59:9@85:4]
  %exitcond1.i = icmp eq i4 %r.i, -8, !dbg !138   ; [#uses=1 type=i1] [debug line = 59:9@85:4]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %read_data.exit, label %3, !dbg !138 ; [debug line = 59:9@85:4]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str9) nounwind, !dbg !141 ; [debug line = 59:67@85:4]
  %tmp.8.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str9) nounwind, !dbg !141 ; [#uses=1 type=i32] [debug line = 59:67@85:4]
  %tmp.i = shl i6 %r.i.cast7, 3, !dbg !143        ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %tmp.7.i = zext i4 %r.i to i64, !dbg !143       ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  br label %4, !dbg !146                          ; [debug line = 61:12@85:4]

; <label>:4                                       ; preds = %6, %3
  %c.i = phi i4 [ 0, %3 ], [ %c, %6 ]             ; [#uses=4 type=i4]
  %c.i.cast6 = zext i4 %c.i to i6, !dbg !146      ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  %exitcond.i = icmp eq i4 %c.i, -8, !dbg !146    ; [#uses=1 type=i1] [debug line = 61:12@85:4]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %8, label %6, !dbg !146 ; [debug line = 61:12@85:4]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !147 ; [debug line = 62:2@85:4]
  %tmp.10.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10) nounwind, !dbg !147 ; [#uses=1 type=i32] [debug line = 62:2@85:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !148 ; [debug line = 63:1@85:4]
  %tmp.9.i = add i6 %c.i.cast6, %tmp.i, !dbg !143 ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %tmp..i = zext i6 %tmp.9.i to i64, !dbg !143    ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp..i, !dbg !143 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  %input.load = load i16* %input.addr, align 2, !dbg !143 ; [#uses=1 type=i16] [debug line = 62:1@85:4]
  %tmp.1.i = zext i4 %c.i to i64, !dbg !143       ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  %buf.assign.addr = getelementptr [8 x [8 x i16]]* %buf_2d_in, i64 0, i64 %tmp.7.i, i64 %tmp.1.i, !dbg !143 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  store i16 %input.load, i16* %buf.assign.addr, align 2, !dbg !143 ; [debug line = 62:1@85:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.10.i) nounwind, !dbg !149 ; [#uses=0 type=i32] [debug line = 62:66@85:4]
  %c = add i4 %c.i, 1, !dbg !150                  ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !151) nounwind, !dbg !150 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %4, !dbg !150                          ; [debug line = 61:64@85:4]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str9, i32 %tmp.8.i) nounwind, !dbg !153 ; [#uses=0 type=i32] [debug line = 63:4@85:4]
  %r = add i4 %r.i, 1, !dbg !154                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !155) nounwind, !dbg !154 ; [debug line = 59:61@85:4] [debug variable = r]
  br label %1, !dbg !154                          ; [debug line = 59:61@85:4]

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([8 x [8 x i16]]* %buf_2d_in, [8 x [8 x i16]]* %buf_2d_out) nounwind, !dbg !156 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_out}, i64 0, metadata !157) nounwind, !dbg !159 ; [debug line = 66:23@90:4] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !160) nounwind, !dbg !161 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %10, !dbg !162                         ; [debug line = 71:9@90:4]

; <label>:10                                      ; preds = %17, %read_data.exit
  %r.i2 = phi i4 [ 0, %read_data.exit ], [ %r.1, %17 ] ; [#uses=4 type=i4]
  %r.i2.cast4 = zext i4 %r.i2 to i6, !dbg !162    ; [#uses=1 type=i6] [debug line = 71:9@90:4]
  %exitcond1.i3 = icmp eq i4 %r.i2, -8, !dbg !162 ; [#uses=1 type=i1] [debug line = 71:9@90:4]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i3, label %write_data.exit, label %12, !dbg !162 ; [debug line = 71:9@90:4]

; <label>:12                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !165 ; [debug line = 71:67@90:4]
  %tmp.2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str11) nounwind, !dbg !165 ; [#uses=1 type=i32] [debug line = 71:67@90:4]
  %tmp.i4 = zext i4 %r.i2 to i64, !dbg !167       ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %tmp.1.i5 = shl i6 %r.i2.cast4, 3, !dbg !167    ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  br label %13, !dbg !170                         ; [debug line = 73:12@90:4]

; <label>:13                                      ; preds = %15, %12
  %c.i6 = phi i4 [ 0, %12 ], [ %c.1, %15 ]        ; [#uses=4 type=i4]
  %c.i6.cast2 = zext i4 %c.i6 to i6, !dbg !170    ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %exitcond.i7 = icmp eq i4 %c.i6, -8, !dbg !170  ; [#uses=1 type=i1] [debug line = 73:12@90:4]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i7, label %17, label %15, !dbg !170 ; [debug line = 73:12@90:4]

; <label>:15                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !171 ; [debug line = 74:2@90:4]
  %tmp.6.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12) nounwind, !dbg !171 ; [#uses=1 type=i32] [debug line = 74:2@90:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !172 ; [debug line = 75:1@90:4]
  %tmp.3.i = zext i4 %c.i6 to i64, !dbg !167      ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %buf.assign.1.addr = getelementptr [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.i4, i64 %tmp.3.i, !dbg !167 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  %buf.assign.1.load = load i16* %buf.assign.1.addr, align 2, !dbg !167 ; [#uses=1 type=i16] [debug line = 74:1@90:4]
  %tmp.4.i = add i6 %c.i6.cast2, %tmp.1.i5, !dbg !167 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %tmp.5.i = zext i6 %tmp.4.i to i64, !dbg !167   ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5.i, !dbg !167 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  store i16 %buf.assign.1.load, i16* %output.addr, align 2, !dbg !167 ; [debug line = 74:1@90:4]
  %16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.6.i) nounwind, !dbg !173 ; [#uses=0 type=i32] [debug line = 74:67@90:4]
  %c.1 = add i4 %c.i6, 1, !dbg !174               ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !175) nounwind, !dbg !174 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %13, !dbg !174                         ; [debug line = 73:64@90:4]

; <label>:17                                      ; preds = %13
  %18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str11, i32 %tmp.2.i) nounwind, !dbg !176 ; [#uses=0 type=i32] [debug line = 75:4@90:4]
  %r.1 = add i4 %r.i2, 1, !dbg !177               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !178) nounwind, !dbg !177 ; [debug line = 71:61@90:4] [debug variable = r]
  br label %10, !dbg !177                         ; [debug line = 71:61@90:4]

write_data.exit:                                  ; preds = %10
  ret void, !dbg !179                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=11]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=11]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_SpecKeepAssert(...)

!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/improve_area/dct_prj/solution3/.autopilot/db/dct.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !2, metadata !31} ; [ DW_TAG_compile_unit ]
!1 = metadata !{i32 0}
!2 = metadata !{metadata !3, metadata !12, metadata !19, metadata !25, metadata !28}
!3 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !4, i32 4, metadata !5, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
!4 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !6, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!6 = metadata !{null, metadata !7, metadata !7}
!7 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !4, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!9 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !4, i32 23, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 25} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !8, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786478, i32 0, metadata !4, metadata !"read_data", metadata !"read_data", metadata !"", metadata !4, i32 54, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 55} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !23}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !9, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{i32 786478, i32 0, metadata !4, metadata !"write_data", metadata !"write_data", metadata !"", metadata !4, i32 66, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 67} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !23, metadata !22}
!28 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct", metadata !"dct", metadata !"", metadata !4, i32 78, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 79} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !22, metadata !22}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786484, i32 0, metadata !3, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !4, i32 8, metadata !34, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !35, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!36 = metadata !{metadata !18, metadata !18}
!37 = metadata !{i32 786689, metadata !12, metadata !"in_block", null, i32 23, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{i32 23, i32 24, metadata !12, null}
!40 = metadata !{i32 786689, metadata !12, metadata !"out_block", null, i32 24, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 24, i32 18, metadata !12, null}
!42 = metadata !{i32 786688, metadata !43, metadata !"col_inbuf", metadata !4, i32 27, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 786443, metadata !12, i32 25, i32 1, metadata !4, i32 5} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 27, i32 109, metadata !43, null}
!45 = metadata !{i32 32, i32 8, metadata !46, null}
!46 = metadata !{i32 786443, metadata !43, i32 32, i32 4, metadata !4, i32 6} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 37, i32 9, metadata !48, null}
!48 = metadata !{i32 786443, metadata !43, i32 37, i32 4, metadata !4, i32 8} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 32, i32 66, metadata !50, null}
!50 = metadata !{i32 786443, metadata !46, i32 32, i32 65, metadata !4, i32 7} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 33, i32 7, metadata !50, null}
!52 = metadata !{i32 32, i32 60, metadata !46, null}
!53 = metadata !{i32 786688, metadata !43, metadata !"i", metadata !4, i32 28, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 43, i32 9, metadata !56, null}
!56 = metadata !{i32 786443, metadata !43, i32 43, i32 4, metadata !4, i32 12} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 38, i32 1, metadata !58, null}
!58 = metadata !{i32 786443, metadata !48, i32 38, i32 1, metadata !4, i32 9} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 40, i32 1, metadata !60, null}
!60 = metadata !{i32 786443, metadata !61, i32 40, i32 1, metadata !4, i32 11} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786443, metadata !58, i32 39, i32 7, metadata !4, i32 10} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 39, i32 11, metadata !61, null}
!63 = metadata !{i32 40, i32 2, metadata !60, null}
!64 = metadata !{i32 41, i32 1, metadata !60, null}
!65 = metadata !{i32 40, i32 34, metadata !60, null}
!66 = metadata !{i32 39, i32 63, metadata !61, null}
!67 = metadata !{i32 40, i32 34, metadata !61, null}
!68 = metadata !{i32 37, i32 61, metadata !48, null}
!69 = metadata !{i32 786688, metadata !43, metadata !"j", metadata !4, i32 28, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 48, i32 9, metadata !71, null}
!71 = metadata !{i32 786443, metadata !43, i32 48, i32 4, metadata !4, i32 14} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 43, i32 67, metadata !73, null}
!73 = metadata !{i32 786443, metadata !56, i32 43, i32 66, metadata !4, i32 13} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 44, i32 7, metadata !73, null}
!75 = metadata !{i32 43, i32 61, metadata !56, null}
!76 = metadata !{i32 49, i32 1, metadata !77, null}
!77 = metadata !{i32 786443, metadata !71, i32 49, i32 1, metadata !4, i32 15} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 51, i32 1, metadata !79, null}
!79 = metadata !{i32 786443, metadata !80, i32 51, i32 1, metadata !4, i32 17} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !77, i32 50, i32 7, metadata !4, i32 16} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 50, i32 11, metadata !80, null}
!82 = metadata !{i32 51, i32 2, metadata !79, null}
!83 = metadata !{i32 52, i32 1, metadata !79, null}
!84 = metadata !{i32 51, i32 34, metadata !79, null}
!85 = metadata !{i32 50, i32 63, metadata !80, null}
!86 = metadata !{i32 51, i32 34, metadata !80, null}
!87 = metadata !{i32 48, i32 61, metadata !71, null}
!88 = metadata !{i32 52, i32 1, metadata !43, null}
!89 = metadata !{i4 0, i4 7, i4 0, i4 7}          
!90 = metadata !{i32 786689, metadata !3, metadata !"src", null, i32 4, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !8, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!92 = metadata !{i32 4, i32 24, metadata !3, null}
!93 = metadata !{i32 786689, metadata !3, metadata !"dst", null, i32 4, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 4, i32 81, metadata !3, null}
!95 = metadata !{i32 17, i32 10, metadata !96, null}
!96 = metadata !{i32 786443, metadata !97, i32 15, i32 77, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !98, i32 15, i32 7, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !99, i32 13, i32 66, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786443, metadata !100, i32 13, i32 4, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !3, i32 5, i32 1, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 13, i32 9, metadata !99, null}
!102 = metadata !{i32 13, i32 67, metadata !98, null}
!103 = metadata !{i32 14, i32 1, metadata !98, null}
!104 = metadata !{i32 16, i32 48, metadata !96, null}
!105 = metadata !{i32 19, i32 7, metadata !98, null}
!106 = metadata !{i32 20, i32 4, metadata !98, null}
!107 = metadata !{i32 13, i32 61, metadata !99, null}
!108 = metadata !{i32 786688, metadata !100, metadata !"k", metadata !4, i32 6, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 21, i32 1, metadata !100, null}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 15, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"input", metadata !114, metadata !"short", i32 0, i32 15}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 63, i32 1}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 15, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"output", metadata !114, metadata !"short", i32 0, i32 15}
!120 = metadata !{i32 786689, metadata !28, metadata !"input", null, i32 78, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !9, metadata !122, i32 0, i32 0} ; [ DW_TAG_array_type ]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!124 = metadata !{i32 78, i32 16, metadata !28, null}
!125 = metadata !{i32 786689, metadata !28, metadata !"output", null, i32 78, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 78, i32 38, metadata !28, null}
!127 = metadata !{i32 786688, metadata !128, metadata !"buf_2d_in", metadata !4, i32 81, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 786443, metadata !28, i32 79, i32 1, metadata !4, i32 28} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !9, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!130 = metadata !{i32 81, i32 10, metadata !128, null}
!131 = metadata !{i32 786688, metadata !128, metadata !"buf_2d_out", metadata !4, i32 82, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 82, i32 10, metadata !128, null}
!133 = metadata !{i32 786689, metadata !19, metadata !"input", null, i32 54, metadata !121, i32 0, metadata !134} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 85, i32 4, metadata !128, null}
!135 = metadata !{i32 54, i32 22, metadata !19, metadata !134}
!136 = metadata !{i32 786689, metadata !19, metadata !"buf", null, i32 54, metadata !129, i32 0, metadata !134} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 54, i32 44, metadata !19, metadata !134}
!138 = metadata !{i32 59, i32 9, metadata !139, metadata !134}
!139 = metadata !{i32 786443, metadata !140, i32 59, i32 4, metadata !4, i32 19} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 786443, metadata !19, i32 55, i32 1, metadata !4, i32 18} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 59, i32 67, metadata !142, metadata !134}
!142 = metadata !{i32 786443, metadata !139, i32 59, i32 66, metadata !4, i32 20} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 62, i32 1, metadata !144, metadata !134}
!144 = metadata !{i32 786443, metadata !145, i32 62, i32 1, metadata !4, i32 22} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786443, metadata !142, i32 61, i32 7, metadata !4, i32 21} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 61, i32 12, metadata !145, metadata !134}
!147 = metadata !{i32 62, i32 2, metadata !144, metadata !134}
!148 = metadata !{i32 63, i32 1, metadata !144, metadata !134}
!149 = metadata !{i32 62, i32 66, metadata !144, metadata !134}
!150 = metadata !{i32 61, i32 64, metadata !145, metadata !134}
!151 = metadata !{i32 786688, metadata !140, metadata !"c", metadata !4, i32 56, metadata !152, i32 0, metadata !134} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!153 = metadata !{i32 63, i32 4, metadata !142, metadata !134}
!154 = metadata !{i32 59, i32 61, metadata !139, metadata !134}
!155 = metadata !{i32 786688, metadata !140, metadata !"r", metadata !4, i32 56, metadata !152, i32 0, metadata !134} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 87, i32 4, metadata !128, null}
!157 = metadata !{i32 786689, metadata !25, metadata !"buf", null, i32 66, metadata !129, i32 0, metadata !158} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 90, i32 4, metadata !128, null}
!159 = metadata !{i32 66, i32 23, metadata !25, metadata !158}
!160 = metadata !{i32 786689, metadata !25, metadata !"output", null, i32 66, metadata !121, i32 0, metadata !158} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 66, i32 116, metadata !25, metadata !158}
!162 = metadata !{i32 71, i32 9, metadata !163, metadata !158}
!163 = metadata !{i32 786443, metadata !164, i32 71, i32 4, metadata !4, i32 24} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786443, metadata !25, i32 67, i32 1, metadata !4, i32 23} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 71, i32 67, metadata !166, metadata !158}
!166 = metadata !{i32 786443, metadata !163, i32 71, i32 66, metadata !4, i32 25} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 74, i32 1, metadata !168, metadata !158}
!168 = metadata !{i32 786443, metadata !169, i32 74, i32 1, metadata !4, i32 27} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 786443, metadata !166, i32 73, i32 7, metadata !4, i32 26} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 73, i32 12, metadata !169, metadata !158}
!171 = metadata !{i32 74, i32 2, metadata !168, metadata !158}
!172 = metadata !{i32 75, i32 1, metadata !168, metadata !158}
!173 = metadata !{i32 74, i32 67, metadata !168, metadata !158}
!174 = metadata !{i32 73, i32 64, metadata !169, metadata !158}
!175 = metadata !{i32 786688, metadata !164, metadata !"c", metadata !4, i32 68, metadata !152, i32 0, metadata !158} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 75, i32 4, metadata !166, metadata !158}
!177 = metadata !{i32 71, i32 61, metadata !163, metadata !158}
!178 = metadata !{i32 786688, metadata !164, metadata !"r", metadata !4, i32 68, metadata !152, i32 0, metadata !158} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 91, i32 1, metadata !128, null}