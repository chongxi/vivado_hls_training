; ModuleID = 'C:/training/hls/labs/interface_synthesis/adders_io_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@adders_io_str = internal unnamed_addr constant [10 x i8] c"adders_io\00"
@p_str3 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str2 = private unnamed_addr constant [7 x i8] c"ap_ack\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @adders_io(i32 %in1, i32 %in2, i32* %in_out1) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %in1) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %in2) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_out1) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @adders_io_str) nounwind
  %in2_read = call i32 @_ssdm_op_Read.ap_ack.i32(i32 %in2) nounwind
  %in1_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %in1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_out1, [6 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %in2, [7 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %in1, [7 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %in_out1_read = call i32 @_ssdm_op_Read.ap_hs.i32P(i32* %in_out1) nounwind
  %tmp1 = add i32 %in2_read, %in1_read
  %tmp_1 = add i32 %tmp1, %in_out1_read
  call void @_ssdm_op_Write.ap_hs.i32P(i32* %in_out1, i32 %tmp_1) nounwind
  ret void
}

define weak void @_ssdm_op_Write.ap_hs.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.ap_hs.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_ack.i32(i32) {
entry:
  ret i32 %0
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in1", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"in2", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"in_out1", metadata !14, metadata !"int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 0, i32 1}
