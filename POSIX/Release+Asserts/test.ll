; ModuleID = 'test.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [95 x i8] c"**********************This is the weak reference of Fucking S O C K E T***********************\00", align 8
@.str1 = private unnamed_addr constant [97 x i8] c"**********************This is the weak reference of Fucking C O N N E C T***********************\00", align 8
@.str2 = private unnamed_addr constant [33 x i8] c"Hello the exp is fucking working\00", align 8
@.str3 = private unnamed_addr constant [87 x i8] c"**********************This is the weak reference of getaddrinfo***********************\00", align 8
@.str4 = private unnamed_addr constant [36 x i8] c"unsupported family (EAI_ADDRFAMILY)\00", align 8
@.str5 = private unnamed_addr constant [39 x i8] c"unsupported socket type (EAI_SOCKTYPE)\00", align 8
@.str6 = private unnamed_addr constant [35 x i8] c"unsupported protocol (EAI_SERVICE)\00", align 8
@.str7 = private unnamed_addr constant [37 x i8] c"Getting the port number for service\0A\00", align 8
@.str9 = private unnamed_addr constant [47 x i8] c"service name not numeric, unsupported by model\00", align 8
@.str10 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"resolving to localhost\0A\00", align 1

define weak i32 @puts(i8* %str) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !51), !dbg !114
  ret i32 1, !dbg !115
}

define i32 @__libc_connect(i32 %sockfd, %struct.sockaddr* nocapture %saddr, i32 %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !55), !dbg !117
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %saddr}, i64 0, metadata !56), !dbg !117
  tail call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !57), !dbg !117
  %0 = tail call i32 @puts(i8* getelementptr inbounds ([97 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !118
  ret i32 1, !dbg !120
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @socket(i32 %family, i32 %type, i32 %protocol) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %family}, i64 0, metadata !52), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !53), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32 %protocol}, i64 0, metadata !54), !dbg !121
  %0 = tail call i32 @puts(i8* getelementptr inbounds ([95 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !122
  ret i32 10, !dbg !124
}

declare i64 @strtol(i8* noalias, i8** noalias nocapture, i32) nounwind

define i32 @getaddrinfo(i8* %node, i8* %service, %struct.addrinfo* %hints, %struct.addrinfo** nocapture %res) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %node}, i64 0, metadata !59), !dbg !125
  tail call void @llvm.dbg.value(metadata !{i8* %service}, i64 0, metadata !60), !dbg !125
  tail call void @llvm.dbg.value(metadata !{%struct.addrinfo* %hints}, i64 0, metadata !61), !dbg !125
  tail call void @llvm.dbg.value(metadata !{%struct.addrinfo** %res}, i64 0, metadata !62), !dbg !125
  %0 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([33 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !126
  %1 = tail call i32 @puts(i8* getelementptr inbounds ([87 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !127
  %2 = icmp eq i8* %node, null
  %3 = icmp eq i8* %service, null
  %4 = and i1 %2, %3, !dbg !128
  br i1 %4, label %bb100, label %bb1, !dbg !128

bb1:                                              ; preds = %entry
  %5 = icmp eq %struct.addrinfo* %hints, null, !dbg !129
  br i1 %5, label %bb18, label %bb2, !dbg !129

bb2:                                              ; preds = %bb1
  %6 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 1, !dbg !130
  %7 = load i32* %6, align 4, !dbg !130
  switch i32 %7, label %bb5 [
    i32 2, label %bb6
    i32 0, label %bb6
  ]

bb5:                                              ; preds = %bb2
  %8 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([36 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !131
  br label %bb100, !dbg !132

bb6:                                              ; preds = %bb2, %bb2
  %9 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 2, !dbg !133
  %10 = load i32* %9, align 8, !dbg !133
  %11 = icmp ugt i32 %10, 1, !dbg !133
  br i1 %11, label %bb7, label %bb8, !dbg !133

bb7:                                              ; preds = %bb6
  %12 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !134
  br label %bb100, !dbg !135

bb8:                                              ; preds = %bb6
  %13 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 3, !dbg !136
  %14 = load i32* %13, align 4, !dbg !136
  switch i32 %14, label %bb12 [
    i32 6, label %bb13
    i32 0, label %bb13
  ]

bb12:                                             ; preds = %bb8
  %15 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !137
  br label %bb100, !dbg !138

bb13:                                             ; preds = %bb8, %bb8
  %16 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 5, !dbg !139
  %17 = load %struct.sockaddr** %16, align 8, !dbg !139
  %18 = icmp eq %struct.sockaddr* %17, null, !dbg !139
  br i1 %18, label %bb14, label %bb100, !dbg !139

bb14:                                             ; preds = %bb13
  %19 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 4, !dbg !139
  %20 = load i32* %19, align 8, !dbg !139
  %21 = icmp eq i32 %20, 0, !dbg !139
  br i1 %21, label %bb15, label %bb100, !dbg !139

bb15:                                             ; preds = %bb14
  %22 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 6, !dbg !139
  %23 = load i8** %22, align 8, !dbg !139
  %24 = icmp eq i8* %23, null, !dbg !139
  br i1 %24, label %bb16, label %bb100, !dbg !139

bb16:                                             ; preds = %bb15
  %25 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 7, !dbg !139
  %26 = load %struct.addrinfo** %25, align 8, !dbg !139
  %27 = icmp eq %struct.addrinfo* %26, null, !dbg !139
  br i1 %27, label %bb18, label %bb100, !dbg !139

bb18:                                             ; preds = %bb16, %bb1
  tail call void @llvm.dbg.value(metadata !140, i64 0, metadata !63), !dbg !141
  br i1 %3, label %bb41, label %bb19, !dbg !142

bb19:                                             ; preds = %bb18
  %28 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !143
  tail call void @llvm.dbg.value(metadata !{i8* %service}, i64 0, metadata !58) nounwind, !dbg !144
  %29 = tail call i64 @strtol(i8* noalias nocapture %service, i8** noalias null, i32 10) nounwind, !dbg !146
  %30 = trunc i64 %29 to i32, !dbg !146
  tail call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !63), !dbg !145
  %31 = icmp eq i32 %30, 0, !dbg !148
  br i1 %31, label %bb22, label %bb39, !dbg !148

bb22:                                             ; preds = %bb19
  tail call void @llvm.dbg.value(metadata !{i8* %service}, i64 0, metadata !91), !dbg !149
  %32 = load i8* %service, align 1, !dbg !149
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !95), !dbg !149
  %33 = icmp eq i8 %32, 48, !dbg !149
  br i1 %33, label %bb37, label %bb38, !dbg !149

bb37:                                             ; preds = %bb22
  %34 = getelementptr inbounds i8* %service, i64 1, !dbg !149
  %35 = load i8* %34, align 1, !dbg !149
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !95), !dbg !149
  %36 = icmp eq i8 %35, 0, !dbg !150
  br i1 %36, label %bb39, label %bb38, !dbg !150

bb38:                                             ; preds = %bb22, %bb37
  %37 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([47 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !151
  br label %bb100, !dbg !152

bb39:                                             ; preds = %bb37, %bb19
  %38 = icmp ugt i32 %30, 65535, !dbg !153
  br i1 %38, label %bb100, label %bb41, !dbg !153

bb41:                                             ; preds = %bb18, %bb39
  %port.0 = phi i32 [ %30, %bb39 ], [ 0, %bb18 ]
  br i1 %2, label %bb87, label %bb63, !dbg !154

bb63:                                             ; preds = %bb41
  %39 = tail call i32 @strcmp(i8* %node, i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0)) nounwind readonly, !dbg !155
  %phitmp = icmp eq i32 %39, 0
  br i1 %phitmp, label %bb87, label %bb85, !dbg !155

bb85:                                             ; preds = %bb63
  %40 = tail call i32 @strcmp(i8* %node, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) nounwind readonly, !dbg !156
  %phitmp102 = icmp eq i32 %40, 0
  br i1 %phitmp102, label %bb87, label %bb86, !dbg !156

bb86:                                             ; preds = %bb85
  %41 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !157
  br label %bb87, !dbg !157

bb87:                                             ; preds = %bb85, %bb63, %bb41, %bb86
  %42 = tail call noalias i8* @malloc(i64 48) nounwind, !dbg !158
  %43 = bitcast i8* %42 to %struct.addrinfo*, !dbg !158
  tail call void @llvm.dbg.value(metadata !{%struct.addrinfo* %43}, i64 0, metadata !65), !dbg !158
  tail call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 48, i32 8, i1 false), !dbg !159
  %44 = tail call noalias i8* @malloc(i64 16) nounwind, !dbg !160
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !66), !dbg !160
  tail call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 16, i32 4, i1 false), !dbg !161
  %45 = bitcast i8* %44 to %struct.sockaddr*, !dbg !162
  %46 = getelementptr inbounds i8* %42, i64 24
  %47 = bitcast i8* %46 to %struct.sockaddr**, !dbg !162
  store %struct.sockaddr* %45, %struct.sockaddr** %47, align 8, !dbg !162
  %48 = getelementptr inbounds i8* %42, i64 16
  %49 = bitcast i8* %48 to i32*, !dbg !163
  store i32 16, i32* %49, align 8, !dbg !163
  %50 = getelementptr inbounds i8* %42, i64 4
  %51 = bitcast i8* %50 to i32*, !dbg !164
  store i32 2, i32* %51, align 4, !dbg !164
  %52 = getelementptr inbounds i8* %42, i64 12
  %53 = bitcast i8* %52 to i32*, !dbg !165
  store i32 0, i32* %53, align 4, !dbg !165
  %54 = getelementptr inbounds i8* %42, i64 8
  %55 = bitcast i8* %54 to i32*, !dbg !166
  store i32 1, i32* %55, align 8, !dbg !166
  %56 = bitcast i8* %44 to i16*, !dbg !167
  store i16 2, i16* %56, align 4, !dbg !167
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !110), !dbg !169
  tail call void @llvm.dbg.value(metadata !170, i64 0, metadata !108), !dbg !169
  %57 = getelementptr inbounds i8* %44, i64 4
  %58 = bitcast i8* %57 to i32*, !dbg !169
  store i32 16777343, i32* %58, align 4, !dbg !169
  %59 = icmp eq i32 %port.0, 0, !dbg !171
  br i1 %59, label %bb99, label %bb98, !dbg !171

bb98:                                             ; preds = %bb87
  %60 = trunc i32 %port.0 to i16, !dbg !172
  %asmtmp97 = tail call i16 @llvm.bswap.i16(i16 %60)
  %61 = getelementptr inbounds i8* %44, i64 2
  %62 = bitcast i8* %61 to i16*, !dbg !172
  store i16 %asmtmp97, i16* %62, align 2, !dbg !172
  br label %bb99, !dbg !172

bb99:                                             ; preds = %bb87, %bb98
  store %struct.addrinfo* %43, %struct.addrinfo** %res, align 8, !dbg !173
  br label %bb100, !dbg !174

bb100:                                            ; preds = %bb39, %bb13, %bb14, %bb15, %bb16, %entry, %bb99, %bb38, %bb12, %bb7, %bb5
  %.0 = phi i32 [ -9, %bb5 ], [ -7, %bb7 ], [ -8, %bb12 ], [ -8, %bb38 ], [ 0, %bb99 ], [ -2, %entry ], [ -11, %bb16 ], [ -11, %bb15 ], [ -11, %bb14 ], [ -11, %bb13 ], [ -8, %bb39 ]
  ret i32 %.0, !dbg !175
}

declare i32 @printf(i8* nocapture, ...) nounwind

declare i32 @klee_warning(...)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare noalias i8* @malloc(i64) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i16 @llvm.bswap.i16(i16) nounwind readnone

!llvm.dbg.sp = !{!0, !9, !12, !29, !31}
!llvm.dbg.lv.puts = !{!51}
!llvm.dbg.lv.socket = !{!52, !53, !54}
!llvm.dbg.lv.__libc_connect = !{!55, !56, !57}
!llvm.dbg.lv.atoi = !{!58}
!llvm.dbg.lv.getaddrinfo = !{!59, !60, !61, !62, !63, !65, !66, !85, !90, !91, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"puts", metadata !"puts", metadata !"puts", metadata !1, i32 33, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @puts} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"test.c", metadata !"/home/klee/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"test.c", metadata !"/home/klee/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!8 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 589870, i32 0, metadata !1, metadata !"socket", metadata !"socket", metadata !"socket", metadata !1, i32 49, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @socket} ; [ DW_TAG_subprogram ]
!10 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{metadata !5, metadata !5, metadata !5, metadata !5}
!12 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__libc_connect", metadata !"__libc_connect", metadata !"__libc_connect", metadata !1, i32 40, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32)* @__libc_connect} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{metadata !5, metadata !5, metadata !15, metadata !27}
!15 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 16, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ]
!17 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !18, i32 175, i64 128, i64 16, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_structure_type ]
!18 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!19 = metadata !{metadata !20, metadata !23}
!20 = metadata !{i32 589837, metadata !17, metadata !"sa_family", metadata !18, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!21 = metadata !{i32 589846, metadata !18, metadata !"sa_family_t", metadata !18, i32 175, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 589837, metadata !17, metadata !"sa_data", metadata !18, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !8, metadata !25, i32 0, null} ; [ DW_TAG_array_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 589857, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!27 = metadata !{i32 589846, metadata !18, metadata !"socklen_t", metadata !18, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 589870, i32 0, metadata !1, metadata !"atoi", metadata !"atoi", metadata !"atoi", metadata !30, i32 285, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 589865, metadata !"stdlib.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getaddrinfo", metadata !"getaddrinfo", metadata !"getaddrinfo", metadata !1, i32 60, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* @getaddrinfo} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{metadata !5, metadata !6, metadata !6, metadata !34, metadata !50}
!34 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!35 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 384, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ]
!36 = metadata !{i32 589843, metadata !1, metadata !"addrinfo", metadata !37, i32 544, i64 384, i64 64, i64 0, i32 0, null, metadata !38, i32 0, null} ; [ DW_TAG_structure_type ]
!37 = metadata !{i32 589865, metadata !"netdb.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !46, metadata !48}
!39 = metadata !{i32 589837, metadata !36, metadata !"ai_flags", metadata !37, i32 545, i64 32, i64 32, i64 0, i32 0, metadata !5} ; [ DW_TAG_member ]
!40 = metadata !{i32 589837, metadata !36, metadata !"ai_family", metadata !37, i32 546, i64 32, i64 32, i64 32, i32 0, metadata !5} ; [ DW_TAG_member ]
!41 = metadata !{i32 589837, metadata !36, metadata !"ai_socktype", metadata !37, i32 547, i64 32, i64 32, i64 64, i32 0, metadata !5} ; [ DW_TAG_member ]
!42 = metadata !{i32 589837, metadata !36, metadata !"ai_protocol", metadata !37, i32 548, i64 32, i64 32, i64 96, i32 0, metadata !5} ; [ DW_TAG_member ]
!43 = metadata !{i32 589837, metadata !36, metadata !"ai_addrlen", metadata !37, i32 549, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ]
!44 = metadata !{i32 589837, metadata !36, metadata !"ai_addr", metadata !37, i32 550, i64 64, i64 64, i64 192, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!46 = metadata !{i32 589837, metadata !36, metadata !"ai_canonname", metadata !37, i32 551, i64 64, i64 64, i64 256, i32 0, metadata !47} ; [ DW_TAG_member ]
!47 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 589837, metadata !36, metadata !"ai_next", metadata !37, i32 552, i64 64, i64 64, i64 320, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!51 = metadata !{i32 590081, metadata !0, metadata !"str", metadata !1, i32 32, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 590081, metadata !9, metadata !"family", metadata !1, i32 48, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 590081, metadata !9, metadata !"type", metadata !1, i32 48, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 590081, metadata !9, metadata !"protocol", metadata !1, i32 48, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 590081, metadata !12, metadata !"sockfd", metadata !1, i32 39, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 590081, metadata !12, metadata !"saddr", metadata !1, i32 39, metadata !15, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 590081, metadata !12, metadata !"addrlen", metadata !1, i32 39, metadata !27, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 590081, metadata !29, metadata !"__nptr", metadata !30, i32 284, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 590081, metadata !31, metadata !"node", metadata !1, i32 57, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 590081, metadata !31, metadata !"service", metadata !1, i32 57, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 590081, metadata !31, metadata !"hints", metadata !1, i32 57, metadata !34, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 590081, metadata !31, metadata !"res", metadata !1, i32 57, metadata !50, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 590080, metadata !64, metadata !"port", metadata !1, i32 93, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 589835, metadata !31, i32 60, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 590080, metadata !64, metadata !"info", metadata !1, i32 116, metadata !49, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 590080, metadata !64, metadata !"addr", metadata !1, i32 119, metadata !67, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 589843, metadata !1, metadata !"sockaddr_in", metadata !69, i32 92, i64 128, i64 32, i64 0, i32 0, null, metadata !70, i32 0, null} ; [ DW_TAG_structure_type ]
!69 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!70 = metadata !{metadata !71, metadata !73, metadata !75, metadata !80}
!71 = metadata !{i32 589837, metadata !68, metadata !"sin_family", metadata !72, i32 227, i64 16, i64 16, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!72 = metadata !{i32 589865, metadata !"in.h", metadata !"/usr/include/netinet", metadata !2} ; [ DW_TAG_file_type ]
!73 = metadata !{i32 589837, metadata !68, metadata !"sin_port", metadata !72, i32 228, i64 16, i64 16, i64 16, i32 0, metadata !74} ; [ DW_TAG_member ]
!74 = metadata !{i32 589846, metadata !72, metadata !"in_port_t", metadata !72, i32 101, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!75 = metadata !{i32 589837, metadata !68, metadata !"sin_addr", metadata !72, i32 229, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ]
!76 = metadata !{i32 589843, metadata !1, metadata !"in_addr", metadata !72, i32 143, i64 32, i64 32, i64 0, i32 0, null, metadata !77, i32 0, null} ; [ DW_TAG_structure_type ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 589837, metadata !76, metadata !"s_addr", metadata !72, i32 144, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ]
!79 = metadata !{i32 589846, metadata !72, metadata !"in_addr_t", metadata !72, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!80 = metadata !{i32 589837, metadata !68, metadata !"sin_zero", metadata !72, i32 235, i64 64, i64 8, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ]
!81 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 8, i64 0, i32 0, metadata !82, metadata !83, i32 0, null} ; [ DW_TAG_array_type ]
!82 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 589857, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!85 = metadata !{i32 590080, metadata !86, metadata !"__s1_len", metadata !1, i32 98, metadata !87, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 589835, metadata !64, i32 98, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 589846, metadata !88, metadata !"size_t", metadata !88, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ]
!88 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!89 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!90 = metadata !{i32 590080, metadata !86, metadata !"__s2_len", metadata !1, i32 98, metadata !87, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 590080, metadata !92, metadata !"__s1", metadata !1, i32 98, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 589835, metadata !86, i32 98, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ]
!94 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !82} ; [ DW_TAG_const_type ]
!95 = metadata !{i32 590080, metadata !92, metadata !"__result", metadata !1, i32 98, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 590080, metadata !97, metadata !"__s1_len", metadata !1, i32 110, metadata !87, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 589835, metadata !64, i32 110, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 590080, metadata !97, metadata !"__s2_len", metadata !1, i32 110, metadata !87, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 590080, metadata !100, metadata !"__s1", metadata !1, i32 110, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 589835, metadata !97, i32 110, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 590080, metadata !100, metadata !"__result", metadata !1, i32 110, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 590080, metadata !103, metadata !"__s1_len", metadata !1, i32 110, metadata !87, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 589835, metadata !64, i32 110, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 590080, metadata !103, metadata !"__s2_len", metadata !1, i32 110, metadata !87, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 590080, metadata !106, metadata !"__s1", metadata !1, i32 110, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 589835, metadata !103, i32 110, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 590080, metadata !106, metadata !"__result", metadata !1, i32 110, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 590080, metadata !109, metadata !"__v", metadata !1, i32 129, metadata !28, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 589835, metadata !64, i32 129, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 590080, metadata !109, metadata !"__x", metadata !1, i32 129, metadata !28, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 590080, metadata !112, metadata !"__v", metadata !1, i32 131, metadata !22, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 589835, metadata !64, i32 131, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 590080, metadata !112, metadata !"__x", metadata !1, i32 131, metadata !22, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 32, i32 0, metadata !0, null}
!115 = metadata !{i32 35, i32 0, metadata !116, null}
!116 = metadata !{i32 589835, metadata !0, i32 33, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 39, i32 0, metadata !12, null}
!118 = metadata !{i32 43, i32 0, metadata !119, null}
!119 = metadata !{i32 589835, metadata !12, i32 40, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 45, i32 0, metadata !119, null}
!121 = metadata !{i32 48, i32 0, metadata !9, null}
!122 = metadata !{i32 51, i32 0, metadata !123, null}
!123 = metadata !{i32 589835, metadata !9, i32 49, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 52, i32 0, metadata !123, null}
!125 = metadata !{i32 57, i32 0, metadata !31, null}
!126 = metadata !{i32 62, i32 0, metadata !64, null}
!127 = metadata !{i32 64, i32 0, metadata !64, null}
!128 = metadata !{i32 65, i32 0, metadata !64, null}
!129 = metadata !{i32 69, i32 0, metadata !64, null}
!130 = metadata !{i32 70, i32 0, metadata !64, null}
!131 = metadata !{i32 71, i32 0, metadata !64, null}
!132 = metadata !{i32 72, i32 0, metadata !64, null}
!133 = metadata !{i32 75, i32 0, metadata !64, null}
!134 = metadata !{i32 76, i32 0, metadata !64, null}
!135 = metadata !{i32 77, i32 0, metadata !64, null}
!136 = metadata !{i32 80, i32 0, metadata !64, null}
!137 = metadata !{i32 81, i32 0, metadata !64, null}
!138 = metadata !{i32 82, i32 0, metadata !64, null}
!139 = metadata !{i32 88, i32 0, metadata !64, null}
!140 = metadata !{i32 0}
!141 = metadata !{i32 93, i32 0, metadata !64, null}
!142 = metadata !{i32 95, i32 0, metadata !64, null}
!143 = metadata !{i32 96, i32 0, metadata !64, null}
!144 = metadata !{i32 284, i32 0, metadata !29, metadata !145}
!145 = metadata !{i32 97, i32 0, metadata !64, null}
!146 = metadata !{i32 286, i32 0, metadata !147, metadata !145}
!147 = metadata !{i32 589835, metadata !29, i32 285, i32 0, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 98, i32 0, metadata !64, null}
!149 = metadata !{i32 98, i32 0, metadata !92, null}
!150 = metadata !{i32 98, i32 0, metadata !86, null}
!151 = metadata !{i32 99, i32 0, metadata !64, null}
!152 = metadata !{i32 100, i32 0, metadata !64, null}
!153 = metadata !{i32 103, i32 0, metadata !64, null}
!154 = metadata !{i32 109, i32 0, metadata !64, null}
!155 = metadata !{i32 110, i32 0, metadata !97, null}
!156 = metadata !{i32 110, i32 0, metadata !103, null}
!157 = metadata !{i32 111, i32 0, metadata !64, null}
!158 = metadata !{i32 116, i32 0, metadata !64, null}
!159 = metadata !{i32 117, i32 0, metadata !64, null}
!160 = metadata !{i32 119, i32 0, metadata !64, null}
!161 = metadata !{i32 120, i32 0, metadata !64, null}
!162 = metadata !{i32 122, i32 0, metadata !64, null}
!163 = metadata !{i32 123, i32 0, metadata !64, null}
!164 = metadata !{i32 124, i32 0, metadata !64, null}
!165 = metadata !{i32 125, i32 0, metadata !64, null}
!166 = metadata !{i32 126, i32 0, metadata !64, null}
!167 = metadata !{i32 128, i32 0, metadata !64, null}
!168 = metadata !{i32 2130706433}                 ; [ DW_TAG_array_type ]
!169 = metadata !{i32 129, i32 0, metadata !109, null}
!170 = metadata !{i32 16777343}                   
!171 = metadata !{i32 130, i32 0, metadata !64, null}
!172 = metadata !{i32 131, i32 0, metadata !112, null}
!173 = metadata !{i32 133, i32 0, metadata !64, null}
!174 = metadata !{i32 134, i32 0, metadata !64, null}
!175 = metadata !{i32 66, i32 0, metadata !64, null}
