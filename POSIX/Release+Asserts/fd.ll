; ModuleID = 'fd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent64 = type { i64, i64, i16, i8, [256 x i8] }
%struct.exe_disk_file_t = type { i32, i8*, %struct.stat* }
%struct.exe_file_system_t = type { i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_sym_env_t = type { [32 x %struct.exe_file_t], i32, i32, i32 }
%struct.fd_set = type { [16 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, [5 x i64] }
%struct.timespec = type { i64, i64 }

@__exe_fs = external unnamed_addr global %struct.exe_file_system_t
@__exe_env = external unnamed_addr global %struct.exe_sym_env_t
@.str = private unnamed_addr constant [18 x i8] c"ignoring (ENOENT)\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@.str2 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EPERM)\00", align 8
@.str3 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EBADF)\00", align 8
@n_calls.5225 = internal unnamed_addr global i32 0
@.str4 = private unnamed_addr constant [30 x i8] c"symbolic file, ignoring (EIO)\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (ENOENT)\00", align 8
@n_calls.5801 = internal unnamed_addr global i32 0
@.str6 = private unnamed_addr constant [44 x i8] c"symbolic file descriptor, ignoring (ENOENT)\00", align 8
@n_calls.4832 = internal unnamed_addr global i32 0
@.str7 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (EINVAL)\00", align 8
@.str8 = private unnamed_addr constant [41 x i8] c"(TCGETS) symbolic file, incomplete model\00", align 8
@.str9 = private unnamed_addr constant [42 x i8] c"(TCSETS) symbolic file, silently ignoring\00", align 8
@.str10 = private unnamed_addr constant [43 x i8] c"(TCSETSW) symbolic file, silently ignoring\00", align 8
@.str11 = private unnamed_addr constant [43 x i8] c"(TCSETSF) symbolic file, silently ignoring\00", align 8
@.str12 = private unnamed_addr constant [45 x i8] c"(TIOCGWINSZ) symbolic file, incomplete model\00", align 8
@.str13 = private unnamed_addr constant [46 x i8] c"(TIOCSWINSZ) symbolic file, ignoring (EINVAL)\00", align 8
@.str14 = private unnamed_addr constant [43 x i8] c"(FIONREAD) symbolic file, incomplete model\00", align 8
@.str15 = private unnamed_addr constant [44 x i8] c"(MTIOCGET) symbolic file, ignoring (EINVAL)\00", align 8
@.str16 = private unnamed_addr constant [18 x i8] c"s != (off64_t) -1\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"fd.c\00", align 1
@__PRETTY_FUNCTION__.5262 = internal unnamed_addr constant [14 x i8] c"__fd_getdents\00"
@.str18 = private unnamed_addr constant [18 x i8] c"new_off == f->off\00", align 1
@__PRETTY_FUNCTION__.4986 = internal unnamed_addr constant [11 x i8] c"__fd_lseek\00"
@n_calls.4852 = internal unnamed_addr global i32 0
@.str19 = private unnamed_addr constant [12 x i8] c"f->off >= 0\00", align 1
@__PRETTY_FUNCTION__.4855 = internal unnamed_addr constant [5 x i8] c"read\00"
@n_calls.5132 = internal unnamed_addr global i32 0
@n_calls.5109 = internal unnamed_addr global i32 0
@n_calls.4913 = internal unnamed_addr global i32 0
@.str20 = private unnamed_addr constant [7 x i8] c"r >= 0\00", align 1
@__PRETTY_FUNCTION__.4916 = internal unnamed_addr constant [6 x i8] c"write\00"
@.str21 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@stderr = external unnamed_addr global %struct._IO_FILE*
@.str22 = private unnamed_addr constant [33 x i8] c"WARNING: write() ignores bytes.\0A\00", align 8
@.str23 = private unnamed_addr constant [47 x i8] c"Undefined call to open(): O_EXCL w/o O_RDONLY\0A\00", align 8

define i32 @access(i8* %pathname, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !398), !dbg !607
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !399), !dbg !607
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !266), !dbg !608
  %0 = load i8* %pathname, align 1, !dbg !610
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !610
  %1 = icmp eq i8 %0, 0, !dbg !611
  br i1 %1, label %bb1, label %bb.i, !dbg !611

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %pathname, i64 1, !dbg !611
  %3 = load i8* %2, align 1, !dbg !611
  %4 = icmp eq i8 %3, 0, !dbg !611
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !611

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !612
  %6 = sext i8 %0 to i32, !dbg !613
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !613
  %8 = add nsw i32 %7, 65, !dbg !613
  %9 = icmp eq i32 %6, %8, !dbg !613
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !613

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !614
  %11 = zext i32 %18 to i64, !dbg !614
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !614
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !616
  %13 = load %struct.stat** %12, align 8, !dbg !616
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !616
  %15 = load i64* %14, align 8, !dbg !616
  %16 = icmp eq i64 %15, 0, !dbg !616
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !616

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !612
  br label %bb8.i, !dbg !612

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !612
  br i1 %19, label %bb3.i, label %bb1, !dbg !612

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !614
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !400), !dbg !609
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !617
  br i1 %21, label %bb1, label %bb4, !dbg !617

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !353) nounwind, !dbg !618
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !343) nounwind, !dbg !620
  %22 = ptrtoint i8* %pathname to i64, !dbg !622
  %23 = tail call i64 @klee_get_valuel(i64 %22) nounwind, !dbg !622
  %24 = inttoptr i64 %23 to i8*, !dbg !622
  tail call void @llvm.dbg.value(metadata !{i8* %24}, i64 0, metadata !344) nounwind, !dbg !622
  %25 = icmp eq i8* %24, %pathname, !dbg !623
  %26 = zext i1 %25 to i64, !dbg !623
  tail call void @klee_assume(i64 %26) nounwind, !dbg !623
  tail call void @llvm.dbg.value(metadata !{i8* %24}, i64 0, metadata !354) nounwind, !dbg !621
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !625
  br label %bb.i6, !dbg !625

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %24, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %27 = phi i32 [ 0, %bb1 ], [ %39, %bb6.i8 ]
  %tmp.i = add i32 %27, -1
  %28 = load i8* %sc.0.i, align 1, !dbg !626
  %29 = and i32 %tmp.i, %27, !dbg !627
  %30 = icmp eq i32 %29, 0, !dbg !627
  br i1 %30, label %bb1.i, label %bb5.i, !dbg !627

bb1.i:                                            ; preds = %bb.i6
  switch i8 %28, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %28}, i64 0, metadata !357) nounwind, !dbg !626
  store i8 0, i8* %sc.0.i, align 1, !dbg !628
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !628
  br label %__concretize_string.exit, !dbg !628

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !629
  %31 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !629
  br label %bb6.i8, !dbg !629

bb5.i:                                            ; preds = %bb.i6
  %32 = sext i8 %28 to i64, !dbg !630
  %33 = tail call i64 @klee_get_valuel(i64 %32) nounwind, !dbg !630
  %34 = trunc i64 %33 to i8, !dbg !630
  %35 = icmp eq i8 %34, %28, !dbg !631
  %36 = zext i1 %35 to i64, !dbg !631
  tail call void @klee_assume(i64 %36) nounwind, !dbg !631
  store i8 %34, i8* %sc.0.i, align 1, !dbg !632
  %37 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !632
  %38 = icmp eq i8 %34, 0, !dbg !633
  br i1 %38, label %__concretize_string.exit, label %bb6.i8, !dbg !633

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %31, %bb4.i7 ], [ %37, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %39 = add i32 %27, 1, !dbg !625
  br label %bb.i6, !dbg !625

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %40 = tail call i64 (i64, ...)* @syscall(i64 21, i8* %pathname, i32 %mode) nounwind, !dbg !619
  %41 = trunc i64 %40 to i32, !dbg !619
  tail call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !402), !dbg !619
  %42 = icmp eq i32 %41, -1, !dbg !634
  br i1 %42, label %bb2, label %bb4, !dbg !634

bb2:                                              ; preds = %__concretize_string.exit
  %43 = tail call i32* @__errno_location() nounwind readnone, !dbg !635
  %44 = tail call i32 @klee_get_errno() nounwind, !dbg !635
  store i32 %44, i32* %43, align 4, !dbg !635
  br label %bb4, !dbg !635

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %__get_sym_file.exit
  %.0 = phi i32 [ 0, %__get_sym_file.exit ], [ -1, %bb2 ], [ %41, %__concretize_string.exit ]
  ret i32 %.0, !dbg !636
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @umask(i32 %mask) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mask}, i64 0, metadata !276), !dbg !637
  %0 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 1), align 8, !dbg !638
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !277), !dbg !638
  %1 = and i32 %mask, 511, !dbg !639
  store i32 %1, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 1), align 8, !dbg !639
  ret i32 %0, !dbg !640
}

define i32 @chroot(i8* nocapture %path) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !285), !dbg !641
  %0 = load i8* %path, align 1, !dbg !642
  switch i8 %0, label %bb4 [
    i8 0, label %bb
    i8 47, label %bb2
  ]

bb:                                               ; preds = %entry
  %1 = tail call i32* @__errno_location() nounwind readnone, !dbg !644
  store i32 2, i32* %1, align 4, !dbg !644
  br label %bb5, !dbg !645

bb2:                                              ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !646
  %3 = load i8* %2, align 1, !dbg !646
  %4 = icmp eq i8 %3, 0, !dbg !646
  br i1 %4, label %bb5, label %bb4, !dbg !646

bb4:                                              ; preds = %entry, %bb2
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !647
  %5 = tail call i32* @__errno_location() nounwind readnone, !dbg !648
  store i32 2, i32* %5, align 4, !dbg !648
  br label %bb5, !dbg !649

bb5:                                              ; preds = %bb2, %bb4, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb4 ], [ 0, %bb2 ]
  ret i32 %.0, !dbg !645
}

declare i32* @__errno_location() nounwind readnone

declare void @klee_warning(i8*)

define i32 @unlinkat(i32 %dirfd, i8* nocapture %pathname, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dirfd}, i64 0, metadata !286), !dbg !650
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !287), !dbg !650
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !288), !dbg !650
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !266), !dbg !651
  %0 = load i8* %pathname, align 1, !dbg !653
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !653
  %1 = icmp eq i8 %0, 0, !dbg !654
  br i1 %1, label %bb5, label %bb.i, !dbg !654

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %pathname, i64 1, !dbg !654
  %3 = load i8* %2, align 1, !dbg !654
  %4 = icmp eq i8 %3, 0, !dbg !654
  br i1 %4, label %bb8.preheader.i, label %bb5, !dbg !654

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !655
  %6 = sext i8 %0 to i32, !dbg !656
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !656
  %8 = add nsw i32 %7, 65, !dbg !656
  %9 = icmp eq i32 %6, %8, !dbg !656
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !656

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !657
  %11 = zext i32 %18 to i64, !dbg !657
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !657
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !658
  %13 = load %struct.stat** %12, align 8, !dbg !658
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !658
  %15 = load i64* %14, align 8, !dbg !658
  %16 = icmp eq i64 %15, 0, !dbg !658
  br i1 %16, label %bb5, label %__get_sym_file.exit, !dbg !658

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !655
  br label %bb8.i, !dbg !655

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !655
  br i1 %19, label %bb3.i, label %bb5, !dbg !655

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !657
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !289), !dbg !652
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !659
  br i1 %21, label %bb5, label %bb, !dbg !659

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.stat* %13, i64 0, i32 3, !dbg !660
  %23 = load i32* %22, align 8, !dbg !660
  %24 = and i32 %23, 61440, !dbg !660
  %25 = icmp eq i32 %24, 32768, !dbg !660
  br i1 %25, label %bb1, label %bb2, !dbg !660

bb1:                                              ; preds = %bb
  store i64 0, i64* %14, align 8, !dbg !661
  br label %bb6, !dbg !662

bb2:                                              ; preds = %bb
  %26 = icmp eq i32 %24, 16384, !dbg !663
  %27 = tail call i32* @__errno_location() nounwind readnone, !dbg !664
  br i1 %26, label %bb3, label %bb4, !dbg !663

bb3:                                              ; preds = %bb2
  store i32 21, i32* %27, align 4, !dbg !664
  br label %bb6, !dbg !665

bb4:                                              ; preds = %bb2
  store i32 1, i32* %27, align 4, !dbg !666
  br label %bb6, !dbg !667

bb5:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !668
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !669
  store i32 1, i32* %28, align 4, !dbg !669
  br label %bb6, !dbg !670

bb6:                                              ; preds = %bb5, %bb4, %bb3, %bb1
  %.0 = phi i32 [ 0, %bb1 ], [ -1, %bb3 ], [ -1, %bb4 ], [ -1, %bb5 ]
  ret i32 %.0, !dbg !662
}

define i32 @unlink(i8* nocapture %pathname) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !291), !dbg !671
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !266), !dbg !672
  %0 = load i8* %pathname, align 1, !dbg !674
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !674
  %1 = icmp eq i8 %0, 0, !dbg !675
  br i1 %1, label %bb5, label %bb.i, !dbg !675

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %pathname, i64 1, !dbg !675
  %3 = load i8* %2, align 1, !dbg !675
  %4 = icmp eq i8 %3, 0, !dbg !675
  br i1 %4, label %bb8.preheader.i, label %bb5, !dbg !675

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !676
  %6 = sext i8 %0 to i32, !dbg !677
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !677
  %8 = add nsw i32 %7, 65, !dbg !677
  %9 = icmp eq i32 %6, %8, !dbg !677
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !677

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !678
  %11 = zext i32 %18 to i64, !dbg !678
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !678
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !679
  %13 = load %struct.stat** %12, align 8, !dbg !679
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !679
  %15 = load i64* %14, align 8, !dbg !679
  %16 = icmp eq i64 %15, 0, !dbg !679
  br i1 %16, label %bb5, label %__get_sym_file.exit, !dbg !679

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !676
  br label %bb8.i, !dbg !676

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !676
  br i1 %19, label %bb3.i, label %bb5, !dbg !676

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !678
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !292), !dbg !673
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !680
  br i1 %21, label %bb5, label %bb, !dbg !680

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.stat* %13, i64 0, i32 3, !dbg !681
  %23 = load i32* %22, align 8, !dbg !681
  %24 = and i32 %23, 61440, !dbg !681
  %25 = icmp eq i32 %24, 32768, !dbg !681
  br i1 %25, label %bb1, label %bb2, !dbg !681

bb1:                                              ; preds = %bb
  store i64 0, i64* %14, align 8, !dbg !682
  br label %bb6, !dbg !683

bb2:                                              ; preds = %bb
  %26 = icmp eq i32 %24, 16384, !dbg !684
  %27 = tail call i32* @__errno_location() nounwind readnone, !dbg !685
  br i1 %26, label %bb3, label %bb4, !dbg !684

bb3:                                              ; preds = %bb2
  store i32 21, i32* %27, align 4, !dbg !685
  br label %bb6, !dbg !686

bb4:                                              ; preds = %bb2
  store i32 1, i32* %27, align 4, !dbg !687
  br label %bb6, !dbg !688

bb5:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !689
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !690
  store i32 1, i32* %28, align 4, !dbg !690
  br label %bb6, !dbg !691

bb6:                                              ; preds = %bb5, %bb4, %bb3, %bb1
  %.0 = phi i32 [ 0, %bb1 ], [ -1, %bb3 ], [ -1, %bb4 ], [ -1, %bb5 ]
  ret i32 %.0, !dbg !683
}

define i32 @rmdir(i8* nocapture %pathname) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !294), !dbg !692
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !266), !dbg !693
  %0 = load i8* %pathname, align 1, !dbg !695
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !695
  %1 = icmp eq i8 %0, 0, !dbg !696
  br i1 %1, label %bb3, label %bb.i, !dbg !696

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %pathname, i64 1, !dbg !696
  %3 = load i8* %2, align 1, !dbg !696
  %4 = icmp eq i8 %3, 0, !dbg !696
  br i1 %4, label %bb8.preheader.i, label %bb3, !dbg !696

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !697
  %6 = sext i8 %0 to i32, !dbg !698
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !698
  %8 = add nsw i32 %7, 65, !dbg !698
  %9 = icmp eq i32 %6, %8, !dbg !698
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !698

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !699
  %11 = zext i32 %18 to i64, !dbg !699
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !699
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !700
  %13 = load %struct.stat** %12, align 8, !dbg !700
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !700
  %15 = load i64* %14, align 8, !dbg !700
  %16 = icmp eq i64 %15, 0, !dbg !700
  br i1 %16, label %bb3, label %__get_sym_file.exit, !dbg !700

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !697
  br label %bb8.i, !dbg !697

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !697
  br i1 %19, label %bb3.i, label %bb3, !dbg !697

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !699
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !295), !dbg !694
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !701
  br i1 %21, label %bb3, label %bb, !dbg !701

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.stat* %13, i64 0, i32 3, !dbg !702
  %23 = load i32* %22, align 8, !dbg !702
  %24 = and i32 %23, 61440, !dbg !702
  %25 = icmp eq i32 %24, 16384, !dbg !702
  br i1 %25, label %bb1, label %bb2, !dbg !702

bb1:                                              ; preds = %bb
  store i64 0, i64* %14, align 8, !dbg !703
  br label %bb4, !dbg !704

bb2:                                              ; preds = %bb
  %26 = tail call i32* @__errno_location() nounwind readnone, !dbg !705
  store i32 20, i32* %26, align 4, !dbg !705
  br label %bb4, !dbg !706

bb3:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !707
  %27 = tail call i32* @__errno_location() nounwind readnone, !dbg !708
  store i32 1, i32* %27, align 4, !dbg !708
  br label %bb4, !dbg !709

bb4:                                              ; preds = %bb3, %bb2, %bb1
  %.0 = phi i32 [ 0, %bb1 ], [ -1, %bb2 ], [ -1, %bb3 ]
  ret i32 %.0, !dbg !704
}

define i64 @readlink(i8* %path, i8* %buf, i64 %bufsize) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !300), !dbg !710
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !301), !dbg !710
  tail call void @llvm.dbg.value(metadata !{i64 %bufsize}, i64 0, metadata !302), !dbg !710
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !711
  %0 = load i8* %path, align 1, !dbg !713
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !713
  %1 = icmp eq i8 %0, 0, !dbg !714
  br i1 %1, label %bb12, label %bb.i, !dbg !714

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !714
  %3 = load i8* %2, align 1, !dbg !714
  %4 = icmp eq i8 %3, 0, !dbg !714
  br i1 %4, label %bb8.preheader.i, label %bb12, !dbg !714

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !715
  %6 = sext i8 %0 to i32, !dbg !716
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !716
  %8 = add nsw i32 %7, 65, !dbg !716
  %9 = icmp eq i32 %6, %8, !dbg !716
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !716

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !717
  %11 = zext i32 %18 to i64, !dbg !717
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !717
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !718
  %13 = load %struct.stat** %12, align 8, !dbg !718
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !718
  %15 = load i64* %14, align 8, !dbg !718
  %16 = icmp eq i64 %15, 0, !dbg !718
  br i1 %16, label %bb12, label %__get_sym_file.exit, !dbg !718

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !715
  br label %bb8.i, !dbg !715

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !715
  br i1 %19, label %bb3.i, label %bb12, !dbg !715

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !717
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !303), !dbg !712
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !719
  br i1 %21, label %bb12, label %bb, !dbg !719

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.stat* %13, i64 0, i32 3, !dbg !720
  %23 = load i32* %22, align 8, !dbg !720
  %24 = and i32 %23, 61440, !dbg !720
  %25 = icmp eq i32 %24, 40960, !dbg !720
  br i1 %25, label %bb1, label %bb11, !dbg !720

bb1:                                              ; preds = %bb
  store i8 %0, i8* %buf, align 1, !dbg !721
  %26 = icmp ugt i64 %bufsize, 1, !dbg !722
  br i1 %26, label %bb3, label %bb9, !dbg !722

bb3:                                              ; preds = %bb1
  %27 = getelementptr inbounds i8* %buf, i64 1, !dbg !722
  store i8 46, i8* %27, align 1, !dbg !722
  %28 = icmp ugt i64 %bufsize, 2, !dbg !723
  br i1 %28, label %bb5, label %bb9, !dbg !723

bb5:                                              ; preds = %bb3
  %29 = getelementptr inbounds i8* %buf, i64 2, !dbg !723
  store i8 108, i8* %29, align 1, !dbg !723
  %30 = icmp ugt i64 %bufsize, 3, !dbg !724
  br i1 %30, label %bb7, label %bb9, !dbg !724

bb7:                                              ; preds = %bb5
  %31 = getelementptr inbounds i8* %buf, i64 3, !dbg !724
  store i8 110, i8* %31, align 1, !dbg !724
  %32 = icmp ugt i64 %bufsize, 4, !dbg !725
  br i1 %32, label %bb8, label %bb9, !dbg !725

bb8:                                              ; preds = %bb7
  %33 = getelementptr inbounds i8* %buf, i64 4, !dbg !725
  store i8 107, i8* %33, align 1, !dbg !725
  br label %bb9, !dbg !725

bb9:                                              ; preds = %bb3, %bb1, %bb5, %bb8, %bb7
  %34 = icmp ugt i64 %bufsize, 5, !dbg !726
  %min = select i1 %34, i64 5, i64 %bufsize, !dbg !726
  br label %bb15, !dbg !726

bb11:                                             ; preds = %bb
  %35 = tail call i32* @__errno_location() nounwind readnone, !dbg !727
  store i32 22, i32* %35, align 4, !dbg !727
  br label %bb15, !dbg !728

bb12:                                             ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  %36 = tail call i64 (i64, ...)* @syscall(i64 89, i8* %path, i8* %buf, i64 %bufsize) nounwind, !dbg !729
  %37 = trunc i64 %36 to i32, !dbg !729
  tail call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !305), !dbg !729
  %38 = icmp eq i32 %37, -1, !dbg !730
  br i1 %38, label %bb13, label %bb14, !dbg !730

bb13:                                             ; preds = %bb12
  %39 = tail call i32* @__errno_location() nounwind readnone, !dbg !731
  %40 = tail call i32 @klee_get_errno() nounwind, !dbg !731
  store i32 %40, i32* %39, align 4, !dbg !731
  br label %bb14, !dbg !731

bb14:                                             ; preds = %bb13, %bb12
  %41 = sext i32 %37 to i64, !dbg !732
  br label %bb15, !dbg !732

bb15:                                             ; preds = %bb14, %bb11, %bb9
  %.0 = phi i64 [ %min, %bb9 ], [ -1, %bb11 ], [ %41, %bb14 ]
  ret i64 %.0, !dbg !726
}

declare i64 @syscall(i64, ...) nounwind

declare i32 @klee_get_errno()

define i32 @fsync(i32 %fd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !307), !dbg !733
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !734
  %0 = icmp ult i32 %fd, 32, !dbg !736
  br i1 %0, label %bb.i, label %bb, !dbg !736

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !737
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !737
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !738
  %3 = load i32* %2, align 4, !dbg !738
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !738
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !738

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !737
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !308), !dbg !735
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !739
  br i1 %6, label %bb, label %bb1, !dbg !739

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !740
  store i32 9, i32* %7, align 4, !dbg !740
  br label %bb6, !dbg !741

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !742
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !742
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !742
  br i1 %10, label %bb3, label %bb6, !dbg !742

bb3:                                              ; preds = %bb1
  %11 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !743
  %12 = load i32* %11, align 8, !dbg !743
  %13 = tail call i64 (i64, ...)* @syscall(i64 74, i32 %12) nounwind, !dbg !743
  %14 = trunc i64 %13 to i32, !dbg !743
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !310), !dbg !743
  %15 = icmp eq i32 %14, -1, !dbg !744
  br i1 %15, label %bb4, label %bb6, !dbg !744

bb4:                                              ; preds = %bb3
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !745
  %17 = tail call i32 @klee_get_errno() nounwind, !dbg !745
  store i32 %17, i32* %16, align 4, !dbg !745
  br label %bb6, !dbg !745

bb6:                                              ; preds = %bb3, %bb4, %bb1, %bb
  %.0 = phi i32 [ -1, %bb ], [ 0, %bb1 ], [ -1, %bb4 ], [ %14, %bb3 ]
  ret i32 %.0, !dbg !741
}

define i32 @fstatfs(i32 %fd, %struct.statfs* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !312), !dbg !746
  tail call void @llvm.dbg.value(metadata !{%struct.statfs* %buf}, i64 0, metadata !313), !dbg !746
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !747
  %0 = icmp ult i32 %fd, 32, !dbg !749
  br i1 %0, label %bb.i, label %bb, !dbg !749

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !750
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !750
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !751
  %3 = load i32* %2, align 4, !dbg !751
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !751
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !751

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !750
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !314), !dbg !748
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !752
  br i1 %6, label %bb, label %bb1, !dbg !752

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !753
  store i32 9, i32* %7, align 4, !dbg !753
  br label %bb6, !dbg !754

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !755
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !755
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !755
  br i1 %10, label %bb3, label %bb2, !dbg !755

bb2:                                              ; preds = %bb1
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !756
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !757
  store i32 9, i32* %11, align 4, !dbg !757
  br label %bb6, !dbg !758

bb3:                                              ; preds = %bb1
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !759
  %13 = load i32* %12, align 8, !dbg !759
  %14 = tail call i64 (i64, ...)* @syscall(i64 138, i32 %13, %struct.statfs* %buf) nounwind, !dbg !759
  %15 = trunc i64 %14 to i32, !dbg !759
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !316), !dbg !759
  %16 = icmp eq i32 %15, -1, !dbg !760
  br i1 %16, label %bb4, label %bb6, !dbg !760

bb4:                                              ; preds = %bb3
  %17 = tail call i32* @__errno_location() nounwind readnone, !dbg !761
  %18 = tail call i32 @klee_get_errno() nounwind, !dbg !761
  store i32 %18, i32* %17, align 4, !dbg !761
  br label %bb6, !dbg !761

bb6:                                              ; preds = %bb3, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %15, %bb3 ]
  ret i32 %.0, !dbg !754
}

define i32 @__fd_ftruncate(i32 %fd, i64 %length) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !318), !dbg !762
  tail call void @llvm.dbg.value(metadata !{i64 %length}, i64 0, metadata !319), !dbg !762
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !763
  %0 = icmp ult i32 %fd, 32, !dbg !765
  br i1 %0, label %bb.i, label %__get_file.exit.thread, !dbg !765

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !766
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !766
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !767
  %3 = load i32* %2, align 4, !dbg !767
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !767
  br i1 %toBool.i, label %__get_file.exit.thread, label %__get_file.exit, !dbg !767

__get_file.exit.thread:                           ; preds = %bb.i, %entry
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !320), !dbg !764
  %5 = load i32* @n_calls.5225, align 4, !dbg !768
  %6 = add nsw i32 %5, 1, !dbg !768
  store i32 %6, i32* @n_calls.5225, align 4, !dbg !768
  br label %bb

__get_file.exit:                                  ; preds = %bb.i
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !766
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !320), !dbg !764
  %8 = load i32* @n_calls.5225, align 4, !dbg !768
  %9 = add nsw i32 %8, 1, !dbg !768
  store i32 %9, i32* @n_calls.5225, align 4, !dbg !768
  %10 = icmp eq %struct.exe_file_t* %7, null, !dbg !769
  br i1 %10, label %bb, label %bb1, !dbg !769

bb:                                               ; preds = %__get_file.exit.thread, %__get_file.exit
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !770
  store i32 9, i32* %11, align 4, !dbg !770
  br label %bb9, !dbg !771

bb1:                                              ; preds = %__get_file.exit
  %12 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !772
  %13 = icmp eq i32 %12, 0, !dbg !772
  br i1 %13, label %bb4, label %bb2, !dbg !772

bb2:                                              ; preds = %bb1
  %14 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !772
  %15 = load i32* %14, align 4, !dbg !772
  %16 = icmp eq i32 %15, %9, !dbg !772
  br i1 %16, label %bb3, label %bb4, !dbg !772

bb3:                                              ; preds = %bb2
  %17 = add i32 %12, -1, !dbg !773
  store i32 %17, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !773
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !774
  store i32 5, i32* %18, align 4, !dbg !774
  br label %bb9, !dbg !775

bb4:                                              ; preds = %bb1, %bb2
  %19 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !776
  %20 = load %struct.exe_disk_file_t** %19, align 8, !dbg !776
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !776
  br i1 %21, label %bb6, label %bb5, !dbg !776

bb5:                                              ; preds = %bb4
  tail call void @klee_warning(i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !777
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !778
  store i32 5, i32* %22, align 4, !dbg !778
  br label %bb9, !dbg !779

bb6:                                              ; preds = %bb4
  %23 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !780
  %24 = load i32* %23, align 8, !dbg !780
  %25 = tail call i64 (i64, ...)* @syscall(i64 77, i32 %24, i64 %length) nounwind, !dbg !780
  %26 = trunc i64 %25 to i32, !dbg !780
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !322), !dbg !780
  %27 = icmp eq i32 %26, -1, !dbg !781
  br i1 %27, label %bb7, label %bb9, !dbg !781

bb7:                                              ; preds = %bb6
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !782
  %29 = tail call i32 @klee_get_errno() nounwind, !dbg !782
  store i32 %29, i32* %28, align 4, !dbg !782
  br label %bb9, !dbg !782

bb9:                                              ; preds = %bb6, %bb7, %bb5, %bb3, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb3 ], [ -1, %bb5 ], [ -1, %bb7 ], [ %26, %bb6 ]
  ret i32 %.0, !dbg !771
}

define i32 @fchown(i32 %fd, i32 %owner, i32 %group) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !331), !dbg !783
  tail call void @llvm.dbg.value(metadata !{i32 %owner}, i64 0, metadata !332), !dbg !783
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !333), !dbg !783
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !784
  %0 = icmp ult i32 %fd, 32, !dbg !786
  br i1 %0, label %bb.i, label %bb, !dbg !786

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !787
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !787
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !788
  %3 = load i32* %2, align 4, !dbg !788
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !788
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !788

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !787
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !334), !dbg !785
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !789
  br i1 %6, label %bb, label %bb1, !dbg !789

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !790
  store i32 9, i32* %7, align 4, !dbg !790
  br label %bb6, !dbg !791

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !792
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !792
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !792
  br i1 %10, label %bb3, label %bb2, !dbg !792

bb2:                                              ; preds = %bb1
  tail call void @llvm.dbg.value(metadata !793, i64 0, metadata !297) nounwind, !dbg !794
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !298) nounwind, !dbg !794
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !299) nounwind, !dbg !794
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !796
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !798
  store i32 1, i32* %11, align 4, !dbg !798
  br label %bb6, !dbg !795

bb3:                                              ; preds = %bb1
  %12 = tail call i64 (i64, ...)* @syscall(i64 93, i32 %fd, i32 %owner, i32 %group) nounwind, !dbg !799
  %13 = trunc i64 %12 to i32, !dbg !799
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !336), !dbg !799
  %14 = icmp eq i32 %13, -1, !dbg !800
  br i1 %14, label %bb4, label %bb6, !dbg !800

bb4:                                              ; preds = %bb3
  %15 = tail call i32* @__errno_location() nounwind readnone, !dbg !801
  %16 = tail call i32 @klee_get_errno() nounwind, !dbg !801
  store i32 %16, i32* %15, align 4, !dbg !801
  br label %bb6, !dbg !801

bb6:                                              ; preds = %bb3, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %13, %bb3 ]
  ret i32 %.0, !dbg !791
}

define i32 @fchdir(i32 %fd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !338), !dbg !802
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !803
  %0 = icmp ult i32 %fd, 32, !dbg !805
  br i1 %0, label %bb.i, label %bb, !dbg !805

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !806
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !806
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !807
  %3 = load i32* %2, align 4, !dbg !807
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !807
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !807

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !806
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !339), !dbg !804
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !808
  br i1 %6, label %bb, label %bb1, !dbg !808

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !809
  store i32 9, i32* %7, align 4, !dbg !809
  br label %bb6, !dbg !810

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !811
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !811
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !811
  br i1 %10, label %bb3, label %bb2, !dbg !811

bb2:                                              ; preds = %bb1
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !812
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !813
  store i32 2, i32* %11, align 4, !dbg !813
  br label %bb6, !dbg !814

bb3:                                              ; preds = %bb1
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !815
  %13 = load i32* %12, align 8, !dbg !815
  %14 = tail call i64 (i64, ...)* @syscall(i64 81, i32 %13) nounwind, !dbg !815
  %15 = trunc i64 %14 to i32, !dbg !815
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !341), !dbg !815
  %16 = icmp eq i32 %15, -1, !dbg !816
  br i1 %16, label %bb4, label %bb6, !dbg !816

bb4:                                              ; preds = %bb3
  %17 = tail call i32* @__errno_location() nounwind readnone, !dbg !817
  %18 = tail call i32 @klee_get_errno() nounwind, !dbg !817
  store i32 %18, i32* %17, align 4, !dbg !817
  br label %bb6, !dbg !817

bb6:                                              ; preds = %bb3, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %15, %bb3 ]
  ret i32 %.0, !dbg !810
}

declare i64 @klee_get_valuel(i64)

declare void @klee_assume(i64)

define i8* @getcwd(i8* %buf, i64 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !349), !dbg !818
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !350), !dbg !818
  %0 = load i32* @n_calls.5801, align 4, !dbg !819
  %1 = add nsw i32 %0, 1, !dbg !819
  store i32 %1, i32* @n_calls.5801, align 4, !dbg !819
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !820
  %3 = icmp eq i32 %2, 0, !dbg !820
  br i1 %3, label %bb2, label %bb, !dbg !820

bb:                                               ; preds = %entry
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !820
  %5 = load i32* %4, align 4, !dbg !820
  %6 = icmp eq i32 %5, %1, !dbg !820
  br i1 %6, label %bb1, label %bb2, !dbg !820

bb1:                                              ; preds = %bb
  %7 = add i32 %2, -1, !dbg !821
  store i32 %7, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !821
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !822
  store i32 34, i32* %8, align 4, !dbg !822
  br label %bb9, !dbg !823

bb2:                                              ; preds = %entry, %bb
  %9 = icmp eq i8* %buf, null, !dbg !824
  br i1 %9, label %bb3, label %bb6, !dbg !824

bb3:                                              ; preds = %bb2
  %10 = icmp eq i64 %size, 0, !dbg !825
  tail call void @llvm.dbg.value(metadata !826, i64 0, metadata !350), !dbg !827
  %size_addr.0 = select i1 %10, i64 1024, i64 %size
  %11 = tail call noalias i8* @malloc(i64 %size_addr.0) nounwind, !dbg !828
  tail call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !349), !dbg !828
  br label %bb6, !dbg !828

bb6:                                              ; preds = %bb3, %bb2
  %size_addr.1 = phi i64 [ %size_addr.0, %bb3 ], [ %size, %bb2 ]
  %buf_addr.0 = phi i8* [ %11, %bb3 ], [ %buf, %bb2 ]
  tail call void @llvm.dbg.value(metadata !{i8* %buf_addr.0}, i64 0, metadata !343) nounwind, !dbg !829
  %12 = ptrtoint i8* %buf_addr.0 to i64, !dbg !831
  %13 = tail call i64 @klee_get_valuel(i64 %12) nounwind, !dbg !831
  %14 = inttoptr i64 %13 to i8*, !dbg !831
  tail call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !344) nounwind, !dbg !831
  %15 = icmp eq i8* %14, %buf_addr.0, !dbg !832
  %16 = zext i1 %15 to i64, !dbg !832
  tail call void @klee_assume(i64 %16) nounwind, !dbg !832
  tail call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !349), !dbg !830
  tail call void @llvm.dbg.value(metadata !{i64 %size_addr.1}, i64 0, metadata !346) nounwind, !dbg !833
  %17 = tail call i64 @klee_get_valuel(i64 %size_addr.1) nounwind, !dbg !835
  tail call void @llvm.dbg.value(metadata !{i64 %17}, i64 0, metadata !347) nounwind, !dbg !835
  %18 = icmp eq i64 %17, %size_addr.1, !dbg !836
  %19 = zext i1 %18 to i64, !dbg !836
  tail call void @klee_assume(i64 %19) nounwind, !dbg !836
  tail call void @llvm.dbg.value(metadata !{i64 %17}, i64 0, metadata !350), !dbg !834
  tail call void @klee_check_memory_access(i8* %14, i64 %17) nounwind, !dbg !837
  %20 = tail call i64 (i64, ...)* @syscall(i64 79, i8* %14, i64 %17) nounwind, !dbg !838
  %21 = trunc i64 %20 to i32, !dbg !838
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !351), !dbg !838
  %22 = icmp eq i32 %21, -1, !dbg !839
  br i1 %22, label %bb7, label %bb9, !dbg !839

bb7:                                              ; preds = %bb6
  %23 = tail call i32* @__errno_location() nounwind readnone, !dbg !840
  %24 = tail call i32 @klee_get_errno() nounwind, !dbg !840
  store i32 %24, i32* %23, align 4, !dbg !840
  br label %bb9, !dbg !841

bb9:                                              ; preds = %bb6, %bb7, %bb1
  %.0 = phi i8* [ null, %bb1 ], [ null, %bb7 ], [ %14, %bb6 ]
  ret i8* %.0, !dbg !823
}

declare noalias i8* @malloc(i64) nounwind

declare void @klee_check_memory_access(i8*, i64)

define i32 @__fd_statfs(i8* %path, %struct.statfs* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !361), !dbg !842
  tail call void @llvm.dbg.value(metadata !{%struct.statfs* %buf}, i64 0, metadata !362), !dbg !842
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !843
  %0 = load i8* %path, align 1, !dbg !845
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !845
  %1 = icmp eq i8 %0, 0, !dbg !846
  br i1 %1, label %bb1, label %bb.i, !dbg !846

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !846
  %3 = load i8* %2, align 1, !dbg !846
  %4 = icmp eq i8 %3, 0, !dbg !846
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !846

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !847
  %6 = sext i8 %0 to i32, !dbg !848
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !848
  %8 = add nsw i32 %7, 65, !dbg !848
  %9 = icmp eq i32 %6, %8, !dbg !848
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !848

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !849
  %11 = zext i32 %18 to i64, !dbg !849
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !849
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !850
  %13 = load %struct.stat** %12, align 8, !dbg !850
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !850
  %15 = load i64* %14, align 8, !dbg !850
  %16 = icmp eq i64 %15, 0, !dbg !850
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !850

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !847
  br label %bb8.i, !dbg !847

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !847
  br i1 %19, label %bb3.i, label %bb1, !dbg !847

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !849
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !363), !dbg !844
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !851
  br i1 %21, label %bb1, label %bb, !dbg !851

bb:                                               ; preds = %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !852
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !853
  store i32 2, i32* %22, align 4, !dbg !853
  br label %bb4, !dbg !854

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !855
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !857
  %23 = ptrtoint i8* %path to i64, !dbg !859
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !859
  %25 = inttoptr i64 %24 to i8*, !dbg !859
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !344) nounwind, !dbg !859
  %26 = icmp eq i8* %25, %path, !dbg !860
  %27 = zext i1 %26 to i64, !dbg !860
  tail call void @klee_assume(i64 %27) nounwind, !dbg !860
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !354) nounwind, !dbg !858
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !861
  br label %bb.i6, !dbg !861

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %25, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %28 = phi i32 [ 0, %bb1 ], [ %40, %bb6.i8 ]
  %tmp.i = add i32 %28, -1
  %29 = load i8* %sc.0.i, align 1, !dbg !862
  %30 = and i32 %tmp.i, %28, !dbg !863
  %31 = icmp eq i32 %30, 0, !dbg !863
  br i1 %31, label %bb1.i, label %bb5.i, !dbg !863

bb1.i:                                            ; preds = %bb.i6
  switch i8 %29, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !357) nounwind, !dbg !862
  store i8 0, i8* %sc.0.i, align 1, !dbg !864
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !864
  br label %__concretize_string.exit, !dbg !864

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !865
  %32 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !865
  br label %bb6.i8, !dbg !865

bb5.i:                                            ; preds = %bb.i6
  %33 = sext i8 %29 to i64, !dbg !866
  %34 = tail call i64 @klee_get_valuel(i64 %33) nounwind, !dbg !866
  %35 = trunc i64 %34 to i8, !dbg !866
  %36 = icmp eq i8 %35, %29, !dbg !867
  %37 = zext i1 %36 to i64, !dbg !867
  tail call void @klee_assume(i64 %37) nounwind, !dbg !867
  store i8 %35, i8* %sc.0.i, align 1, !dbg !868
  %38 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !868
  %39 = icmp eq i8 %35, 0, !dbg !869
  br i1 %39, label %__concretize_string.exit, label %bb6.i8, !dbg !869

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %32, %bb4.i7 ], [ %38, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %40 = add i32 %28, 1, !dbg !861
  br label %bb.i6, !dbg !861

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %41 = tail call i64 (i64, ...)* @syscall(i64 137, i8* %path, %struct.statfs* %buf) nounwind, !dbg !856
  %42 = trunc i64 %41 to i32, !dbg !856
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !365), !dbg !856
  %43 = icmp eq i32 %42, -1, !dbg !870
  br i1 %43, label %bb2, label %bb4, !dbg !870

bb2:                                              ; preds = %__concretize_string.exit
  %44 = tail call i32* @__errno_location() nounwind readnone, !dbg !871
  %45 = tail call i32 @klee_get_errno() nounwind, !dbg !871
  store i32 %45, i32* %44, align 4, !dbg !871
  br label %bb4, !dbg !871

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ %42, %__concretize_string.exit ]
  ret i32 %.0, !dbg !854
}

define i32 @lchown(i8* %path, i32 %owner, i32 %group) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !367), !dbg !872
  tail call void @llvm.dbg.value(metadata !{i32 %owner}, i64 0, metadata !368), !dbg !872
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !369), !dbg !872
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !873
  %0 = load i8* %path, align 1, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !875
  %1 = icmp eq i8 %0, 0, !dbg !876
  br i1 %1, label %bb1, label %bb.i, !dbg !876

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !876
  %3 = load i8* %2, align 1, !dbg !876
  %4 = icmp eq i8 %3, 0, !dbg !876
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !876

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !877
  %6 = sext i8 %0 to i32, !dbg !878
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !878
  %8 = add nsw i32 %7, 65, !dbg !878
  %9 = icmp eq i32 %6, %8, !dbg !878
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !878

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !879
  %11 = zext i32 %18 to i64, !dbg !879
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !879
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !880
  %13 = load %struct.stat** %12, align 8, !dbg !880
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !880
  %15 = load i64* %14, align 8, !dbg !880
  %16 = icmp eq i64 %15, 0, !dbg !880
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !880

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !877
  br label %bb8.i, !dbg !877

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !877
  br i1 %19, label %bb3.i, label %bb1, !dbg !877

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !879
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !370), !dbg !874
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !881
  br i1 %21, label %bb1, label %bb, !dbg !881

bb:                                               ; preds = %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !793, i64 0, metadata !297) nounwind, !dbg !882
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !298) nounwind, !dbg !882
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !299) nounwind, !dbg !882
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !884
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !885
  store i32 1, i32* %22, align 4, !dbg !885
  br label %bb4, !dbg !883

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !886
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !888
  %23 = ptrtoint i8* %path to i64, !dbg !890
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !890
  %25 = inttoptr i64 %24 to i8*, !dbg !890
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !344) nounwind, !dbg !890
  %26 = icmp eq i8* %25, %path, !dbg !891
  %27 = zext i1 %26 to i64, !dbg !891
  tail call void @klee_assume(i64 %27) nounwind, !dbg !891
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !354) nounwind, !dbg !889
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !892
  br label %bb.i6, !dbg !892

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %25, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %28 = phi i32 [ 0, %bb1 ], [ %40, %bb6.i8 ]
  %tmp.i = add i32 %28, -1
  %29 = load i8* %sc.0.i, align 1, !dbg !893
  %30 = and i32 %tmp.i, %28, !dbg !894
  %31 = icmp eq i32 %30, 0, !dbg !894
  br i1 %31, label %bb1.i, label %bb5.i, !dbg !894

bb1.i:                                            ; preds = %bb.i6
  switch i8 %29, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !357) nounwind, !dbg !893
  store i8 0, i8* %sc.0.i, align 1, !dbg !895
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !895
  br label %__concretize_string.exit, !dbg !895

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !896
  %32 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !896
  br label %bb6.i8, !dbg !896

bb5.i:                                            ; preds = %bb.i6
  %33 = sext i8 %29 to i64, !dbg !897
  %34 = tail call i64 @klee_get_valuel(i64 %33) nounwind, !dbg !897
  %35 = trunc i64 %34 to i8, !dbg !897
  %36 = icmp eq i8 %35, %29, !dbg !898
  %37 = zext i1 %36 to i64, !dbg !898
  tail call void @klee_assume(i64 %37) nounwind, !dbg !898
  store i8 %35, i8* %sc.0.i, align 1, !dbg !899
  %38 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !899
  %39 = icmp eq i8 %35, 0, !dbg !900
  br i1 %39, label %__concretize_string.exit, label %bb6.i8, !dbg !900

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %32, %bb4.i7 ], [ %38, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %40 = add i32 %28, 1, !dbg !892
  br label %bb.i6, !dbg !892

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %41 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) nounwind, !dbg !887
  %42 = trunc i64 %41 to i32, !dbg !887
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !372), !dbg !887
  %43 = icmp eq i32 %42, -1, !dbg !901
  br i1 %43, label %bb2, label %bb4, !dbg !901

bb2:                                              ; preds = %__concretize_string.exit
  %44 = tail call i32* @__errno_location() nounwind readnone, !dbg !902
  %45 = tail call i32 @klee_get_errno() nounwind, !dbg !902
  store i32 %45, i32* %44, align 4, !dbg !902
  br label %bb4, !dbg !902

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ %42, %__concretize_string.exit ]
  ret i32 %.0, !dbg !883
}

define i32 @chown(i8* %path, i32 %owner, i32 %group) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !374), !dbg !903
  tail call void @llvm.dbg.value(metadata !{i32 %owner}, i64 0, metadata !375), !dbg !903
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !376), !dbg !903
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !904
  %0 = load i8* %path, align 1, !dbg !906
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !906
  %1 = icmp eq i8 %0, 0, !dbg !907
  br i1 %1, label %bb1, label %bb.i, !dbg !907

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !907
  %3 = load i8* %2, align 1, !dbg !907
  %4 = icmp eq i8 %3, 0, !dbg !907
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !907

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !908
  %6 = sext i8 %0 to i32, !dbg !909
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !909
  %8 = add nsw i32 %7, 65, !dbg !909
  %9 = icmp eq i32 %6, %8, !dbg !909
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !909

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !910
  %11 = zext i32 %18 to i64, !dbg !910
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !910
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !911
  %13 = load %struct.stat** %12, align 8, !dbg !911
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !911
  %15 = load i64* %14, align 8, !dbg !911
  %16 = icmp eq i64 %15, 0, !dbg !911
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !911

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !908
  br label %bb8.i, !dbg !908

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !908
  br i1 %19, label %bb3.i, label %bb1, !dbg !908

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !910
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !377), !dbg !905
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !912
  br i1 %21, label %bb1, label %bb, !dbg !912

bb:                                               ; preds = %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !793, i64 0, metadata !297) nounwind, !dbg !913
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !298) nounwind, !dbg !913
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !299) nounwind, !dbg !913
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !915
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !916
  store i32 1, i32* %22, align 4, !dbg !916
  br label %bb4, !dbg !914

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !917
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !919
  %23 = ptrtoint i8* %path to i64, !dbg !921
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !921
  %25 = inttoptr i64 %24 to i8*, !dbg !921
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !344) nounwind, !dbg !921
  %26 = icmp eq i8* %25, %path, !dbg !922
  %27 = zext i1 %26 to i64, !dbg !922
  tail call void @klee_assume(i64 %27) nounwind, !dbg !922
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !354) nounwind, !dbg !920
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !923
  br label %bb.i6, !dbg !923

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %25, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %28 = phi i32 [ 0, %bb1 ], [ %40, %bb6.i8 ]
  %tmp.i = add i32 %28, -1
  %29 = load i8* %sc.0.i, align 1, !dbg !924
  %30 = and i32 %tmp.i, %28, !dbg !925
  %31 = icmp eq i32 %30, 0, !dbg !925
  br i1 %31, label %bb1.i, label %bb5.i, !dbg !925

bb1.i:                                            ; preds = %bb.i6
  switch i8 %29, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !357) nounwind, !dbg !924
  store i8 0, i8* %sc.0.i, align 1, !dbg !926
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !926
  br label %__concretize_string.exit, !dbg !926

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !927
  %32 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !927
  br label %bb6.i8, !dbg !927

bb5.i:                                            ; preds = %bb.i6
  %33 = sext i8 %29 to i64, !dbg !928
  %34 = tail call i64 @klee_get_valuel(i64 %33) nounwind, !dbg !928
  %35 = trunc i64 %34 to i8, !dbg !928
  %36 = icmp eq i8 %35, %29, !dbg !929
  %37 = zext i1 %36 to i64, !dbg !929
  tail call void @klee_assume(i64 %37) nounwind, !dbg !929
  store i8 %35, i8* %sc.0.i, align 1, !dbg !930
  %38 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !930
  %39 = icmp eq i8 %35, 0, !dbg !931
  br i1 %39, label %__concretize_string.exit, label %bb6.i8, !dbg !931

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %32, %bb4.i7 ], [ %38, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %40 = add i32 %28, 1, !dbg !923
  br label %bb.i6, !dbg !923

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %41 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) nounwind, !dbg !918
  %42 = trunc i64 %41 to i32, !dbg !918
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !379), !dbg !918
  %43 = icmp eq i32 %42, -1, !dbg !932
  br i1 %43, label %bb2, label %bb4, !dbg !932

bb2:                                              ; preds = %__concretize_string.exit
  %44 = tail call i32* @__errno_location() nounwind readnone, !dbg !933
  %45 = tail call i32 @klee_get_errno() nounwind, !dbg !933
  store i32 %45, i32* %44, align 4, !dbg !933
  br label %bb4, !dbg !933

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ %42, %__concretize_string.exit ]
  ret i32 %.0, !dbg !914
}

define i32 @chdir(i8* %path) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !381), !dbg !934
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !935
  %0 = load i8* %path, align 1, !dbg !937
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !937
  %1 = icmp eq i8 %0, 0, !dbg !938
  br i1 %1, label %bb1, label %bb.i, !dbg !938

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !938
  %3 = load i8* %2, align 1, !dbg !938
  %4 = icmp eq i8 %3, 0, !dbg !938
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !938

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !939
  %6 = sext i8 %0 to i32, !dbg !940
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !940
  %8 = add nsw i32 %7, 65, !dbg !940
  %9 = icmp eq i32 %6, %8, !dbg !940
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !940

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !941
  %11 = zext i32 %18 to i64, !dbg !941
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !941
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !942
  %13 = load %struct.stat** %12, align 8, !dbg !942
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !942
  %15 = load i64* %14, align 8, !dbg !942
  %16 = icmp eq i64 %15, 0, !dbg !942
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !942

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !939
  br label %bb8.i, !dbg !939

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !939
  br i1 %19, label %bb3.i, label %bb1, !dbg !939

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !941
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !382), !dbg !936
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !943
  br i1 %21, label %bb1, label %bb, !dbg !943

bb:                                               ; preds = %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !944
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !945
  store i32 2, i32* %22, align 4, !dbg !945
  br label %bb4, !dbg !946

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !947
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !949
  %23 = ptrtoint i8* %path to i64, !dbg !951
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !951
  %25 = inttoptr i64 %24 to i8*, !dbg !951
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !344) nounwind, !dbg !951
  %26 = icmp eq i8* %25, %path, !dbg !952
  %27 = zext i1 %26 to i64, !dbg !952
  tail call void @klee_assume(i64 %27) nounwind, !dbg !952
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !354) nounwind, !dbg !950
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !953
  br label %bb.i6, !dbg !953

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %25, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %28 = phi i32 [ 0, %bb1 ], [ %40, %bb6.i8 ]
  %tmp.i = add i32 %28, -1
  %29 = load i8* %sc.0.i, align 1, !dbg !954
  %30 = and i32 %tmp.i, %28, !dbg !955
  %31 = icmp eq i32 %30, 0, !dbg !955
  br i1 %31, label %bb1.i, label %bb5.i, !dbg !955

bb1.i:                                            ; preds = %bb.i6
  switch i8 %29, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !357) nounwind, !dbg !954
  store i8 0, i8* %sc.0.i, align 1, !dbg !956
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !956
  br label %__concretize_string.exit, !dbg !956

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !957
  %32 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !957
  br label %bb6.i8, !dbg !957

bb5.i:                                            ; preds = %bb.i6
  %33 = sext i8 %29 to i64, !dbg !958
  %34 = tail call i64 @klee_get_valuel(i64 %33) nounwind, !dbg !958
  %35 = trunc i64 %34 to i8, !dbg !958
  %36 = icmp eq i8 %35, %29, !dbg !959
  %37 = zext i1 %36 to i64, !dbg !959
  tail call void @klee_assume(i64 %37) nounwind, !dbg !959
  store i8 %35, i8* %sc.0.i, align 1, !dbg !960
  %38 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !960
  %39 = icmp eq i8 %35, 0, !dbg !961
  br i1 %39, label %__concretize_string.exit, label %bb6.i8, !dbg !961

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %32, %bb4.i7 ], [ %38, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %40 = add i32 %28, 1, !dbg !953
  br label %bb.i6, !dbg !953

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %41 = tail call i64 (i64, ...)* @syscall(i64 80, i8* %path) nounwind, !dbg !948
  %42 = trunc i64 %41 to i32, !dbg !948
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !384), !dbg !948
  %43 = icmp eq i32 %42, -1, !dbg !962
  br i1 %43, label %bb2, label %bb4, !dbg !962

bb2:                                              ; preds = %__concretize_string.exit
  %44 = tail call i32* @__errno_location() nounwind readnone, !dbg !963
  %45 = tail call i32 @klee_get_errno() nounwind, !dbg !963
  store i32 %45, i32* %44, align 4, !dbg !963
  br label %bb4, !dbg !963

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ %42, %__concretize_string.exit ]
  ret i32 %.0, !dbg !946
}

define i32 @utimes(i8* %path, %struct.timespec* %times) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !386), !dbg !964
  tail call void @llvm.dbg.value(metadata !{%struct.timespec* %times}, i64 0, metadata !387), !dbg !964
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !965
  %0 = load i8* %path, align 1, !dbg !967
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !967
  %1 = icmp eq i8 %0, 0, !dbg !968
  br i1 %1, label %bb1, label %bb.i, !dbg !968

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !968
  %3 = load i8* %2, align 1, !dbg !968
  %4 = icmp eq i8 %3, 0, !dbg !968
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !968

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !969
  %6 = sext i8 %0 to i32, !dbg !970
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !970
  %8 = add nsw i32 %7, 65, !dbg !970
  %9 = icmp eq i32 %6, %8, !dbg !970
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !970

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !971
  %11 = zext i32 %18 to i64, !dbg !971
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !971
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !972
  %13 = load %struct.stat** %12, align 8, !dbg !972
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !972
  %15 = load i64* %14, align 8, !dbg !972
  %16 = icmp eq i64 %15, 0, !dbg !972
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !972

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !969
  br label %bb8.i, !dbg !969

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !969
  br i1 %19, label %bb3.i, label %bb1, !dbg !969

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !971
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !388), !dbg !966
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !973
  br i1 %21, label %bb1, label %bb, !dbg !973

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.timespec* %times, i64 0, i32 0, !dbg !974
  %23 = load i64* %22, align 8, !dbg !974
  %24 = getelementptr inbounds %struct.stat* %13, i64 0, i32 11, i32 0, !dbg !974
  store i64 %23, i64* %24, align 8, !dbg !974
  %25 = load %struct.stat** %12, align 8, !dbg !975
  %26 = getelementptr inbounds %struct.timespec* %times, i64 1, i32 0, !dbg !975
  %27 = load i64* %26, align 8, !dbg !975
  %28 = getelementptr inbounds %struct.stat* %25, i64 0, i32 12, i32 0, !dbg !975
  store i64 %27, i64* %28, align 8, !dbg !975
  %29 = load %struct.stat** %12, align 8, !dbg !976
  %30 = load i64* %22, align 8, !dbg !976
  %31 = mul nsw i64 %30, 1000000000, !dbg !976
  %32 = getelementptr inbounds %struct.stat* %29, i64 0, i32 11, i32 1, !dbg !976
  store i64 %31, i64* %32, align 8, !dbg !976
  %33 = load %struct.stat** %12, align 8, !dbg !977
  %34 = load i64* %26, align 8, !dbg !977
  %35 = mul nsw i64 %34, 1000000000, !dbg !977
  %36 = getelementptr inbounds %struct.stat* %33, i64 0, i32 12, i32 1, !dbg !977
  store i64 %35, i64* %36, align 8, !dbg !977
  br label %bb4, !dbg !978

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !979
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !981
  %37 = ptrtoint i8* %path to i64, !dbg !983
  %38 = tail call i64 @klee_get_valuel(i64 %37) nounwind, !dbg !983
  %39 = inttoptr i64 %38 to i8*, !dbg !983
  tail call void @llvm.dbg.value(metadata !{i8* %39}, i64 0, metadata !344) nounwind, !dbg !983
  %40 = icmp eq i8* %39, %path, !dbg !984
  %41 = zext i1 %40 to i64, !dbg !984
  tail call void @klee_assume(i64 %41) nounwind, !dbg !984
  tail call void @llvm.dbg.value(metadata !{i8* %39}, i64 0, metadata !354) nounwind, !dbg !982
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !985
  br label %bb.i6, !dbg !985

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %39, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %42 = phi i32 [ 0, %bb1 ], [ %54, %bb6.i8 ]
  %tmp.i = add i32 %42, -1
  %43 = load i8* %sc.0.i, align 1, !dbg !986
  %44 = and i32 %tmp.i, %42, !dbg !987
  %45 = icmp eq i32 %44, 0, !dbg !987
  br i1 %45, label %bb1.i, label %bb5.i, !dbg !987

bb1.i:                                            ; preds = %bb.i6
  switch i8 %43, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %43}, i64 0, metadata !357) nounwind, !dbg !986
  store i8 0, i8* %sc.0.i, align 1, !dbg !988
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !988
  br label %__concretize_string.exit, !dbg !988

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !989
  %46 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !989
  br label %bb6.i8, !dbg !989

bb5.i:                                            ; preds = %bb.i6
  %47 = sext i8 %43 to i64, !dbg !990
  %48 = tail call i64 @klee_get_valuel(i64 %47) nounwind, !dbg !990
  %49 = trunc i64 %48 to i8, !dbg !990
  %50 = icmp eq i8 %49, %43, !dbg !991
  %51 = zext i1 %50 to i64, !dbg !991
  tail call void @klee_assume(i64 %51) nounwind, !dbg !991
  store i8 %49, i8* %sc.0.i, align 1, !dbg !992
  %52 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !992
  %53 = icmp eq i8 %49, 0, !dbg !993
  br i1 %53, label %__concretize_string.exit, label %bb6.i8, !dbg !993

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %46, %bb4.i7 ], [ %52, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %54 = add i32 %42, 1, !dbg !985
  br label %bb.i6, !dbg !985

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %55 = tail call i64 (i64, ...)* @syscall(i64 235, i8* %path, %struct.timespec* %times) nounwind, !dbg !980
  %56 = trunc i64 %55 to i32, !dbg !980
  tail call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !390), !dbg !980
  %57 = icmp eq i32 %56, -1, !dbg !994
  br i1 %57, label %bb2, label %bb4, !dbg !994

bb2:                                              ; preds = %__concretize_string.exit
  %58 = tail call i32* @__errno_location() nounwind readnone, !dbg !995
  %59 = tail call i32 @klee_get_errno() nounwind, !dbg !995
  store i32 %59, i32* %58, align 4, !dbg !995
  br label %bb4, !dbg !995

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ 0, %bb ], [ -1, %bb2 ], [ %56, %__concretize_string.exit ]
  ret i32 %.0, !dbg !978
}

define i32 @futimesat(i32 %fd, i8* %path, %struct.timespec* %times) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !391), !dbg !996
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !392), !dbg !996
  tail call void @llvm.dbg.value(metadata !{%struct.timespec* %times}, i64 0, metadata !393), !dbg !996
  %0 = icmp eq i32 %fd, -100, !dbg !997
  br i1 %0, label %bb5, label %bb, !dbg !997

bb:                                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !998
  %1 = icmp ult i32 %fd, 32, !dbg !1000
  br i1 %1, label %bb.i, label %bb1, !dbg !1000

bb.i:                                             ; preds = %bb
  %2 = sext i32 %fd to i64, !dbg !1001
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1001
  %3 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 1, !dbg !1002
  %4 = load i32* %3, align 4, !dbg !1002
  %5 = and i32 %4, 1
  %toBool.i = icmp eq i32 %5, 0, !dbg !1002
  br i1 %toBool.i, label %bb1, label %__get_file.exit, !dbg !1002

__get_file.exit:                                  ; preds = %bb.i
  %6 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, !dbg !1001
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %6}, i64 0, metadata !396), !dbg !999
  %7 = icmp eq %struct.exe_file_t* %6, null, !dbg !1003
  br i1 %7, label %bb1, label %bb2, !dbg !1003

bb1:                                              ; preds = %bb, %bb.i, %__get_file.exit
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !1004
  store i32 9, i32* %8, align 4, !dbg !1004
  br label %bb13, !dbg !1005

bb2:                                              ; preds = %__get_file.exit
  %9 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 3, !dbg !1006
  %10 = load %struct.exe_disk_file_t** %9, align 8, !dbg !1006
  %11 = icmp eq %struct.exe_disk_file_t* %10, null, !dbg !1006
  br i1 %11, label %bb4, label %bb3, !dbg !1006

bb3:                                              ; preds = %bb2
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !1007
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !1008
  store i32 2, i32* %12, align 4, !dbg !1008
  br label %bb13, !dbg !1009

bb4:                                              ; preds = %bb2
  %13 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 0, !dbg !1010
  %14 = load i32* %13, align 8, !dbg !1010
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !391), !dbg !1010
  %phitmp = sext i32 %14 to i64
  br label %bb5, !dbg !1010

bb5:                                              ; preds = %entry, %bb4
  %fd_addr.0 = phi i64 [ %phitmp, %bb4 ], [ -100, %entry ]
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !1011
  %15 = load i8* %path, align 1, !dbg !1013
  tail call void @llvm.dbg.value(metadata !{i8 %15}, i64 0, metadata !267), !dbg !1013
  %16 = icmp eq i8 %15, 0, !dbg !1014
  br i1 %16, label %bb7, label %bb.i17, !dbg !1014

bb.i17:                                           ; preds = %bb5
  %17 = getelementptr inbounds i8* %path, i64 1, !dbg !1014
  %18 = load i8* %17, align 1, !dbg !1014
  %19 = icmp eq i8 %18, 0, !dbg !1014
  br i1 %19, label %bb8.preheader.i, label %bb7, !dbg !1014

bb8.preheader.i:                                  ; preds = %bb.i17
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1015
  %21 = sext i8 %15 to i32, !dbg !1016
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %33, 24
  %22 = ashr exact i32 %sext.i, 24, !dbg !1016
  %23 = add nsw i32 %22, 65, !dbg !1016
  %24 = icmp eq i32 %21, %23, !dbg !1016
  br i1 %24, label %bb4.i18, label %bb7.i, !dbg !1016

bb4.i18:                                          ; preds = %bb3.i
  %25 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1017
  %26 = zext i32 %33 to i64, !dbg !1017
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !1017
  %27 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, i32 2, !dbg !1018
  %28 = load %struct.stat** %27, align 8, !dbg !1018
  %29 = getelementptr inbounds %struct.stat* %28, i64 0, i32 1, !dbg !1018
  %30 = load i64* %29, align 8, !dbg !1018
  %31 = icmp eq i64 %30, 0, !dbg !1018
  br i1 %31, label %bb7, label %__get_sym_file.exit, !dbg !1018

bb7.i:                                            ; preds = %bb3.i
  %32 = add i32 %33, 1, !dbg !1015
  br label %bb8.i, !dbg !1015

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %33 = phi i32 [ %32, %bb7.i ], [ 0, %bb8.preheader.i ]
  %34 = icmp ugt i32 %20, %33, !dbg !1015
  br i1 %34, label %bb3.i, label %bb7, !dbg !1015

__get_sym_file.exit:                              ; preds = %bb4.i18
  %35 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, !dbg !1017
  %36 = icmp eq %struct.exe_disk_file_t* %35, null, !dbg !1012
  br i1 %36, label %bb7, label %bb6, !dbg !1012

bb6:                                              ; preds = %__get_sym_file.exit
  %37 = tail call i32 @utimes(i8* %path, %struct.timespec* %times) nounwind, !dbg !1019
  br label %bb13, !dbg !1019

bb7:                                              ; preds = %bb8.i, %bb4.i18, %bb5, %bb.i17, %__get_sym_file.exit
  %38 = icmp eq i8* %path, null, !dbg !1020
  br i1 %38, label %bb10, label %bb8, !dbg !1020

bb8:                                              ; preds = %bb7
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !1021
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !1022
  %39 = ptrtoint i8* %path to i64, !dbg !1024
  %40 = tail call i64 @klee_get_valuel(i64 %39) nounwind, !dbg !1024
  %41 = inttoptr i64 %40 to i8*, !dbg !1024
  tail call void @llvm.dbg.value(metadata !{i8* %41}, i64 0, metadata !344) nounwind, !dbg !1024
  %42 = icmp eq i8* %41, %path, !dbg !1025
  %43 = zext i1 %42 to i64, !dbg !1025
  tail call void @klee_assume(i64 %43) nounwind, !dbg !1025
  tail call void @llvm.dbg.value(metadata !{i8* %41}, i64 0, metadata !354) nounwind, !dbg !1023
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !1026
  br label %bb.i15, !dbg !1026

bb.i15:                                           ; preds = %bb6.i, %bb8
  %sc.0.i = phi i8* [ %41, %bb8 ], [ %sc.1.i, %bb6.i ]
  %44 = phi i32 [ 0, %bb8 ], [ %56, %bb6.i ]
  %tmp.i = add i32 %44, -1
  %45 = load i8* %sc.0.i, align 1, !dbg !1027
  %46 = and i32 %tmp.i, %44, !dbg !1028
  %47 = icmp eq i32 %46, 0, !dbg !1028
  br i1 %47, label %bb1.i16, label %bb5.i, !dbg !1028

bb1.i16:                                          ; preds = %bb.i15
  switch i8 %45, label %bb6.i [
    i8 0, label %bb2.i
    i8 47, label %bb4.i
  ]

bb2.i:                                            ; preds = %bb1.i16
  tail call void @llvm.dbg.value(metadata !{i8 %45}, i64 0, metadata !357) nounwind, !dbg !1027
  store i8 0, i8* %sc.0.i, align 1, !dbg !1029
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !1029
  br label %bb10, !dbg !1029

bb4.i:                                            ; preds = %bb1.i16
  store i8 47, i8* %sc.0.i, align 1, !dbg !1030
  %48 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1030
  br label %bb6.i, !dbg !1030

bb5.i:                                            ; preds = %bb.i15
  %49 = sext i8 %45 to i64, !dbg !1031
  %50 = tail call i64 @klee_get_valuel(i64 %49) nounwind, !dbg !1031
  %51 = trunc i64 %50 to i8, !dbg !1031
  %52 = icmp eq i8 %51, %45, !dbg !1032
  %53 = zext i1 %52 to i64, !dbg !1032
  tail call void @klee_assume(i64 %53) nounwind, !dbg !1032
  store i8 %51, i8* %sc.0.i, align 1, !dbg !1033
  %54 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1033
  %55 = icmp eq i8 %51, 0, !dbg !1034
  br i1 %55, label %bb10, label %bb6.i, !dbg !1034

bb6.i:                                            ; preds = %bb5.i, %bb4.i, %bb1.i16
  %sc.1.i = phi i8* [ %48, %bb4.i ], [ %54, %bb5.i ], [ %sc.0.i, %bb1.i16 ]
  %56 = add i32 %44, 1, !dbg !1026
  br label %bb.i15, !dbg !1026

bb10:                                             ; preds = %bb5.i, %bb2.i, %bb7
  %iftmp.32.0 = phi i8* [ null, %bb7 ], [ %path, %bb2.i ], [ %path, %bb5.i ]
  %57 = tail call i64 (i64, ...)* @syscall(i64 261, i64 %fd_addr.0, i8* %iftmp.32.0, %struct.timespec* %times) nounwind, !dbg !1020
  %58 = trunc i64 %57 to i32, !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i32 %58}, i64 0, metadata !394), !dbg !1020
  %59 = icmp eq i32 %58, -1, !dbg !1035
  br i1 %59, label %bb11, label %bb13, !dbg !1035

bb11:                                             ; preds = %bb10
  %60 = tail call i32* @__errno_location() nounwind readnone, !dbg !1036
  %61 = tail call i32 @klee_get_errno() nounwind, !dbg !1036
  store i32 %61, i32* %60, align 4, !dbg !1036
  br label %bb13, !dbg !1036

bb13:                                             ; preds = %bb10, %bb11, %bb6, %bb3, %bb1
  %.0 = phi i32 [ -1, %bb1 ], [ -1, %bb3 ], [ %37, %bb6 ], [ -1, %bb11 ], [ %58, %bb10 ]
  ret i32 %.0, !dbg !1005
}

define i32 @select(i32 %nfds, %struct.fd_set* %read, %struct.fd_set* %write, %struct.fd_set* %except, %struct.timespec* nocapture %timeout) nounwind {
entry:
  %in_read = alloca %struct.fd_set, align 8
  %in_write = alloca %struct.fd_set, align 8
  %in_except = alloca %struct.fd_set, align 8
  %os_read = alloca %struct.fd_set, align 8
  %os_write = alloca %struct.fd_set, align 8
  %os_except = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata !{i32 %nfds}, i64 0, metadata !404), !dbg !1037
  call void @llvm.dbg.value(metadata !{%struct.fd_set* %read}, i64 0, metadata !405), !dbg !1037
  call void @llvm.dbg.value(metadata !{%struct.fd_set* %write}, i64 0, metadata !406), !dbg !1037
  call void @llvm.dbg.value(metadata !{%struct.fd_set* %except}, i64 0, metadata !407), !dbg !1038
  call void @llvm.dbg.value(metadata !{%struct.timespec* %timeout}, i64 0, metadata !408), !dbg !1038
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %in_read}, metadata !409), !dbg !1039
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %in_write}, metadata !411), !dbg !1039
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %in_except}, metadata !412), !dbg !1039
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %os_read}, metadata !413), !dbg !1039
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %os_write}, metadata !414), !dbg !1039
  call void @llvm.dbg.declare(metadata !{%struct.fd_set* %os_except}, metadata !415), !dbg !1039
  call void @llvm.dbg.value(metadata !624, i64 0, metadata !417), !dbg !1040
  call void @llvm.dbg.value(metadata !624, i64 0, metadata !418), !dbg !1040
  %0 = icmp eq %struct.fd_set* %read, null, !dbg !1041
  %in_read3 = bitcast %struct.fd_set* %in_read to i8*, !dbg !1042
  br i1 %0, label %bb2, label %bb, !dbg !1041

bb:                                               ; preds = %entry
  %1 = bitcast %struct.fd_set* %read to i8*, !dbg !1043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %in_read3, i8* %1, i64 128, i32 8, i1 false), !dbg !1043
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 128, i32 8, i1 false), !dbg !1044
  br label %bb4, !dbg !1044

bb2:                                              ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* %in_read3, i8 0, i64 128, i32 8, i1 false), !dbg !1042
  br label %bb4, !dbg !1042

bb4:                                              ; preds = %bb2, %bb
  %2 = icmp eq %struct.fd_set* %write, null, !dbg !1045
  %in_write8 = bitcast %struct.fd_set* %in_write to i8*, !dbg !1046
  br i1 %2, label %bb7, label %bb5, !dbg !1045

bb5:                                              ; preds = %bb4
  %3 = bitcast %struct.fd_set* %write to i8*, !dbg !1047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %in_write8, i8* %3, i64 128, i32 8, i1 false), !dbg !1047
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 128, i32 8, i1 false), !dbg !1048
  br label %bb9, !dbg !1048

bb7:                                              ; preds = %bb4
  call void @llvm.memset.p0i8.i64(i8* %in_write8, i8 0, i64 128, i32 8, i1 false), !dbg !1046
  br label %bb9, !dbg !1046

bb9:                                              ; preds = %bb7, %bb5
  %4 = icmp eq %struct.fd_set* %except, null, !dbg !1049
  %in_except13 = bitcast %struct.fd_set* %in_except to i8*, !dbg !1050
  br i1 %4, label %bb12, label %bb10, !dbg !1049

bb10:                                             ; preds = %bb9
  %5 = bitcast %struct.fd_set* %except to i8*, !dbg !1051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %in_except13, i8* %5, i64 128, i32 8, i1 false), !dbg !1051
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 128, i32 8, i1 false), !dbg !1052
  br label %bb14, !dbg !1052

bb12:                                             ; preds = %bb9
  call void @llvm.memset.p0i8.i64(i8* %in_except13, i8 0, i64 128, i32 8, i1 false), !dbg !1050
  br label %bb14, !dbg !1050

bb14:                                             ; preds = %bb12, %bb10
  %os_read15 = bitcast %struct.fd_set* %os_read to i8*, !dbg !1053
  call void @llvm.memset.p0i8.i64(i8* %os_read15, i8 0, i64 128, i32 8, i1 false), !dbg !1053
  %os_write16 = bitcast %struct.fd_set* %os_write to i8*, !dbg !1054
  call void @llvm.memset.p0i8.i64(i8* %os_write16, i8 0, i64 128, i32 8, i1 false), !dbg !1054
  %os_except17 = bitcast %struct.fd_set* %os_except to i8*, !dbg !1055
  call void @llvm.memset.p0i8.i64(i8* %os_except17, i8 0, i64 128, i32 8, i1 false), !dbg !1055
  call void @llvm.dbg.value(metadata !624, i64 0, metadata !416), !dbg !1056
  br label %bb40, !dbg !1056

bb18:                                             ; preds = %bb40
  %6 = sdiv i32 %i.0, 64, !dbg !1057
  %7 = sext i32 %6 to i64, !dbg !1057
  %8 = getelementptr inbounds %struct.fd_set* %in_read, i64 0, i32 0, i64 %7, !dbg !1057
  %9 = load i64* %8, align 8, !dbg !1057
  %10 = and i32 %i.0, 63
  %11 = shl i32 1, %10, !dbg !1057
  %12 = sext i32 %11 to i64, !dbg !1057
  %13 = and i64 %9, %12, !dbg !1057
  %14 = icmp eq i64 %13, 0, !dbg !1057
  br i1 %14, label %bb19, label %bb21, !dbg !1057

bb19:                                             ; preds = %bb18
  %15 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %7, !dbg !1057
  %16 = load i64* %15, align 8, !dbg !1057
  %17 = and i64 %16, %12, !dbg !1057
  %18 = icmp eq i64 %17, 0, !dbg !1057
  br i1 %18, label %bb20, label %bb21, !dbg !1057

bb20:                                             ; preds = %bb19
  %19 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %7, !dbg !1057
  %20 = load i64* %19, align 8, !dbg !1057
  %21 = and i64 %20, %12, !dbg !1057
  %22 = icmp eq i64 %21, 0, !dbg !1057
  br i1 %22, label %bb39, label %bb21, !dbg !1057

bb21:                                             ; preds = %bb20, %bb19, %bb18
  %23 = icmp ult i32 %i.0, 32, !dbg !1058
  br i1 %23, label %bb.i, label %bb22, !dbg !1058

bb.i:                                             ; preds = %bb21
  %24 = load i32* %scevgep83, align 4, !dbg !1060
  %25 = and i32 %24, 1
  %toBool.i = icmp eq i32 %25, 0, !dbg !1060
  %26 = icmp eq %struct.exe_file_t* %scevgep80, null, !dbg !1061
  %or.cond = or i1 %toBool.i, %26
  br i1 %or.cond, label %bb22, label %bb23, !dbg !1060

bb22:                                             ; preds = %bb21, %bb.i
  tail call void @llvm.dbg.value(metadata !1062, i64 0, metadata !272), !dbg !1063
  %27 = call i32* @__errno_location() nounwind readnone, !dbg !1064
  store i32 9, i32* %27, align 4, !dbg !1064
  br label %bb61, !dbg !1065

bb23:                                             ; preds = %bb.i
  %28 = load %struct.exe_disk_file_t** %scevgep82, align 8, !dbg !1066
  %29 = icmp eq %struct.exe_disk_file_t* %28, null, !dbg !1066
  %30 = icmp ne i64 %13, 0, !dbg !1067
  br i1 %29, label %bb31, label %bb24, !dbg !1066

bb24:                                             ; preds = %bb23
  br i1 %30, label %bb25, label %bb26, !dbg !1067

bb25:                                             ; preds = %bb24
  %31 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %7, !dbg !1067
  %32 = load i64* %31, align 8, !dbg !1067
  %33 = or i64 %32, %12, !dbg !1067
  store i64 %33, i64* %31, align 8, !dbg !1067
  br label %bb26, !dbg !1067

bb26:                                             ; preds = %bb24, %bb25
  %34 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %7, !dbg !1068
  %35 = load i64* %34, align 8, !dbg !1068
  %36 = and i64 %35, %12, !dbg !1068
  %37 = icmp eq i64 %36, 0, !dbg !1068
  br i1 %37, label %bb28, label %bb27, !dbg !1068

bb27:                                             ; preds = %bb26
  %38 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %7, !dbg !1068
  %39 = load i64* %38, align 8, !dbg !1068
  %40 = or i64 %39, %12, !dbg !1068
  store i64 %40, i64* %38, align 8, !dbg !1068
  br label %bb28, !dbg !1068

bb28:                                             ; preds = %bb26, %bb27
  %41 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %7, !dbg !1069
  %42 = load i64* %41, align 8, !dbg !1069
  %43 = and i64 %42, %12, !dbg !1069
  %44 = icmp eq i64 %43, 0, !dbg !1069
  br i1 %44, label %bb30, label %bb29, !dbg !1069

bb29:                                             ; preds = %bb28
  %45 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %7, !dbg !1069
  %46 = load i64* %45, align 8, !dbg !1069
  %47 = or i64 %46, %12, !dbg !1069
  store i64 %47, i64* %45, align 8, !dbg !1069
  br label %bb30, !dbg !1069

bb30:                                             ; preds = %bb28, %bb29
  %48 = add nsw i32 %count.1, 1, !dbg !1070
  br label %bb39, !dbg !1070

bb31:                                             ; preds = %bb23
  br i1 %30, label %bb32, label %bb33, !dbg !1071

bb32:                                             ; preds = %bb31
  %49 = load i32* %scevgep8081, align 8, !dbg !1071
  %50 = sdiv i32 %49, 64, !dbg !1071
  %51 = sext i32 %50 to i64, !dbg !1071
  %52 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %51, !dbg !1071
  %53 = load i64* %52, align 8, !dbg !1071
  %54 = and i32 %49, 63
  %55 = shl i32 1, %54, !dbg !1071
  %56 = sext i32 %55 to i64, !dbg !1071
  %57 = or i64 %56, %53, !dbg !1071
  store i64 %57, i64* %52, align 8, !dbg !1071
  br label %bb33, !dbg !1071

bb33:                                             ; preds = %bb31, %bb32
  %58 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %7, !dbg !1072
  %59 = load i64* %58, align 8, !dbg !1072
  %60 = and i64 %59, %12, !dbg !1072
  %61 = icmp eq i64 %60, 0, !dbg !1072
  br i1 %61, label %bb35, label %bb34, !dbg !1072

bb34:                                             ; preds = %bb33
  %62 = load i32* %scevgep8081, align 8, !dbg !1072
  %63 = sdiv i32 %62, 64, !dbg !1072
  %64 = sext i32 %63 to i64, !dbg !1072
  %65 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %64, !dbg !1072
  %66 = load i64* %65, align 8, !dbg !1072
  %67 = and i32 %62, 63
  %68 = shl i32 1, %67, !dbg !1072
  %69 = sext i32 %68 to i64, !dbg !1072
  %70 = or i64 %69, %66, !dbg !1072
  store i64 %70, i64* %65, align 8, !dbg !1072
  br label %bb35, !dbg !1072

bb35:                                             ; preds = %bb33, %bb34
  %71 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %7, !dbg !1073
  %72 = load i64* %71, align 8, !dbg !1073
  %73 = and i64 %72, %12, !dbg !1073
  %74 = icmp eq i64 %73, 0, !dbg !1073
  %.pre = load i32* %scevgep8081, align 8
  br i1 %74, label %bb37, label %bb36, !dbg !1073

bb36:                                             ; preds = %bb35
  %75 = sdiv i32 %.pre, 64, !dbg !1073
  %76 = sext i32 %75 to i64, !dbg !1073
  %77 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %76, !dbg !1073
  %78 = load i64* %77, align 8, !dbg !1073
  %79 = and i32 %.pre, 63
  %80 = shl i32 1, %79, !dbg !1073
  %81 = sext i32 %80 to i64, !dbg !1073
  %82 = or i64 %81, %78, !dbg !1073
  store i64 %82, i64* %77, align 8, !dbg !1073
  br label %bb37, !dbg !1073

bb37:                                             ; preds = %bb35, %bb36
  %83 = add nsw i32 %.pre, 1, !dbg !1074
  %84 = icmp slt i32 %.pre, %os_nfds.1, !dbg !1074
  %os_nfds.1. = select i1 %84, i32 %os_nfds.1, i32 %83
  br label %bb39

bb39:                                             ; preds = %bb37, %bb20, %bb30
  %count.0 = phi i32 [ %48, %bb30 ], [ %count.1, %bb20 ], [ %count.1, %bb37 ]
  %os_nfds.0 = phi i32 [ %os_nfds.1, %bb30 ], [ %os_nfds.1, %bb20 ], [ %os_nfds.1., %bb37 ]
  %indvar.next78 = add i64 %indvar77, 1
  br label %bb40, !dbg !1056

bb40:                                             ; preds = %bb39, %bb14
  %indvar77 = phi i64 [ %indvar.next78, %bb39 ], [ 0, %bb14 ]
  %count.1 = phi i32 [ %count.0, %bb39 ], [ 0, %bb14 ]
  %os_nfds.1 = phi i32 [ %os_nfds.0, %bb39 ], [ 0, %bb14 ]
  %i.0 = trunc i64 %indvar77 to i32
  %scevgep80 = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar77
  %scevgep8081 = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar77, i32 0
  %scevgep82 = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar77, i32 3
  %scevgep83 = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar77, i32 1
  %85 = icmp slt i32 %i.0, %nfds, !dbg !1056
  br i1 %85, label %bb18, label %bb41, !dbg !1056

bb41:                                             ; preds = %bb40
  %86 = icmp sgt i32 %os_nfds.1, 0, !dbg !1075
  br i1 %86, label %bb42, label %bb61, !dbg !1075

bb42:                                             ; preds = %bb41
  call void @llvm.dbg.declare(metadata !{%struct.timespec* %tv}, metadata !421), !dbg !1076
  %87 = getelementptr inbounds %struct.timespec* %tv, i64 0, i32 0, !dbg !1076
  store i64 0, i64* %87, align 8, !dbg !1076
  %88 = getelementptr inbounds %struct.timespec* %tv, i64 0, i32 1, !dbg !1076
  store i64 0, i64* %88, align 8, !dbg !1076
  %89 = call i64 (i64, ...)* @syscall(i64 23, i32 %os_nfds.1, %struct.fd_set* %os_read, %struct.fd_set* %os_write, %struct.fd_set* %os_except, %struct.timespec* %tv) nounwind, !dbg !1077
  %90 = trunc i64 %89 to i32, !dbg !1077
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !423), !dbg !1077
  %91 = icmp eq i32 %90, -1, !dbg !1078
  br i1 %91, label %bb43, label %bb45, !dbg !1078

bb43:                                             ; preds = %bb42
  %92 = icmp eq i32 %count.1, 0, !dbg !1079
  br i1 %92, label %bb44, label %bb61, !dbg !1079

bb44:                                             ; preds = %bb43
  %93 = call i32* @__errno_location() nounwind readnone, !dbg !1080
  %94 = call i32 @klee_get_errno() nounwind, !dbg !1080
  store i32 %94, i32* %93, align 4, !dbg !1080
  br label %bb61, !dbg !1081

bb45:                                             ; preds = %bb42
  %95 = add nsw i32 %90, %count.1, !dbg !1082
  call void @llvm.dbg.value(metadata !{i32 %95}, i64 0, metadata !417), !dbg !1082
  call void @llvm.dbg.value(metadata !624, i64 0, metadata !416), !dbg !1083
  %96 = icmp sgt i32 %nfds, 0, !dbg !1083
  br i1 %96, label %bb46.lr.ph, label %bb61, !dbg !1083

bb46.lr.ph:                                       ; preds = %bb45
  %tmp = zext i32 %nfds to i64
  br label %bb46

bb46:                                             ; preds = %bb58, %bb46.lr.ph
  %indvar = phi i64 [ 0, %bb46.lr.ph ], [ %indvar.next, %bb58 ]
  %i.168 = trunc i64 %indvar to i32
  %scevgep = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar
  %scevgep72 = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 0
  %scevgep73 = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 3
  %97 = icmp ult i32 %i.168, 32, !dbg !1084
  br i1 %97, label %bb.i64, label %bb58, !dbg !1084

bb.i64:                                           ; preds = %bb46
  %scevgep74 = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 1
  %98 = load i32* %scevgep74, align 4, !dbg !1086
  %99 = and i32 %98, 1
  %toBool.i63 = icmp eq i32 %99, 0, !dbg !1086
  %100 = icmp eq %struct.exe_file_t* %scevgep, null, !dbg !1087
  %or.cond84 = or i1 %toBool.i63, %100
  br i1 %or.cond84, label %bb58, label %bb48, !dbg !1086

bb48:                                             ; preds = %bb.i64
  %101 = load %struct.exe_disk_file_t** %scevgep73, align 8, !dbg !1087
  %102 = icmp eq %struct.exe_disk_file_t* %101, null, !dbg !1087
  br i1 %102, label %bb49, label %bb58, !dbg !1087

bb49:                                             ; preds = %bb48
  br i1 %0, label %bb52, label %bb50, !dbg !1088

bb50:                                             ; preds = %bb49
  %103 = load i32* %scevgep72, align 8, !dbg !1088
  %104 = sdiv i32 %103, 64, !dbg !1088
  %105 = sext i32 %104 to i64, !dbg !1088
  %106 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %105, !dbg !1088
  %107 = load i64* %106, align 8, !dbg !1088
  %108 = and i32 %103, 63
  %109 = shl i32 1, %108, !dbg !1088
  %110 = sext i32 %109 to i64, !dbg !1088
  %111 = and i64 %110, %107, !dbg !1088
  %112 = icmp eq i64 %111, 0, !dbg !1088
  br i1 %112, label %bb52, label %bb51, !dbg !1088

bb51:                                             ; preds = %bb50
  %113 = sdiv i32 %i.168, 64, !dbg !1088
  %114 = sext i32 %113 to i64, !dbg !1088
  %115 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %114, !dbg !1088
  %116 = load i64* %115, align 8, !dbg !1088
  %117 = and i32 %i.168, 63
  %118 = shl i32 1, %117, !dbg !1088
  %119 = sext i32 %118 to i64, !dbg !1088
  %120 = or i64 %116, %119, !dbg !1088
  store i64 %120, i64* %115, align 8, !dbg !1088
  br label %bb52, !dbg !1088

bb52:                                             ; preds = %bb50, %bb49, %bb51
  br i1 %2, label %bb55, label %bb53, !dbg !1089

bb53:                                             ; preds = %bb52
  %121 = load i32* %scevgep72, align 8, !dbg !1089
  %122 = sdiv i32 %121, 64, !dbg !1089
  %123 = sext i32 %122 to i64, !dbg !1089
  %124 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %123, !dbg !1089
  %125 = load i64* %124, align 8, !dbg !1089
  %126 = and i32 %121, 63
  %127 = shl i32 1, %126, !dbg !1089
  %128 = sext i32 %127 to i64, !dbg !1089
  %129 = and i64 %128, %125, !dbg !1089
  %130 = icmp eq i64 %129, 0, !dbg !1089
  br i1 %130, label %bb55, label %bb54, !dbg !1089

bb54:                                             ; preds = %bb53
  %131 = sdiv i32 %i.168, 64, !dbg !1089
  %132 = sext i32 %131 to i64, !dbg !1089
  %133 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %132, !dbg !1089
  %134 = load i64* %133, align 8, !dbg !1089
  %135 = and i32 %i.168, 63
  %136 = shl i32 1, %135, !dbg !1089
  %137 = sext i32 %136 to i64, !dbg !1089
  %138 = or i64 %134, %137, !dbg !1089
  store i64 %138, i64* %133, align 8, !dbg !1089
  br label %bb55, !dbg !1089

bb55:                                             ; preds = %bb53, %bb52, %bb54
  br i1 %4, label %bb58, label %bb56, !dbg !1090

bb56:                                             ; preds = %bb55
  %139 = load i32* %scevgep72, align 8, !dbg !1090
  %140 = sdiv i32 %139, 64, !dbg !1090
  %141 = sext i32 %140 to i64, !dbg !1090
  %142 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %141, !dbg !1090
  %143 = load i64* %142, align 8, !dbg !1090
  %144 = and i32 %139, 63
  %145 = shl i32 1, %144, !dbg !1090
  %146 = sext i32 %145 to i64, !dbg !1090
  %147 = and i64 %146, %143, !dbg !1090
  %148 = icmp eq i64 %147, 0, !dbg !1090
  br i1 %148, label %bb58, label %bb57, !dbg !1090

bb57:                                             ; preds = %bb56
  %149 = sdiv i32 %i.168, 64, !dbg !1090
  %150 = sext i32 %149 to i64, !dbg !1090
  %151 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %150, !dbg !1090
  %152 = load i64* %151, align 8, !dbg !1090
  %153 = and i32 %i.168, 63
  %154 = shl i32 1, %153, !dbg !1090
  %155 = sext i32 %154 to i64, !dbg !1090
  %156 = or i64 %152, %155, !dbg !1090
  store i64 %156, i64* %151, align 8, !dbg !1090
  br label %bb58, !dbg !1090

bb58:                                             ; preds = %bb46, %bb.i64, %bb56, %bb55, %bb57, %bb48
  %indvar.next = add i64 %indvar, 1
  %exitcond = icmp eq i64 %indvar.next, %tmp
  br i1 %exitcond, label %bb61, label %bb46, !dbg !1083

bb61:                                             ; preds = %bb45, %bb58, %bb41, %bb43, %bb44, %bb22
  %.0 = phi i32 [ -1, %bb22 ], [ -1, %bb44 ], [ %count.1, %bb43 ], [ %count.1, %bb41 ], [ %95, %bb58 ], [ %95, %bb45 ]
  ret i32 %.0, !dbg !1065
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define i32 @close(i32 %fd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !426), !dbg !1091
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !429), !dbg !1092
  %0 = load i32* @n_calls.4832, align 4, !dbg !1093
  %1 = add nsw i32 %0, 1, !dbg !1093
  store i32 %1, i32* @n_calls.4832, align 4, !dbg !1093
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1094
  %2 = icmp ult i32 %fd, 32, !dbg !1096
  br i1 %2, label %bb.i, label %bb, !dbg !1096

bb.i:                                             ; preds = %entry
  %3 = sext i32 %fd to i64, !dbg !1097
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1097
  %4 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 1, !dbg !1098
  %5 = load i32* %4, align 4, !dbg !1098
  %6 = and i32 %5, 1
  %toBool.i = icmp eq i32 %6, 0, !dbg !1098
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1098

__get_file.exit:                                  ; preds = %bb.i
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, !dbg !1097
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !427), !dbg !1095
  %8 = icmp eq %struct.exe_file_t* %7, null, !dbg !1099
  br i1 %8, label %bb, label %bb1, !dbg !1099

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !1100
  store i32 9, i32* %9, align 4, !dbg !1100
  br label %bb5, !dbg !1101

bb1:                                              ; preds = %__get_file.exit
  %10 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1102
  %11 = icmp eq i32 %10, 0, !dbg !1102
  br i1 %11, label %bb4, label %bb2, !dbg !1102

bb2:                                              ; preds = %bb1
  %12 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !1102
  %13 = load i32* %12, align 4, !dbg !1102
  %14 = icmp eq i32 %13, %1, !dbg !1102
  br i1 %14, label %bb3, label %bb4, !dbg !1102

bb3:                                              ; preds = %bb2
  %15 = add i32 %10, -1, !dbg !1103
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1103
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !1104
  store i32 5, i32* %16, align 4, !dbg !1104
  br label %bb5, !dbg !1105

bb4:                                              ; preds = %bb1, %bb2
  %17 = bitcast %struct.exe_file_t* %7 to i8*, !dbg !1106
  tail call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 24, i32 8, i1 false), !dbg !1106
  br label %bb5, !dbg !1107

bb5:                                              ; preds = %bb4, %bb3, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb3 ], [ 0, %bb4 ]
  ret i32 %.0, !dbg !1101
}

define i32 @dup2(i32 %oldfd, i32 %newfd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %oldfd}, i64 0, metadata !430), !dbg !1108
  tail call void @llvm.dbg.value(metadata !{i32 %newfd}, i64 0, metadata !431), !dbg !1108
  tail call void @llvm.dbg.value(metadata !{i32 %oldfd}, i64 0, metadata !272), !dbg !1109
  %0 = icmp ult i32 %oldfd, 32, !dbg !1111
  br i1 %0, label %bb.i, label %bb, !dbg !1111

bb.i:                                             ; preds = %entry
  %1 = sext i32 %oldfd to i64, !dbg !1112
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1112
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1113
  %3 = load i32* %2, align 4, !dbg !1113
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1113
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1113

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1112
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !432), !dbg !1110
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1114
  %7 = icmp ugt i32 %newfd, 31, !dbg !1114
  %8 = or i1 %6, %7, !dbg !1114
  br i1 %8, label %bb, label %bb3, !dbg !1114

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !1115
  store i32 9, i32* %9, align 4, !dbg !1115
  br label %bb7, !dbg !1116

bb3:                                              ; preds = %__get_file.exit
  %10 = sext i32 %newfd to i64, !dbg !1117
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !434), !dbg !1117
  %11 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, i32 1, !dbg !1118
  %12 = load i32* %11, align 4, !dbg !1118
  %13 = and i32 %12, 1
  %toBool4 = icmp eq i32 %13, 0, !dbg !1118
  br i1 %toBool4, label %bb6, label %bb5, !dbg !1118

bb5:                                              ; preds = %bb3
  tail call void @llvm.dbg.value(metadata !{i32 %newfd}, i64 0, metadata !426) nounwind, !dbg !1119
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !429) nounwind, !dbg !1120
  %14 = load i32* @n_calls.4832, align 4, !dbg !1121
  %15 = add nsw i32 %14, 1, !dbg !1121
  store i32 %15, i32* @n_calls.4832, align 4, !dbg !1121
  tail call void @llvm.dbg.value(metadata !{i32 %newfd}, i64 0, metadata !272) nounwind, !dbg !1122
  %16 = icmp ult i32 %newfd, 32, !dbg !1124
  br i1 %16, label %__get_file.exit.i, label %bb.i9, !dbg !1124

__get_file.exit.i:                                ; preds = %bb5
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, !dbg !1125
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %17}, i64 0, metadata !427) nounwind, !dbg !1123
  %18 = icmp eq %struct.exe_file_t* %17, null, !dbg !1126
  br i1 %18, label %bb.i9, label %bb1.i10, !dbg !1126

bb.i9:                                            ; preds = %__get_file.exit.i, %bb5
  %19 = tail call i32* @__errno_location() nounwind readnone, !dbg !1127
  store i32 9, i32* %19, align 4, !dbg !1127
  br label %bb6, !dbg !1128

bb1.i10:                                          ; preds = %__get_file.exit.i
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1129
  %21 = icmp eq i32 %20, 0, !dbg !1129
  br i1 %21, label %bb4.i, label %bb2.i, !dbg !1129

bb2.i:                                            ; preds = %bb1.i10
  %22 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !1129
  %23 = load i32* %22, align 4, !dbg !1129
  %24 = icmp eq i32 %23, %15, !dbg !1129
  br i1 %24, label %bb3.i, label %bb4.i, !dbg !1129

bb3.i:                                            ; preds = %bb2.i
  %25 = add i32 %20, -1, !dbg !1130
  store i32 %25, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1130
  %26 = tail call i32* @__errno_location() nounwind readnone, !dbg !1131
  store i32 5, i32* %26, align 4, !dbg !1131
  br label %bb6, !dbg !1132

bb4.i:                                            ; preds = %bb2.i, %bb1.i10
  %27 = bitcast %struct.exe_file_t* %17 to i8*, !dbg !1133
  tail call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 24, i32 8, i1 false) nounwind, !dbg !1133
  br label %bb6, !dbg !1134

bb6:                                              ; preds = %bb4.i, %bb3.i, %bb.i9, %bb3
  %28 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, i32 0, !dbg !1135
  %29 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1135
  %30 = load i32* %29, align 8, !dbg !1135
  store i32 %30, i32* %28, align 8, !dbg !1135
  %31 = load i32* %2, align 4, !dbg !1135
  %32 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, i32 2, !dbg !1135
  %33 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1135
  %34 = load i64* %33, align 8, !dbg !1135
  store i64 %34, i64* %32, align 8, !dbg !1135
  %35 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, i32 3, !dbg !1135
  %36 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1135
  %37 = load %struct.exe_disk_file_t** %36, align 8, !dbg !1135
  store %struct.exe_disk_file_t* %37, %struct.exe_disk_file_t** %35, align 8, !dbg !1135
  %38 = and i32 %31, -3, !dbg !1136
  store i32 %38, i32* %11, align 4, !dbg !1136
  br label %bb7, !dbg !1137

bb7:                                              ; preds = %bb6, %bb
  %.0 = phi i32 [ -1, %bb ], [ %newfd, %bb6 ]
  ret i32 %.0, !dbg !1116
}

define i32 @dup(i32 %oldfd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %oldfd}, i64 0, metadata !436), !dbg !1138
  tail call void @llvm.dbg.value(metadata !{i32 %oldfd}, i64 0, metadata !272), !dbg !1139
  %0 = icmp ult i32 %oldfd, 32, !dbg !1141
  br i1 %0, label %bb.i, label %bb, !dbg !1141

bb.i:                                             ; preds = %entry
  %1 = sext i32 %oldfd to i64, !dbg !1142
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1142
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1143
  %3 = load i32* %2, align 4, !dbg !1143
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1143
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1143

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1142
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !437), !dbg !1140
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1144
  br i1 %6, label %bb, label %bb4, !dbg !1144

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1145
  store i32 9, i32* %7, align 4, !dbg !1145
  br label %bb8, !dbg !1146

bb2:                                              ; preds = %bb4
  %scevgep = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 1
  %8 = load i32* %scevgep, align 4, !dbg !1147
  %9 = and i32 %8, 1, !dbg !1147
  %10 = icmp eq i32 %9, 0, !dbg !1147
  br i1 %10, label %bb7, label %bb3, !dbg !1147

bb3:                                              ; preds = %bb2
  %indvar.next = add i64 %indvar, 1
  br label %bb4, !dbg !1148

bb4:                                              ; preds = %__get_file.exit, %bb3
  %indvar = phi i64 [ %indvar.next, %bb3 ], [ 0, %__get_file.exit ]
  %fd.0 = trunc i64 %indvar to i32
  %11 = icmp slt i32 %fd.0, 32, !dbg !1148
  br i1 %11, label %bb2, label %bb5, !dbg !1148

bb5:                                              ; preds = %bb4
  %12 = icmp eq i32 %fd.0, 32, !dbg !1149
  br i1 %12, label %bb6, label %bb7, !dbg !1149

bb6:                                              ; preds = %bb5
  %13 = tail call i32* @__errno_location() nounwind readnone, !dbg !1150
  store i32 24, i32* %13, align 4, !dbg !1150
  br label %bb8, !dbg !1151

bb7:                                              ; preds = %bb2, %bb5
  %14 = tail call i32 @dup2(i32 %oldfd, i32 %fd.0) nounwind, !dbg !1152
  br label %bb8, !dbg !1152

bb8:                                              ; preds = %bb7, %bb6, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb6 ], [ %14, %bb7 ]
  ret i32 %.0, !dbg !1146
}

define i32 @fcntl(i32 %fd, i32 %cmd, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !441), !dbg !1153
  call void @llvm.dbg.value(metadata !{i32 %cmd}, i64 0, metadata !442), !dbg !1153
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !445), !dbg !1154
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1155
  %0 = icmp ult i32 %fd, 32, !dbg !1157
  br i1 %0, label %bb.i, label %bb, !dbg !1157

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1158
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1158
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1159
  %3 = load i32* %2, align 4, !dbg !1159
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1159
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1159

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1158
  call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !443), !dbg !1156
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1160
  br i1 %6, label %bb, label %bb1, !dbg !1160

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !1161
  store i32 9, i32* %7, align 4, !dbg !1161
  br label %bb35, !dbg !1162

bb1:                                              ; preds = %__get_file.exit
  switch i32 %cmd, label %bb8 [
    i32 3, label %bb21
    i32 1, label %bb21
    i32 11, label %bb21
    i32 9, label %bb21
  ]

bb8:                                              ; preds = %bb1
  %cmd.off = add i32 %cmd, -1025
  %8 = icmp ult i32 %cmd.off, 2
  br i1 %8, label %bb21, label %bb13, !dbg !1163

bb13:                                             ; preds = %bb8
  %ap1415 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1164
  call void @llvm.va_start(i8* %ap1415), !dbg !1164
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !1165
  %10 = load i32* %9, align 8, !dbg !1165
  %11 = icmp ugt i32 %10, 47, !dbg !1165
  br i1 %11, label %bb17, label %bb16, !dbg !1165

bb16:                                             ; preds = %bb13
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !1165
  %13 = load i8** %12, align 8, !dbg !1165
  %tmp = zext i32 %10 to i64
  %14 = ptrtoint i8* %13 to i64, !dbg !1165
  %15 = add i64 %14, %tmp, !dbg !1165
  %16 = inttoptr i64 %15 to i8*, !dbg !1165
  %17 = add i32 %10, 8, !dbg !1165
  store i32 %17, i32* %9, align 8, !dbg !1165
  br label %bb18, !dbg !1165

bb17:                                             ; preds = %bb13
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !1165
  %19 = load i8** %18, align 8, !dbg !1165
  %20 = getelementptr inbounds i8* %19, i64 8, !dbg !1165
  store i8* %20, i8** %18, align 8, !dbg !1165
  br label %bb18, !dbg !1165

bb18:                                             ; preds = %bb17, %bb16
  %addr.52.0 = phi i8* [ %19, %bb17 ], [ %16, %bb16 ]
  %21 = bitcast i8* %addr.52.0 to i32*, !dbg !1165
  %22 = load i32* %21, align 4, !dbg !1165
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !458), !dbg !1165
  call void @llvm.va_end(i8* %ap1415), !dbg !1166
  br label %bb21, !dbg !1166

bb21:                                             ; preds = %bb1, %bb1, %bb1, %bb1, %bb8, %bb18
  %arg.0 = phi i32 [ %22, %bb18 ], [ 0, %bb1 ], [ 0, %bb1 ], [ 0, %bb8 ], [ 0, %bb1 ], [ 0, %bb1 ]
  %23 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1167
  %24 = load %struct.exe_disk_file_t** %23, align 8, !dbg !1167
  %25 = icmp eq %struct.exe_disk_file_t* %24, null, !dbg !1167
  br i1 %25, label %bb32, label %bb22, !dbg !1167

bb22:                                             ; preds = %bb21
  switch i32 %cmd, label %bb31 [
    i32 1, label %bb23
    i32 2, label %bb26
    i32 3, label %bb35
  ], !dbg !1168

bb23:                                             ; preds = %bb22
  call void @llvm.dbg.value(metadata !624, i64 0, metadata !459), !dbg !1169
  %26 = load i32* %2, align 4, !dbg !1170
  call void @llvm.dbg.value(metadata !1171, i64 0, metadata !459), !dbg !1172
  %27 = lshr i32 %26, 1
  %.lobit = and i32 %27, 1
  br label %bb35

bb26:                                             ; preds = %bb22
  %28 = load i32* %2, align 4, !dbg !1173
  %29 = and i32 %28, -3, !dbg !1173
  store i32 %29, i32* %2, align 4, !dbg !1173
  %30 = and i32 %arg.0, 1
  %toBool27 = icmp eq i32 %30, 0, !dbg !1174
  br i1 %toBool27, label %bb35, label %bb28, !dbg !1174

bb28:                                             ; preds = %bb26
  %31 = or i32 %28, 2, !dbg !1175
  store i32 %31, i32* %2, align 4, !dbg !1175
  br label %bb35, !dbg !1175

bb31:                                             ; preds = %bb22
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !1176
  %32 = call i32* @__errno_location() nounwind readnone, !dbg !1177
  store i32 22, i32* %32, align 4, !dbg !1177
  br label %bb35, !dbg !1178

bb32:                                             ; preds = %bb21
  %33 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1179
  %34 = load i32* %33, align 8, !dbg !1179
  %35 = call i64 (i64, ...)* @syscall(i64 72, i32 %34, i32 %cmd, i32 %arg.0) nounwind, !dbg !1179
  %36 = trunc i64 %35 to i32, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !461), !dbg !1179
  %37 = icmp eq i32 %36, -1, !dbg !1180
  br i1 %37, label %bb33, label %bb35, !dbg !1180

bb33:                                             ; preds = %bb32
  %38 = call i32* @__errno_location() nounwind readnone, !dbg !1181
  %39 = call i32 @klee_get_errno() nounwind, !dbg !1181
  store i32 %39, i32* %38, align 4, !dbg !1181
  br label %bb35, !dbg !1181

bb35:                                             ; preds = %bb32, %bb33, %bb22, %bb28, %bb26, %bb23, %bb31, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb31 ], [ %.lobit, %bb23 ], [ 0, %bb26 ], [ 0, %bb28 ], [ 0, %bb22 ], [ -1, %bb33 ], [ %36, %bb32 ]
  ret i32 %.0, !dbg !1162
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

define i32 @ioctl(i32 %fd, i64 %request, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !463), !dbg !1182
  call void @llvm.dbg.value(metadata !{i64 %request}, i64 0, metadata !464), !dbg !1182
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !467), !dbg !1183
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1184
  %0 = icmp ult i32 %fd, 32, !dbg !1186
  br i1 %0, label %bb.i, label %bb, !dbg !1186

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1187
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1187
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1188
  %3 = load i32* %2, align 4, !dbg !1188
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1188
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1188

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1187
  call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !465), !dbg !1185
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1189
  br i1 %6, label %bb, label %bb1, !dbg !1189

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !1190
  store i32 9, i32* %7, align 4, !dbg !1190
  br label %bb39, !dbg !1191

bb1:                                              ; preds = %__get_file.exit
  %ap23 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1192
  call void @llvm.va_start(i8* %ap23), !dbg !1192
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !1193
  %9 = load i32* %8, align 8, !dbg !1193
  %10 = icmp ugt i32 %9, 47, !dbg !1193
  br i1 %10, label %bb5, label %bb4, !dbg !1193

bb4:                                              ; preds = %bb1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !1193
  %12 = load i8** %11, align 8, !dbg !1193
  %tmp = zext i32 %9 to i64
  %13 = ptrtoint i8* %12 to i64, !dbg !1193
  %14 = add i64 %13, %tmp, !dbg !1193
  %15 = inttoptr i64 %14 to i8*, !dbg !1193
  %16 = add i32 %9, 8, !dbg !1193
  store i32 %16, i32* %8, align 8, !dbg !1193
  br label %bb6, !dbg !1193

bb5:                                              ; preds = %bb1
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !1193
  %18 = load i8** %17, align 8, !dbg !1193
  %19 = getelementptr inbounds i8* %18, i64 8, !dbg !1193
  store i8* %19, i8** %17, align 8, !dbg !1193
  br label %bb6, !dbg !1193

bb6:                                              ; preds = %bb5, %bb4
  %addr.50.0 = phi i8* [ %18, %bb5 ], [ %15, %bb4 ]
  %20 = bitcast i8* %addr.50.0 to i8**, !dbg !1193
  %21 = load i8** %20, align 8, !dbg !1193
  call void @llvm.dbg.value(metadata !{i8* %21}, i64 0, metadata !468), !dbg !1193
  call void @llvm.va_end(i8* %ap23), !dbg !1194
  %22 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1195
  %23 = load %struct.exe_disk_file_t** %22, align 8, !dbg !1195
  %24 = icmp eq %struct.exe_disk_file_t* %23, null, !dbg !1195
  br i1 %24, label %bb36, label %bb9, !dbg !1195

bb9:                                              ; preds = %bb6
  %25 = getelementptr inbounds %struct.exe_disk_file_t* %23, i64 0, i32 2, !dbg !1196
  %26 = load %struct.stat** %25, align 8, !dbg !1196
  call void @llvm.dbg.value(metadata !{%struct.stat* %26}, i64 0, metadata !469), !dbg !1196
  switch i64 %request, label %bb35 [
    i64 21505, label %bb10
    i64 21506, label %bb13
    i64 21507, label %bb16
    i64 21508, label %bb19
    i64 21523, label %bb22
    i64 21524, label %bb25
    i64 21531, label %bb28
    i64 2150657282, label %bb34
  ], !dbg !1197

bb10:                                             ; preds = %bb9
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !471), !dbg !1198
  call void @klee_warning_once(i8* getelementptr inbounds ([41 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !1199
  %27 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1200
  %28 = load i32* %27, align 8, !dbg !1200
  %29 = and i32 %28, 61440, !dbg !1200
  %30 = icmp eq i32 %29, 8192, !dbg !1200
  br i1 %30, label %bb11, label %bb12, !dbg !1200

bb11:                                             ; preds = %bb10
  %31 = bitcast i8* %21 to i32*, !dbg !1201
  store i32 27906, i32* %31, align 4, !dbg !1201
  %32 = getelementptr inbounds i8* %21, i64 4
  %33 = bitcast i8* %32 to i32*, !dbg !1202
  store i32 5, i32* %33, align 4, !dbg !1202
  %34 = getelementptr inbounds i8* %21, i64 8
  %35 = bitcast i8* %34 to i32*, !dbg !1203
  store i32 1215, i32* %35, align 4, !dbg !1203
  %36 = getelementptr inbounds i8* %21, i64 12
  %37 = bitcast i8* %36 to i32*, !dbg !1204
  store i32 35287, i32* %37, align 4, !dbg !1204
  %38 = getelementptr inbounds i8* %21, i64 16
  store i8 0, i8* %38, align 4, !dbg !1205
  %39 = getelementptr inbounds i8* %21, i64 17
  store i8 3, i8* %39, align 1, !dbg !1206
  %40 = getelementptr inbounds i8* %21, i64 18, !dbg !1207
  store i8 28, i8* %40, align 1, !dbg !1207
  %41 = getelementptr inbounds i8* %21, i64 19, !dbg !1208
  store i8 127, i8* %41, align 1, !dbg !1208
  %42 = getelementptr inbounds i8* %21, i64 20, !dbg !1209
  store i8 21, i8* %42, align 1, !dbg !1209
  %43 = getelementptr inbounds i8* %21, i64 21, !dbg !1210
  store i8 4, i8* %43, align 1, !dbg !1210
  %44 = getelementptr inbounds i8* %21, i64 22, !dbg !1211
  store i8 0, i8* %44, align 1, !dbg !1211
  %45 = getelementptr inbounds i8* %21, i64 23, !dbg !1212
  store i8 1, i8* %45, align 1, !dbg !1212
  %46 = getelementptr inbounds i8* %21, i64 24, !dbg !1213
  store i8 -1, i8* %46, align 1, !dbg !1213
  %47 = getelementptr inbounds i8* %21, i64 25, !dbg !1214
  store i8 17, i8* %47, align 1, !dbg !1214
  %48 = getelementptr inbounds i8* %21, i64 26, !dbg !1215
  store i8 19, i8* %48, align 1, !dbg !1215
  %49 = getelementptr inbounds i8* %21, i64 27, !dbg !1216
  store i8 26, i8* %49, align 1, !dbg !1216
  %50 = getelementptr inbounds i8* %21, i64 28, !dbg !1217
  store i8 -1, i8* %50, align 1, !dbg !1217
  %51 = getelementptr inbounds i8* %21, i64 29, !dbg !1218
  store i8 18, i8* %51, align 1, !dbg !1218
  %52 = getelementptr inbounds i8* %21, i64 30, !dbg !1219
  store i8 15, i8* %52, align 1, !dbg !1219
  %53 = getelementptr inbounds i8* %21, i64 31, !dbg !1220
  store i8 23, i8* %53, align 1, !dbg !1220
  %54 = getelementptr inbounds i8* %21, i64 32, !dbg !1221
  store i8 22, i8* %54, align 1, !dbg !1221
  %55 = getelementptr inbounds i8* %21, i64 33, !dbg !1222
  store i8 -1, i8* %55, align 1, !dbg !1222
  %56 = getelementptr inbounds i8* %21, i64 34, !dbg !1223
  store i8 0, i8* %56, align 1, !dbg !1223
  %57 = getelementptr inbounds i8* %21, i64 35, !dbg !1224
  store i8 0, i8* %57, align 1, !dbg !1224
  br label %bb39, !dbg !1225

bb12:                                             ; preds = %bb10
  %58 = call i32* @__errno_location() nounwind readnone, !dbg !1226
  store i32 25, i32* %58, align 4, !dbg !1226
  br label %bb39, !dbg !1227

bb13:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([42 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !1228
  %59 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1229
  %60 = load i32* %59, align 8, !dbg !1229
  %61 = and i32 %60, 61440, !dbg !1229
  %62 = icmp eq i32 %61, 8192, !dbg !1229
  br i1 %62, label %bb39, label %bb15, !dbg !1229

bb15:                                             ; preds = %bb13
  %63 = call i32* @__errno_location() nounwind readnone, !dbg !1230
  store i32 25, i32* %63, align 4, !dbg !1230
  br label %bb39, !dbg !1231

bb16:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !1232
  %64 = icmp eq i32 %fd, 0, !dbg !1233
  br i1 %64, label %bb39, label %bb18, !dbg !1233

bb18:                                             ; preds = %bb16
  %65 = call i32* @__errno_location() nounwind readnone, !dbg !1234
  store i32 25, i32* %65, align 4, !dbg !1234
  br label %bb39, !dbg !1235

bb19:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !1236
  %66 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1237
  %67 = load i32* %66, align 8, !dbg !1237
  %68 = and i32 %67, 61440, !dbg !1237
  %69 = icmp eq i32 %68, 8192, !dbg !1237
  br i1 %69, label %bb39, label %bb21, !dbg !1237

bb21:                                             ; preds = %bb19
  %70 = call i32* @__errno_location() nounwind readnone, !dbg !1238
  store i32 25, i32* %70, align 4, !dbg !1238
  br label %bb39, !dbg !1239

bb22:                                             ; preds = %bb9
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !491), !dbg !1240
  %71 = bitcast i8* %21 to i16*, !dbg !1241
  store i16 24, i16* %71, align 2, !dbg !1241
  %72 = getelementptr inbounds i8* %21, i64 2
  %73 = bitcast i8* %72 to i16*, !dbg !1242
  store i16 80, i16* %73, align 2, !dbg !1242
  call void @klee_warning_once(i8* getelementptr inbounds ([45 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !1243
  %74 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1244
  %75 = load i32* %74, align 8, !dbg !1244
  %76 = and i32 %75, 61440, !dbg !1244
  %77 = icmp eq i32 %76, 8192, !dbg !1244
  br i1 %77, label %bb39, label %bb24, !dbg !1244

bb24:                                             ; preds = %bb22
  %78 = call i32* @__errno_location() nounwind readnone, !dbg !1245
  store i32 25, i32* %78, align 4, !dbg !1245
  br label %bb39, !dbg !1246

bb25:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([46 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !1247
  %79 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1248
  %80 = load i32* %79, align 8, !dbg !1248
  %81 = and i32 %80, 61440, !dbg !1248
  %82 = icmp eq i32 %81, 8192, !dbg !1248
  %83 = call i32* @__errno_location() nounwind readnone, !dbg !1249
  br i1 %82, label %bb26, label %bb27, !dbg !1248

bb26:                                             ; preds = %bb25
  store i32 22, i32* %83, align 4, !dbg !1249
  br label %bb39, !dbg !1250

bb27:                                             ; preds = %bb25
  store i32 25, i32* %83, align 4, !dbg !1251
  br label %bb39, !dbg !1252

bb28:                                             ; preds = %bb9
  %84 = bitcast i8* %21 to i32*, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32* %84}, i64 0, metadata !501), !dbg !1253
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !1254
  %85 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1255
  %86 = load i32* %85, align 8, !dbg !1255
  %87 = and i32 %86, 61440, !dbg !1255
  %88 = icmp eq i32 %87, 8192, !dbg !1255
  br i1 %88, label %bb29, label %bb33, !dbg !1255

bb29:                                             ; preds = %bb28
  %89 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1256
  %90 = load i64* %89, align 8, !dbg !1256
  %91 = load %struct.exe_disk_file_t** %22, align 8, !dbg !1256
  %92 = getelementptr inbounds %struct.exe_disk_file_t* %91, i64 0, i32 0, !dbg !1256
  %93 = load i32* %92, align 8, !dbg !1256
  %94 = zext i32 %93 to i64, !dbg !1256
  %95 = icmp slt i64 %90, %94, !dbg !1256
  br i1 %95, label %bb30, label %bb32, !dbg !1256

bb30:                                             ; preds = %bb29
  %96 = trunc i64 %90 to i32, !dbg !1257
  %97 = sub i32 %93, %96, !dbg !1257
  br label %bb32, !dbg !1257

bb32:                                             ; preds = %bb29, %bb30
  %storemerge = phi i32 [ %97, %bb30 ], [ 0, %bb29 ]
  store i32 %storemerge, i32* %84, align 4
  br label %bb39, !dbg !1258

bb33:                                             ; preds = %bb28
  %98 = call i32* @__errno_location() nounwind readnone, !dbg !1259
  store i32 25, i32* %98, align 4, !dbg !1259
  br label %bb39, !dbg !1260

bb34:                                             ; preds = %bb9
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !1261
  %99 = call i32* @__errno_location() nounwind readnone, !dbg !1262
  store i32 22, i32* %99, align 4, !dbg !1262
  br label %bb39, !dbg !1263

bb35:                                             ; preds = %bb9
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !1264
  %100 = call i32* @__errno_location() nounwind readnone, !dbg !1265
  store i32 22, i32* %100, align 4, !dbg !1265
  br label %bb39, !dbg !1266

bb36:                                             ; preds = %bb6
  %101 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1267
  %102 = load i32* %101, align 8, !dbg !1267
  %103 = call i64 (i64, ...)* @syscall(i64 16, i32 %102, i64 %request, i8* %21) nounwind, !dbg !1267
  %104 = trunc i64 %103 to i32, !dbg !1267
  call void @llvm.dbg.value(metadata !{i32 %104}, i64 0, metadata !504), !dbg !1267
  %105 = icmp eq i32 %104, -1, !dbg !1268
  br i1 %105, label %bb37, label %bb39, !dbg !1268

bb37:                                             ; preds = %bb36
  %106 = call i32* @__errno_location() nounwind readnone, !dbg !1269
  %107 = call i32 @klee_get_errno() nounwind, !dbg !1269
  store i32 %107, i32* %106, align 4, !dbg !1269
  br label %bb39, !dbg !1269

bb39:                                             ; preds = %bb36, %bb37, %bb22, %bb19, %bb16, %bb13, %bb35, %bb34, %bb33, %bb32, %bb27, %bb26, %bb24, %bb21, %bb18, %bb15, %bb12, %bb11, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb35 ], [ -1, %bb34 ], [ 0, %bb32 ], [ -1, %bb33 ], [ -1, %bb26 ], [ -1, %bb27 ], [ -1, %bb24 ], [ -1, %bb21 ], [ -1, %bb18 ], [ -1, %bb15 ], [ 0, %bb11 ], [ -1, %bb12 ], [ 0, %bb13 ], [ 0, %bb16 ], [ 0, %bb19 ], [ 0, %bb22 ], [ -1, %bb37 ], [ %104, %bb36 ]
  ret i32 %.0, !dbg !1191
}

declare void @klee_warning_once(i8*)

define i32 @__fd_getdents(i32 %fd, %struct.dirent64* %dirp, i32 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !506), !dbg !1270
  tail call void @llvm.dbg.value(metadata !{%struct.dirent64* %dirp}, i64 0, metadata !507), !dbg !1270
  tail call void @llvm.dbg.value(metadata !{i32 %count}, i64 0, metadata !508), !dbg !1270
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1271
  %0 = icmp ult i32 %fd, 32, !dbg !1273
  br i1 %0, label %bb.i, label %bb, !dbg !1273

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1274
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1274
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1275
  %3 = load i32* %2, align 4, !dbg !1275
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1275
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1275

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1274
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !509), !dbg !1272
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1276
  br i1 %6, label %bb, label %bb1, !dbg !1276

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1277
  store i32 9, i32* %7, align 4, !dbg !1277
  br label %bb19, !dbg !1278

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1279
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !1279
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !1279
  br i1 %10, label %bb3, label %bb2, !dbg !1279

bb2:                                              ; preds = %bb1
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !1280
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !1281
  store i32 22, i32* %11, align 4, !dbg !1281
  br label %bb19, !dbg !1282

bb3:                                              ; preds = %bb1
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1283
  %13 = load i64* %12, align 8, !dbg !1283
  %14 = icmp ult i64 %13, 4096, !dbg !1283
  br i1 %14, label %bb4, label %bb11, !dbg !1283

bb4:                                              ; preds = %bb3
  tail call void @llvm.dbg.value(metadata !1284, i64 0, metadata !514), !dbg !1285
  %15 = udiv i64 %13, 280, !dbg !1286
  tail call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !511), !dbg !1286
  %16 = mul i64 %15, 280, !dbg !1287
  %17 = icmp eq i64 %16, %13, !dbg !1287
  br i1 %17, label %bb5, label %bb6, !dbg !1287

bb5:                                              ; preds = %bb4
  %18 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1287
  %19 = zext i32 %18 to i64, !dbg !1287
  %20 = icmp ult i64 %19, %15, !dbg !1287
  br i1 %20, label %bb6, label %bb8.preheader, !dbg !1287

bb8.preheader:                                    ; preds = %bb5
  %21 = icmp ugt i64 %19, %15, !dbg !1288
  br i1 %21, label %bb7.lr.ph, label %bb9, !dbg !1288

bb7.lr.ph:                                        ; preds = %bb8.preheader
  %tmp39 = add i64 %15, 65
  %tmp48 = add i64 %16, 280
  %tmp50 = add i64 %15, 1
  br label %bb7

bb6:                                              ; preds = %bb4, %bb5
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !1289
  store i32 22, i32* %22, align 4, !dbg !1289
  br label %bb19, !dbg !1290

bb7:                                              ; preds = %bb7.lr.ph, %bb7
  %indvar = phi i64 [ 0, %bb7.lr.ph ], [ %indvar.next, %bb7 ]
  %bytes.025 = phi i64 [ 0, %bb7.lr.ph ], [ %32, %bb7 ]
  %scevgep29 = getelementptr inbounds %struct.dirent64* %dirp, i64 %indvar, i32 0
  %scevgep30 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 2
  %scevgep31 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 3
  %scevgep32 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 1
  %scevgep35 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 4, i64 0
  %scevgep36 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 4, i64 1
  %tmp41 = add i64 %tmp39, %indvar
  %tmp42 = trunc i64 %tmp41 to i8
  %tmp43 = add i64 %15, %indvar
  %tmp46 = mul i64 %indvar, 280
  %tmp49 = add i64 %tmp48, %tmp46
  %tmp51 = add i64 %tmp50, %indvar
  %23 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1291
  %scevgep45 = getelementptr %struct.exe_disk_file_t* %23, i64 %tmp43, i32 2
  %24 = load %struct.stat** %scevgep45, align 8, !dbg !1292
  %25 = getelementptr inbounds %struct.stat* %24, i64 0, i32 1, !dbg !1292
  %26 = load i64* %25, align 8, !dbg !1292
  store i64 %26, i64* %scevgep29, align 8, !dbg !1292
  store i16 280, i16* %scevgep30, align 8, !dbg !1293
  %27 = load %struct.stat** %scevgep45, align 8, !dbg !1294
  %28 = getelementptr inbounds %struct.stat* %27, i64 0, i32 3, !dbg !1294
  %29 = load i32* %28, align 8, !dbg !1294
  %30 = lshr i32 %29, 12
  %.tr = trunc i32 %30 to i8
  %31 = and i8 %.tr, 15, !dbg !1294
  store i8 %31, i8* %scevgep31, align 2, !dbg !1294
  store i8 %tmp42, i8* %scevgep35, align 1, !dbg !1295
  store i8 0, i8* %scevgep36, align 1, !dbg !1296
  store i64 %tmp49, i64* %scevgep32, align 8, !dbg !1297
  %32 = add nsw i64 %bytes.025, 280, !dbg !1298
  %33 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1288
  %34 = zext i32 %33 to i64, !dbg !1288
  %35 = icmp sgt i64 %34, %tmp51, !dbg !1288
  %indvar.next = add i64 %indvar, 1
  br i1 %35, label %bb7, label %bb8.bb9_crit_edge, !dbg !1288

bb8.bb9_crit_edge:                                ; preds = %bb7
  %scevgep34 = getelementptr %struct.dirent64* %dirp, i64 %indvar.next
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !515), !dbg !1291
  tail call void @llvm.dbg.value(metadata !{i64 %32}, i64 0, metadata !514), !dbg !1298
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !507), !dbg !1299
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !511), !dbg !1288
  br label %bb9

bb9:                                              ; preds = %bb8.bb9_crit_edge, %bb8.preheader
  %dirp_addr.0.lcssa = phi %struct.dirent64* [ %scevgep34, %bb8.bb9_crit_edge ], [ %dirp, %bb8.preheader ]
  %bytes.0.lcssa = phi i64 [ %32, %bb8.bb9_crit_edge ], [ 0, %bb8.preheader ]
  %36 = icmp ugt i32 %count, 4096, !dbg !1300
  %37 = zext i32 %count to i64
  %38 = select i1 %36, i64 4096, i64 %37, !dbg !1300
  tail call void @llvm.dbg.value(metadata !{i64 %38}, i64 0, metadata !513), !dbg !1300
  %39 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 0, !dbg !1301
  store i64 0, i64* %39, align 8, !dbg !1301
  %40 = trunc i64 %38 to i16, !dbg !1302
  %41 = trunc i64 %bytes.0.lcssa to i16, !dbg !1302
  %42 = sub i16 %40, %41, !dbg !1302
  %43 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 2, !dbg !1302
  store i16 %42, i16* %43, align 8, !dbg !1302
  %44 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 3, !dbg !1303
  store i8 0, i8* %44, align 2, !dbg !1303
  %45 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 4, i64 0, !dbg !1304
  store i8 0, i8* %45, align 1, !dbg !1304
  %46 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 1, !dbg !1305
  store i64 4096, i64* %46, align 8, !dbg !1305
  %47 = zext i16 %42 to i64, !dbg !1306
  %48 = add nsw i64 %47, %bytes.0.lcssa, !dbg !1306
  tail call void @llvm.dbg.value(metadata !{i64 %48}, i64 0, metadata !514), !dbg !1306
  store i64 %38, i64* %12, align 8, !dbg !1307
  %49 = trunc i64 %48 to i32, !dbg !1308
  br label %bb19, !dbg !1308

bb11:                                             ; preds = %bb3
  %50 = add nsw i64 %13, -4096, !dbg !1309
  tail call void @llvm.dbg.value(metadata !{i64 %50}, i64 0, metadata !517), !dbg !1309
  tail call void @llvm.dbg.value(metadata !1284, i64 0, metadata !520), !dbg !1310
  %51 = zext i32 %count to i64, !dbg !1311
  %52 = bitcast %struct.dirent64* %dirp to i8*, !dbg !1311
  tail call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 %51, i32 8, i1 false), !dbg !1311
  %53 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1312
  %54 = load i32* %53, align 8, !dbg !1312
  %55 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %54, i64 %50, i32 0) nounwind, !dbg !1312
  tail call void @llvm.dbg.value(metadata !{i64 %55}, i64 0, metadata !520), !dbg !1312
  %56 = icmp eq i64 %55, -1, !dbg !1313
  br i1 %56, label %bb12, label %bb13, !dbg !1313

bb12:                                             ; preds = %bb11
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 878, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.5262, i64 0, i64 0)) noreturn nounwind, !dbg !1313
  unreachable, !dbg !1313

bb13:                                             ; preds = %bb11
  %57 = load i32* %53, align 8, !dbg !1314
  %58 = tail call i64 (i64, ...)* @syscall(i64 217, i32 %57, %struct.dirent64* %dirp, i32 %count) nounwind, !dbg !1314
  %59 = trunc i64 %58 to i32, !dbg !1314
  tail call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !519), !dbg !1314
  %60 = icmp eq i32 %59, -1, !dbg !1315
  br i1 %60, label %bb14, label %bb15, !dbg !1315

bb14:                                             ; preds = %bb13
  %61 = tail call i32* @__errno_location() nounwind readnone, !dbg !1316
  %62 = tail call i32 @klee_get_errno() nounwind, !dbg !1316
  store i32 %62, i32* %61, align 4, !dbg !1316
  br label %bb19, !dbg !1316

bb15:                                             ; preds = %bb13
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !521), !dbg !1317
  %63 = load i32* %53, align 8, !dbg !1318
  %64 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %63, i32 0, i32 1) nounwind, !dbg !1318
  %65 = add nsw i64 %64, 4096, !dbg !1318
  store i64 %65, i64* %12, align 8, !dbg !1318
  %66 = icmp sgt i32 %59, 0, !dbg !1319
  br i1 %66, label %bb16, label %bb19, !dbg !1319

bb16:                                             ; preds = %bb15, %bb16
  %pos.023 = phi i32 [ %76, %bb16 ], [ 0, %bb15 ]
  %67 = sext i32 %pos.023 to i64, !dbg !1320
  %.sum = add i64 %67, 8
  %68 = getelementptr inbounds i8* %52, i64 %.sum
  %69 = bitcast i8* %68 to i64*, !dbg !1321
  %70 = load i64* %69, align 8, !dbg !1321
  %71 = add nsw i64 %70, 4096, !dbg !1321
  store i64 %71, i64* %69, align 8, !dbg !1321
  %.sum22 = add i64 %67, 16
  %72 = getelementptr inbounds i8* %52, i64 %.sum22
  %73 = bitcast i8* %72 to i16*, !dbg !1322
  %74 = load i16* %73, align 8, !dbg !1322
  %75 = zext i16 %74 to i32, !dbg !1322
  %76 = add nsw i32 %75, %pos.023, !dbg !1322
  %77 = icmp slt i32 %76, %59, !dbg !1319
  br i1 %77, label %bb16, label %bb19, !dbg !1319

bb19:                                             ; preds = %bb15, %bb16, %bb14, %bb9, %bb6, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb6 ], [ %49, %bb9 ], [ -1, %bb14 ], [ %59, %bb16 ], [ %59, %bb15 ]
  ret i32 %.0, !dbg !1278
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !525), !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i64 %offset}, i64 0, metadata !526), !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !527), !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1324
  %0 = icmp ult i32 %fd, 32, !dbg !1326
  br i1 %0, label %bb.i, label %bb, !dbg !1326

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1327
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1327
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1328
  %3 = load i32* %2, align 4, !dbg !1328
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1328
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1328

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1327
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !530), !dbg !1325
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1329
  br i1 %6, label %bb, label %bb1, !dbg !1329

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1330
  store i32 9, i32* %7, align 4, !dbg !1330
  br label %bb19, !dbg !1331

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1332
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !1332
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !1332
  br i1 %10, label %bb2, label %bb11, !dbg !1332

bb2:                                              ; preds = %bb1
  %11 = icmp eq i32 %whence, 0, !dbg !1333
  br i1 %11, label %bb3, label %bb4, !dbg !1333

bb3:                                              ; preds = %bb2
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1334
  %13 = load i32* %12, align 8, !dbg !1334
  %14 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %13, i64 %offset, i32 0) nounwind, !dbg !1334
  tail call void @llvm.dbg.value(metadata !{i64 %14}, i64 0, metadata !528), !dbg !1334
  br label %bb8, !dbg !1334

bb4:                                              ; preds = %bb2
  %15 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1335
  %16 = load i64* %15, align 8, !dbg !1335
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1335
  %18 = load i32* %17, align 8, !dbg !1335
  %19 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %18, i64 %16, i32 0) nounwind, !dbg !1335
  tail call void @llvm.dbg.value(metadata !{i64 %19}, i64 0, metadata !528), !dbg !1335
  %20 = icmp eq i64 %19, -1, !dbg !1336
  br i1 %20, label %bb9, label %bb5, !dbg !1336

bb5:                                              ; preds = %bb4
  %21 = load i64* %15, align 8, !dbg !1337
  %22 = icmp eq i64 %21, %19, !dbg !1337
  br i1 %22, label %bb7, label %bb6, !dbg !1337

bb6:                                              ; preds = %bb5
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 502, i8* getelementptr inbounds ([11 x i8]* @__PRETTY_FUNCTION__.4986, i64 0, i64 0)) noreturn nounwind, !dbg !1337
  unreachable, !dbg !1337

bb7:                                              ; preds = %bb5
  %23 = load i32* %17, align 8, !dbg !1338
  %24 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %23, i64 %offset, i32 %whence) nounwind, !dbg !1338
  tail call void @llvm.dbg.value(metadata !{i64 %24}, i64 0, metadata !528), !dbg !1338
  br label %bb8, !dbg !1338

bb8:                                              ; preds = %bb7, %bb3
  %new_off.0 = phi i64 [ %14, %bb3 ], [ %24, %bb7 ]
  %25 = icmp eq i64 %new_off.0, -1, !dbg !1339
  br i1 %25, label %bb9, label %bb10, !dbg !1339

bb9:                                              ; preds = %bb4, %bb8
  %26 = tail call i32* @__errno_location() nounwind readnone, !dbg !1340
  %27 = tail call i32 @klee_get_errno() nounwind, !dbg !1340
  store i32 %27, i32* %26, align 4, !dbg !1340
  br label %bb19, !dbg !1341

bb10:                                             ; preds = %bb8
  %28 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1342
  store i64 %new_off.0, i64* %28, align 8, !dbg !1342
  br label %bb19, !dbg !1343

bb11:                                             ; preds = %bb1
  switch i32 %whence, label %bb15 [
    i32 0, label %bb16
    i32 1, label %bb13
    i32 2, label %bb14
  ], !dbg !1344

bb13:                                             ; preds = %bb11
  %29 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1345
  %30 = load i64* %29, align 8, !dbg !1345
  %31 = add nsw i64 %30, %offset, !dbg !1345
  tail call void @llvm.dbg.value(metadata !{i64 %31}, i64 0, metadata !528), !dbg !1345
  br label %bb16, !dbg !1345

bb14:                                             ; preds = %bb11
  %32 = getelementptr inbounds %struct.exe_disk_file_t* %9, i64 0, i32 0, !dbg !1346
  %33 = load i32* %32, align 8, !dbg !1346
  %34 = zext i32 %33 to i64, !dbg !1346
  %35 = add nsw i64 %34, %offset, !dbg !1346
  tail call void @llvm.dbg.value(metadata !{i64 %35}, i64 0, metadata !528), !dbg !1346
  br label %bb16, !dbg !1346

bb15:                                             ; preds = %bb11
  %36 = tail call i32* @__errno_location() nounwind readnone, !dbg !1347
  store i32 22, i32* %36, align 4, !dbg !1347
  br label %bb19, !dbg !1348

bb16:                                             ; preds = %bb11, %bb14, %bb13
  %new_off.1 = phi i64 [ %35, %bb14 ], [ %31, %bb13 ], [ %offset, %bb11 ]
  %37 = icmp slt i64 %new_off.1, 0, !dbg !1349
  br i1 %37, label %bb17, label %bb18, !dbg !1349

bb17:                                             ; preds = %bb16
  %38 = tail call i32* @__errno_location() nounwind readnone, !dbg !1350
  store i32 22, i32* %38, align 4, !dbg !1350
  br label %bb19, !dbg !1351

bb18:                                             ; preds = %bb16
  %39 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1352
  store i64 %new_off.1, i64* %39, align 8, !dbg !1352
  br label %bb19, !dbg !1353

bb19:                                             ; preds = %bb18, %bb17, %bb15, %bb10, %bb9, %bb
  %.0 = phi i64 [ -1, %bb ], [ -1, %bb9 ], [ %new_off.0, %bb10 ], [ -1, %bb15 ], [ -1, %bb17 ], [ %new_off.1, %bb18 ]
  ret i64 %.0, !dbg !1331
}

define i32 @__fd_fstat(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !531), !dbg !1354
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !532), !dbg !1354
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1355
  %0 = icmp ult i32 %fd, 32, !dbg !1357
  br i1 %0, label %bb.i, label %bb, !dbg !1357

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1358
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1358
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1359
  %3 = load i32* %2, align 4, !dbg !1359
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1359
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1359

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1358
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !533), !dbg !1356
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1360
  br i1 %6, label %bb, label %bb1, !dbg !1360

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1361
  store i32 9, i32* %7, align 4, !dbg !1361
  br label %bb6, !dbg !1362

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1363
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !1363
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !1363
  br i1 %10, label %bb2, label %bb5, !dbg !1363

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1364
  %12 = load i32* %11, align 8, !dbg !1364
  %13 = tail call i64 (i64, ...)* @syscall(i64 5, i32 %12, %struct.stat* %buf) nounwind, !dbg !1364
  %14 = trunc i64 %13 to i32, !dbg !1364
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !535), !dbg !1364
  %15 = icmp eq i32 %14, -1, !dbg !1365
  br i1 %15, label %bb3, label %bb6, !dbg !1365

bb3:                                              ; preds = %bb2
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !1366
  %17 = tail call i32 @klee_get_errno() nounwind, !dbg !1366
  store i32 %17, i32* %16, align 4, !dbg !1366
  br label %bb6, !dbg !1366

bb5:                                              ; preds = %bb1
  %18 = getelementptr inbounds %struct.exe_disk_file_t* %9, i64 0, i32 2, !dbg !1367
  %19 = load %struct.stat** %18, align 8, !dbg !1367
  %20 = bitcast %struct.stat* %buf to i8*, !dbg !1367
  %21 = bitcast %struct.stat* %19 to i8*, !dbg !1367
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 144, i32 8, i1 false), !dbg !1367
  br label %bb6, !dbg !1368

bb6:                                              ; preds = %bb2, %bb3, %bb5, %bb
  %.0 = phi i32 [ -1, %bb ], [ 0, %bb5 ], [ -1, %bb3 ], [ %14, %bb2 ]
  ret i32 %.0, !dbg !1362
}

define i32 @__fd_lstat(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !537), !dbg !1369
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !538), !dbg !1369
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !1370
  %0 = load i8* %path, align 1, !dbg !1372
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !1372
  %1 = icmp eq i8 %0, 0, !dbg !1373
  br i1 %1, label %bb1, label %bb.i, !dbg !1373

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !1373
  %3 = load i8* %2, align 1, !dbg !1373
  %4 = icmp eq i8 %3, 0, !dbg !1373
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !1373

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1374
  %6 = sext i8 %0 to i32, !dbg !1375
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !1375
  %8 = add nsw i32 %7, 65, !dbg !1375
  %9 = icmp eq i32 %6, %8, !dbg !1375
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !1375

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1376
  %11 = zext i32 %18 to i64, !dbg !1376
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !1376
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !1377
  %13 = load %struct.stat** %12, align 8, !dbg !1377
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !1377
  %15 = load i64* %14, align 8, !dbg !1377
  %16 = icmp eq i64 %15, 0, !dbg !1377
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !1377

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !1374
  br label %bb8.i, !dbg !1374

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !1374
  br i1 %19, label %bb3.i, label %bb1, !dbg !1374

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !1376
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !539), !dbg !1371
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !1378
  br i1 %21, label %bb1, label %bb, !dbg !1378

bb:                                               ; preds = %__get_sym_file.exit
  %22 = bitcast %struct.stat* %buf to i8*, !dbg !1379
  %23 = bitcast %struct.stat* %13 to i8*, !dbg !1379
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 144, i32 8, i1 false), !dbg !1379
  br label %bb4, !dbg !1380

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !1381
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !1383
  %24 = ptrtoint i8* %path to i64, !dbg !1385
  %25 = tail call i64 @klee_get_valuel(i64 %24) nounwind, !dbg !1385
  %26 = inttoptr i64 %25 to i8*, !dbg !1385
  tail call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !344) nounwind, !dbg !1385
  %27 = icmp eq i8* %26, %path, !dbg !1386
  %28 = zext i1 %27 to i64, !dbg !1386
  tail call void @klee_assume(i64 %28) nounwind, !dbg !1386
  tail call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !354) nounwind, !dbg !1384
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !1387
  br label %bb.i6, !dbg !1387

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %26, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %29 = phi i32 [ 0, %bb1 ], [ %41, %bb6.i8 ]
  %tmp.i = add i32 %29, -1
  %30 = load i8* %sc.0.i, align 1, !dbg !1388
  %31 = and i32 %tmp.i, %29, !dbg !1389
  %32 = icmp eq i32 %31, 0, !dbg !1389
  br i1 %32, label %bb1.i, label %bb5.i, !dbg !1389

bb1.i:                                            ; preds = %bb.i6
  switch i8 %30, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %30}, i64 0, metadata !357) nounwind, !dbg !1388
  store i8 0, i8* %sc.0.i, align 1, !dbg !1390
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !1390
  br label %__concretize_string.exit, !dbg !1390

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1391
  %33 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1391
  br label %bb6.i8, !dbg !1391

bb5.i:                                            ; preds = %bb.i6
  %34 = sext i8 %30 to i64, !dbg !1392
  %35 = tail call i64 @klee_get_valuel(i64 %34) nounwind, !dbg !1392
  %36 = trunc i64 %35 to i8, !dbg !1392
  %37 = icmp eq i8 %36, %30, !dbg !1393
  %38 = zext i1 %37 to i64, !dbg !1393
  tail call void @klee_assume(i64 %38) nounwind, !dbg !1393
  store i8 %36, i8* %sc.0.i, align 1, !dbg !1394
  %39 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1394
  %40 = icmp eq i8 %36, 0, !dbg !1395
  br i1 %40, label %__concretize_string.exit, label %bb6.i8, !dbg !1395

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %33, %bb4.i7 ], [ %39, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %41 = add i32 %29, 1, !dbg !1387
  br label %bb.i6, !dbg !1387

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %42 = tail call i64 (i64, ...)* @syscall(i64 6, i8* %path, %struct.stat* %buf) nounwind, !dbg !1382
  %43 = trunc i64 %42 to i32, !dbg !1382
  tail call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !541), !dbg !1382
  %44 = icmp eq i32 %43, -1, !dbg !1396
  br i1 %44, label %bb2, label %bb4, !dbg !1396

bb2:                                              ; preds = %__concretize_string.exit
  %45 = tail call i32* @__errno_location() nounwind readnone, !dbg !1397
  %46 = tail call i32 @klee_get_errno() nounwind, !dbg !1397
  store i32 %46, i32* %45, align 4, !dbg !1397
  br label %bb4, !dbg !1397

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ 0, %bb ], [ -1, %bb2 ], [ %43, %__concretize_string.exit ]
  ret i32 %.0, !dbg !1380
}

define i32 @fstatat(i32 %fd, i8* %path, %struct.stat* %buf, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !543), !dbg !1398
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !544), !dbg !1398
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !545), !dbg !1398
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !546), !dbg !1398
  %0 = icmp eq i32 %fd, -100, !dbg !1399
  br i1 %0, label %bb5, label %bb, !dbg !1399

bb:                                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1400
  %1 = icmp ult i32 %fd, 32, !dbg !1402
  br i1 %1, label %bb.i, label %bb1, !dbg !1402

bb.i:                                             ; preds = %bb
  %2 = sext i32 %fd to i64, !dbg !1403
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1403
  %3 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 1, !dbg !1404
  %4 = load i32* %3, align 4, !dbg !1404
  %5 = and i32 %4, 1
  %toBool.i = icmp eq i32 %5, 0, !dbg !1404
  br i1 %toBool.i, label %bb1, label %__get_file.exit, !dbg !1404

__get_file.exit:                                  ; preds = %bb.i
  %6 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, !dbg !1403
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %6}, i64 0, metadata !550), !dbg !1401
  %7 = icmp eq %struct.exe_file_t* %6, null, !dbg !1405
  br i1 %7, label %bb1, label %bb2, !dbg !1405

bb1:                                              ; preds = %bb, %bb.i, %__get_file.exit
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !1406
  store i32 9, i32* %8, align 4, !dbg !1406
  br label %bb13, !dbg !1407

bb2:                                              ; preds = %__get_file.exit
  %9 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 3, !dbg !1408
  %10 = load %struct.exe_disk_file_t** %9, align 8, !dbg !1408
  %11 = icmp eq %struct.exe_disk_file_t* %10, null, !dbg !1408
  br i1 %11, label %bb4, label %bb3, !dbg !1408

bb3:                                              ; preds = %bb2
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !1409
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !1410
  store i32 2, i32* %12, align 4, !dbg !1410
  br label %bb13, !dbg !1411

bb4:                                              ; preds = %bb2
  %13 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 0, !dbg !1412
  %14 = load i32* %13, align 8, !dbg !1412
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !543), !dbg !1412
  %phitmp = sext i32 %14 to i64
  br label %bb5, !dbg !1412

bb5:                                              ; preds = %entry, %bb4
  %fd_addr.0 = phi i64 [ %phitmp, %bb4 ], [ -100, %entry ]
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !1413
  %15 = load i8* %path, align 1, !dbg !1415
  tail call void @llvm.dbg.value(metadata !{i8 %15}, i64 0, metadata !267), !dbg !1415
  %16 = icmp eq i8 %15, 0, !dbg !1416
  br i1 %16, label %bb7, label %bb.i17, !dbg !1416

bb.i17:                                           ; preds = %bb5
  %17 = getelementptr inbounds i8* %path, i64 1, !dbg !1416
  %18 = load i8* %17, align 1, !dbg !1416
  %19 = icmp eq i8 %18, 0, !dbg !1416
  br i1 %19, label %bb8.preheader.i, label %bb7, !dbg !1416

bb8.preheader.i:                                  ; preds = %bb.i17
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1417
  %21 = sext i8 %15 to i32, !dbg !1418
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %33, 24
  %22 = ashr exact i32 %sext.i, 24, !dbg !1418
  %23 = add nsw i32 %22, 65, !dbg !1418
  %24 = icmp eq i32 %21, %23, !dbg !1418
  br i1 %24, label %bb4.i18, label %bb7.i, !dbg !1418

bb4.i18:                                          ; preds = %bb3.i
  %25 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1419
  %26 = zext i32 %33 to i64, !dbg !1419
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !1419
  %27 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, i32 2, !dbg !1420
  %28 = load %struct.stat** %27, align 8, !dbg !1420
  %29 = getelementptr inbounds %struct.stat* %28, i64 0, i32 1, !dbg !1420
  %30 = load i64* %29, align 8, !dbg !1420
  %31 = icmp eq i64 %30, 0, !dbg !1420
  br i1 %31, label %bb7, label %__get_sym_file.exit, !dbg !1420

bb7.i:                                            ; preds = %bb3.i
  %32 = add i32 %33, 1, !dbg !1417
  br label %bb8.i, !dbg !1417

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %33 = phi i32 [ %32, %bb7.i ], [ 0, %bb8.preheader.i ]
  %34 = icmp ugt i32 %20, %33, !dbg !1417
  br i1 %34, label %bb3.i, label %bb7, !dbg !1417

__get_sym_file.exit:                              ; preds = %bb4.i18
  %35 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, !dbg !1419
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %35}, i64 0, metadata !547), !dbg !1414
  %36 = icmp eq %struct.exe_disk_file_t* %35, null, !dbg !1421
  br i1 %36, label %bb7, label %bb6, !dbg !1421

bb6:                                              ; preds = %__get_sym_file.exit
  %37 = bitcast %struct.stat* %buf to i8*, !dbg !1422
  %38 = bitcast %struct.stat* %28 to i8*, !dbg !1422
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 144, i32 8, i1 false), !dbg !1422
  br label %bb13, !dbg !1423

bb7:                                              ; preds = %bb8.i, %bb4.i18, %bb5, %bb.i17, %__get_sym_file.exit
  %39 = sext i32 %flags to i64, !dbg !1424
  %40 = icmp eq i8* %path, null, !dbg !1424
  br i1 %40, label %bb10, label %bb8, !dbg !1424

bb8:                                              ; preds = %bb7
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !1425
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !1426
  %41 = ptrtoint i8* %path to i64, !dbg !1428
  %42 = tail call i64 @klee_get_valuel(i64 %41) nounwind, !dbg !1428
  %43 = inttoptr i64 %42 to i8*, !dbg !1428
  tail call void @llvm.dbg.value(metadata !{i8* %43}, i64 0, metadata !344) nounwind, !dbg !1428
  %44 = icmp eq i8* %43, %path, !dbg !1429
  %45 = zext i1 %44 to i64, !dbg !1429
  tail call void @klee_assume(i64 %45) nounwind, !dbg !1429
  tail call void @llvm.dbg.value(metadata !{i8* %43}, i64 0, metadata !354) nounwind, !dbg !1427
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !1430
  br label %bb.i15, !dbg !1430

bb.i15:                                           ; preds = %bb6.i, %bb8
  %sc.0.i = phi i8* [ %43, %bb8 ], [ %sc.1.i, %bb6.i ]
  %46 = phi i32 [ 0, %bb8 ], [ %58, %bb6.i ]
  %tmp.i = add i32 %46, -1
  %47 = load i8* %sc.0.i, align 1, !dbg !1431
  %48 = and i32 %tmp.i, %46, !dbg !1432
  %49 = icmp eq i32 %48, 0, !dbg !1432
  br i1 %49, label %bb1.i16, label %bb5.i, !dbg !1432

bb1.i16:                                          ; preds = %bb.i15
  switch i8 %47, label %bb6.i [
    i8 0, label %bb2.i
    i8 47, label %bb4.i
  ]

bb2.i:                                            ; preds = %bb1.i16
  tail call void @llvm.dbg.value(metadata !{i8 %47}, i64 0, metadata !357) nounwind, !dbg !1431
  store i8 0, i8* %sc.0.i, align 1, !dbg !1433
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !1433
  br label %bb10, !dbg !1433

bb4.i:                                            ; preds = %bb1.i16
  store i8 47, i8* %sc.0.i, align 1, !dbg !1434
  %50 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1434
  br label %bb6.i, !dbg !1434

bb5.i:                                            ; preds = %bb.i15
  %51 = sext i8 %47 to i64, !dbg !1435
  %52 = tail call i64 @klee_get_valuel(i64 %51) nounwind, !dbg !1435
  %53 = trunc i64 %52 to i8, !dbg !1435
  %54 = icmp eq i8 %53, %47, !dbg !1436
  %55 = zext i1 %54 to i64, !dbg !1436
  tail call void @klee_assume(i64 %55) nounwind, !dbg !1436
  store i8 %53, i8* %sc.0.i, align 1, !dbg !1437
  %56 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1437
  %57 = icmp eq i8 %53, 0, !dbg !1438
  br i1 %57, label %bb10, label %bb6.i, !dbg !1438

bb6.i:                                            ; preds = %bb5.i, %bb4.i, %bb1.i16
  %sc.1.i = phi i8* [ %50, %bb4.i ], [ %56, %bb5.i ], [ %sc.0.i, %bb1.i16 ]
  %58 = add i32 %46, 1, !dbg !1430
  br label %bb.i15, !dbg !1430

bb10:                                             ; preds = %bb5.i, %bb2.i, %bb7
  %iftmp.40.0 = phi i8* [ null, %bb7 ], [ %path, %bb2.i ], [ %path, %bb5.i ]
  %59 = tail call i64 (i64, ...)* @syscall(i64 262, i64 %fd_addr.0, i8* %iftmp.40.0, %struct.stat* %buf, i64 %39) nounwind, !dbg !1424
  %60 = trunc i64 %59 to i32, !dbg !1424
  tail call void @llvm.dbg.value(metadata !{i32 %60}, i64 0, metadata !549), !dbg !1424
  %61 = icmp eq i32 %60, -1, !dbg !1439
  br i1 %61, label %bb11, label %bb13, !dbg !1439

bb11:                                             ; preds = %bb10
  %62 = tail call i32* @__errno_location() nounwind readnone, !dbg !1440
  %63 = tail call i32 @klee_get_errno() nounwind, !dbg !1440
  store i32 %63, i32* %62, align 4, !dbg !1440
  br label %bb13, !dbg !1440

bb13:                                             ; preds = %bb10, %bb11, %bb6, %bb3, %bb1
  %.0 = phi i32 [ -1, %bb1 ], [ -1, %bb3 ], [ 0, %bb6 ], [ -1, %bb11 ], [ %60, %bb10 ]
  ret i32 %.0, !dbg !1407
}

define i32 @__fd_stat(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !552), !dbg !1441
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !553), !dbg !1441
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !1442
  %0 = load i8* %path, align 1, !dbg !1444
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !1444
  %1 = icmp eq i8 %0, 0, !dbg !1445
  br i1 %1, label %bb1, label %bb.i, !dbg !1445

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !1445
  %3 = load i8* %2, align 1, !dbg !1445
  %4 = icmp eq i8 %3, 0, !dbg !1445
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !1445

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1446
  %6 = sext i8 %0 to i32, !dbg !1447
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !1447
  %8 = add nsw i32 %7, 65, !dbg !1447
  %9 = icmp eq i32 %6, %8, !dbg !1447
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !1447

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1448
  %11 = zext i32 %18 to i64, !dbg !1448
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !1448
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !1449
  %13 = load %struct.stat** %12, align 8, !dbg !1449
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !1449
  %15 = load i64* %14, align 8, !dbg !1449
  %16 = icmp eq i64 %15, 0, !dbg !1449
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !1449

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !1446
  br label %bb8.i, !dbg !1446

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !1446
  br i1 %19, label %bb3.i, label %bb1, !dbg !1446

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !1448
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !554), !dbg !1443
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !1450
  br i1 %21, label %bb1, label %bb, !dbg !1450

bb:                                               ; preds = %__get_sym_file.exit
  %22 = bitcast %struct.stat* %buf to i8*, !dbg !1451
  %23 = bitcast %struct.stat* %13 to i8*, !dbg !1451
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 144, i32 8, i1 false), !dbg !1451
  br label %bb4, !dbg !1452

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !1453
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !1455
  %24 = ptrtoint i8* %path to i64, !dbg !1457
  %25 = tail call i64 @klee_get_valuel(i64 %24) nounwind, !dbg !1457
  %26 = inttoptr i64 %25 to i8*, !dbg !1457
  tail call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !344) nounwind, !dbg !1457
  %27 = icmp eq i8* %26, %path, !dbg !1458
  %28 = zext i1 %27 to i64, !dbg !1458
  tail call void @klee_assume(i64 %28) nounwind, !dbg !1458
  tail call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !354) nounwind, !dbg !1456
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !1459
  br label %bb.i6, !dbg !1459

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %26, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %29 = phi i32 [ 0, %bb1 ], [ %41, %bb6.i8 ]
  %tmp.i = add i32 %29, -1
  %30 = load i8* %sc.0.i, align 1, !dbg !1460
  %31 = and i32 %tmp.i, %29, !dbg !1461
  %32 = icmp eq i32 %31, 0, !dbg !1461
  br i1 %32, label %bb1.i, label %bb5.i, !dbg !1461

bb1.i:                                            ; preds = %bb.i6
  switch i8 %30, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %30}, i64 0, metadata !357) nounwind, !dbg !1460
  store i8 0, i8* %sc.0.i, align 1, !dbg !1462
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !1462
  br label %__concretize_string.exit, !dbg !1462

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1463
  %33 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1463
  br label %bb6.i8, !dbg !1463

bb5.i:                                            ; preds = %bb.i6
  %34 = sext i8 %30 to i64, !dbg !1464
  %35 = tail call i64 @klee_get_valuel(i64 %34) nounwind, !dbg !1464
  %36 = trunc i64 %35 to i8, !dbg !1464
  %37 = icmp eq i8 %36, %30, !dbg !1465
  %38 = zext i1 %37 to i64, !dbg !1465
  tail call void @klee_assume(i64 %38) nounwind, !dbg !1465
  store i8 %36, i8* %sc.0.i, align 1, !dbg !1466
  %39 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1466
  %40 = icmp eq i8 %36, 0, !dbg !1467
  br i1 %40, label %__concretize_string.exit, label %bb6.i8, !dbg !1467

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %33, %bb4.i7 ], [ %39, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %41 = add i32 %29, 1, !dbg !1459
  br label %bb.i6, !dbg !1459

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %42 = tail call i64 (i64, ...)* @syscall(i64 4, i8* %path, %struct.stat* %buf) nounwind, !dbg !1454
  %43 = trunc i64 %42 to i32, !dbg !1454
  tail call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !556), !dbg !1454
  %44 = icmp eq i32 %43, -1, !dbg !1468
  br i1 %44, label %bb2, label %bb4, !dbg !1468

bb2:                                              ; preds = %__concretize_string.exit
  %45 = tail call i32* @__errno_location() nounwind readnone, !dbg !1469
  %46 = tail call i32 @klee_get_errno() nounwind, !dbg !1469
  store i32 %46, i32* %45, align 4, !dbg !1469
  br label %bb4, !dbg !1469

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ 0, %bb ], [ -1, %bb2 ], [ %43, %__concretize_string.exit ]
  ret i32 %.0, !dbg !1452
}

define i64 @read(i32 %fd, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !558), !dbg !1470
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !559), !dbg !1470
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !560), !dbg !1470
  %0 = load i32* @n_calls.4852, align 4, !dbg !1471
  %1 = add nsw i32 %0, 1, !dbg !1471
  store i32 %1, i32* @n_calls.4852, align 4, !dbg !1471
  %2 = icmp eq i64 %count, 0, !dbg !1472
  br i1 %2, label %bb24, label %bb1, !dbg !1472

bb1:                                              ; preds = %entry
  %3 = icmp eq i8* %buf, null, !dbg !1473
  br i1 %3, label %bb2, label %bb3, !dbg !1473

bb2:                                              ; preds = %bb1
  %4 = tail call i32* @__errno_location() nounwind readnone, !dbg !1474
  store i32 14, i32* %4, align 4, !dbg !1474
  br label %bb24, !dbg !1475

bb3:                                              ; preds = %bb1
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1476
  %5 = icmp ult i32 %fd, 32, !dbg !1478
  br i1 %5, label %bb.i, label %bb4, !dbg !1478

bb.i:                                             ; preds = %bb3
  %6 = sext i32 %fd to i64, !dbg !1479
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1479
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 1, !dbg !1480
  %8 = load i32* %7, align 4, !dbg !1480
  %9 = and i32 %8, 1
  %toBool.i = icmp eq i32 %9, 0, !dbg !1480
  br i1 %toBool.i, label %bb4, label %__get_file.exit, !dbg !1480

__get_file.exit:                                  ; preds = %bb.i
  %10 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, !dbg !1479
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %10}, i64 0, metadata !561), !dbg !1477
  %11 = icmp eq %struct.exe_file_t* %10, null, !dbg !1481
  br i1 %11, label %bb4, label %bb5, !dbg !1481

bb4:                                              ; preds = %bb3, %bb.i, %__get_file.exit
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !1482
  store i32 9, i32* %12, align 4, !dbg !1482
  br label %bb24, !dbg !1483

bb5:                                              ; preds = %__get_file.exit
  %13 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1484
  %14 = icmp eq i32 %13, 0, !dbg !1484
  br i1 %14, label %bb8, label %bb6, !dbg !1484

bb6:                                              ; preds = %bb5
  %15 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !1484
  %16 = load i32* %15, align 4, !dbg !1484
  %17 = icmp eq i32 %16, %1, !dbg !1484
  br i1 %17, label %bb7, label %bb8, !dbg !1484

bb7:                                              ; preds = %bb6
  %18 = add i32 %13, -1, !dbg !1485
  store i32 %18, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1485
  %19 = tail call i32* @__errno_location() nounwind readnone, !dbg !1486
  store i32 5, i32* %19, align 4, !dbg !1486
  br label %bb24, !dbg !1487

bb8:                                              ; preds = %bb5, %bb6
  %20 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 3, !dbg !1488
  %21 = load %struct.exe_disk_file_t** %20, align 8, !dbg !1488
  %22 = icmp eq %struct.exe_disk_file_t* %21, null, !dbg !1488
  br i1 %22, label %bb9, label %bb17, !dbg !1488

bb9:                                              ; preds = %bb8
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !343) nounwind, !dbg !1489
  %23 = ptrtoint i8* %buf to i64, !dbg !1491
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !1491
  %25 = inttoptr i64 %24 to i8*, !dbg !1491
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !344) nounwind, !dbg !1491
  %26 = icmp eq i8* %25, %buf, !dbg !1492
  %27 = zext i1 %26 to i64, !dbg !1492
  tail call void @klee_assume(i64 %27) nounwind, !dbg !1492
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !559), !dbg !1490
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !346) nounwind, !dbg !1493
  %28 = tail call i64 @klee_get_valuel(i64 %count) nounwind, !dbg !1495
  tail call void @llvm.dbg.value(metadata !{i64 %28}, i64 0, metadata !347) nounwind, !dbg !1495
  %29 = icmp eq i64 %28, %count, !dbg !1496
  %30 = zext i1 %29 to i64, !dbg !1496
  tail call void @klee_assume(i64 %30) nounwind, !dbg !1496
  tail call void @llvm.dbg.value(metadata !{i64 %28}, i64 0, metadata !560), !dbg !1494
  tail call void @klee_check_memory_access(i8* %25, i64 %28) nounwind, !dbg !1497
  %31 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 0, !dbg !1498
  %32 = load i32* %31, align 8, !dbg !1498
  %33 = icmp eq i32 %32, 0, !dbg !1498
  br i1 %33, label %bb10, label %bb11, !dbg !1498

bb10:                                             ; preds = %bb9
  %34 = tail call i64 (i64, ...)* @syscall(i64 0, i32 %32, i8* %25, i64 %28) nounwind, !dbg !1499
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !563), !dbg !1499
  br label %bb12, !dbg !1499

bb11:                                             ; preds = %bb9
  %35 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 2, !dbg !1500
  %36 = load i64* %35, align 8, !dbg !1500
  %37 = tail call i64 (i64, ...)* @syscall(i64 17, i32 %32, i8* %25, i64 %28, i64 %36) nounwind, !dbg !1500
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !563), !dbg !1500
  br label %bb12, !dbg !1500

bb12:                                             ; preds = %bb11, %bb10
  %r.0.in = phi i64 [ %34, %bb10 ], [ %37, %bb11 ]
  %r.0 = trunc i64 %r.0.in to i32
  %38 = icmp eq i32 %r.0, -1, !dbg !1501
  br i1 %38, label %bb13, label %bb14, !dbg !1501

bb13:                                             ; preds = %bb12
  %39 = tail call i32* @__errno_location() nounwind readnone, !dbg !1502
  %40 = tail call i32 @klee_get_errno() nounwind, !dbg !1502
  store i32 %40, i32* %39, align 4, !dbg !1502
  br label %bb24, !dbg !1503

bb14:                                             ; preds = %bb12
  %41 = load i32* %31, align 8, !dbg !1504
  %42 = icmp eq i32 %41, 0, !dbg !1504
  br i1 %42, label %bb14.bb16_crit_edge, label %bb15, !dbg !1504

bb14.bb16_crit_edge:                              ; preds = %bb14
  %.pre = sext i32 %r.0 to i64, !dbg !1505
  br label %bb24

bb15:                                             ; preds = %bb14
  %43 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 2, !dbg !1506
  %44 = load i64* %43, align 8, !dbg !1506
  %45 = sext i32 %r.0 to i64, !dbg !1506
  %46 = add nsw i64 %44, %45, !dbg !1506
  store i64 %46, i64* %43, align 8, !dbg !1506
  br label %bb24, !dbg !1506

bb17:                                             ; preds = %bb8
  %47 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 2, !dbg !1507
  %48 = load i64* %47, align 8, !dbg !1507
  %49 = icmp slt i64 %48, 0, !dbg !1507
  br i1 %49, label %bb18, label %bb19, !dbg !1507

bb18:                                             ; preds = %bb17
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.4855, i64 0, i64 0)) noreturn nounwind, !dbg !1507
  unreachable, !dbg !1507

bb19:                                             ; preds = %bb17
  %50 = getelementptr inbounds %struct.exe_disk_file_t* %21, i64 0, i32 0, !dbg !1508
  %51 = load i32* %50, align 8, !dbg !1508
  %52 = zext i32 %51 to i64, !dbg !1508
  %53 = icmp slt i64 %52, %48, !dbg !1508
  br i1 %53, label %bb24, label %bb21, !dbg !1508

bb21:                                             ; preds = %bb19
  %54 = add i64 %48, %count, !dbg !1509
  %55 = sub nsw i64 %52, %48, !dbg !1510
  %56 = icmp ugt i64 %54, %52, !dbg !1509
  %.count = select i1 %56, i64 %55, i64 %count
  %57 = getelementptr inbounds %struct.exe_disk_file_t* %21, i64 0, i32 1, !dbg !1511
  %58 = load i8** %57, align 8, !dbg !1511
  %59 = getelementptr inbounds i8* %58, i64 %48, !dbg !1511
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %59, i64 %.count, i32 1, i1 false), !dbg !1511
  %60 = load i64* %47, align 8, !dbg !1512
  %61 = add i64 %60, %.count, !dbg !1512
  store i64 %61, i64* %47, align 8, !dbg !1512
  br label %bb24, !dbg !1513

bb24:                                             ; preds = %bb15, %bb14.bb16_crit_edge, %bb19, %entry, %bb21, %bb13, %bb7, %bb4, %bb2
  %.0 = phi i64 [ -1, %bb2 ], [ -1, %bb4 ], [ -1, %bb7 ], [ -1, %bb13 ], [ %.count, %bb21 ], [ 0, %entry ], [ 0, %bb19 ], [ %.pre, %bb14.bb16_crit_edge ], [ %45, %bb15 ]
  ret i64 %.0, !dbg !1514
}

declare i32 @geteuid() nounwind

declare i32 @getgid() nounwind

define i32 @fchmod(i32 %fd, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !567), !dbg !1515
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !568), !dbg !1515
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1516
  %0 = icmp ult i32 %fd, 32, !dbg !1518
  br i1 %0, label %bb.i, label %bb, !dbg !1518

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1519
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1519
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1520
  %3 = load i32* %2, align 4, !dbg !1520
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1520
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1520

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1519
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !569), !dbg !1517
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1521
  br i1 %6, label %bb, label %bb1, !dbg !1521

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1522
  store i32 9, i32* %7, align 4, !dbg !1522
  br label %bb9, !dbg !1523

bb1:                                              ; preds = %__get_file.exit
  %8 = load i32* @n_calls.5132, align 4, !dbg !1524
  %9 = add nsw i32 %8, 1, !dbg !1524
  store i32 %9, i32* @n_calls.5132, align 4, !dbg !1524
  %10 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1525
  %11 = icmp eq i32 %10, 0, !dbg !1525
  br i1 %11, label %bb4, label %bb2, !dbg !1525

bb2:                                              ; preds = %bb1
  %12 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 8, !dbg !1525
  %13 = load i32* %12, align 4, !dbg !1525
  %14 = icmp eq i32 %13, %9, !dbg !1525
  br i1 %14, label %bb3, label %bb4, !dbg !1525

bb3:                                              ; preds = %bb2
  %15 = add i32 %10, -1, !dbg !1526
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1526
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !1527
  store i32 5, i32* %16, align 4, !dbg !1527
  br label %bb9, !dbg !1528

bb4:                                              ; preds = %bb1, %bb2
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1529
  %18 = load %struct.exe_disk_file_t** %17, align 8, !dbg !1529
  %19 = icmp eq %struct.exe_disk_file_t* %18, null, !dbg !1529
  br i1 %19, label %bb6, label %bb5, !dbg !1529

bb5:                                              ; preds = %bb4
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %18}, i64 0, metadata !565) nounwind, !dbg !1530
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !566) nounwind, !dbg !1530
  %20 = tail call i32 @geteuid() nounwind, !dbg !1532
  %21 = getelementptr inbounds %struct.exe_disk_file_t* %18, i64 0, i32 2, !dbg !1532
  %22 = load %struct.stat** %21, align 8, !dbg !1532
  %23 = getelementptr inbounds %struct.stat* %22, i64 0, i32 4, !dbg !1532
  %24 = load i32* %23, align 4, !dbg !1532
  %25 = icmp eq i32 %20, %24, !dbg !1532
  br i1 %25, label %bb.i11, label %bb3.i, !dbg !1532

bb.i11:                                           ; preds = %bb5
  %26 = tail call i32 @getgid() nounwind, !dbg !1534
  %27 = load %struct.stat** %21, align 8, !dbg !1534
  %28 = getelementptr inbounds %struct.stat* %27, i64 0, i32 5, !dbg !1534
  %29 = load i32* %28, align 8, !dbg !1534
  %30 = and i32 %mode, 3071, !dbg !1535
  %31 = icmp eq i32 %26, %29, !dbg !1534
  %mode..i = select i1 %31, i32 %mode, i32 %30
  %32 = getelementptr inbounds %struct.stat* %27, i64 0, i32 3, !dbg !1536
  %33 = load i32* %32, align 8, !dbg !1536
  %34 = and i32 %33, -4096, !dbg !1536
  %35 = and i32 %mode..i, 4095, !dbg !1536
  %36 = or i32 %35, %34, !dbg !1536
  store i32 %36, i32* %32, align 8, !dbg !1536
  br label %bb9, !dbg !1537

bb3.i:                                            ; preds = %bb5
  %37 = tail call i32* @__errno_location() nounwind readnone, !dbg !1538
  store i32 1, i32* %37, align 4, !dbg !1538
  br label %bb9, !dbg !1539

bb6:                                              ; preds = %bb4
  %38 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1540
  %39 = load i32* %38, align 8, !dbg !1540
  %40 = tail call i64 (i64, ...)* @syscall(i64 91, i32 %39, i32 %mode) nounwind, !dbg !1540
  %41 = trunc i64 %40 to i32, !dbg !1540
  tail call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !571), !dbg !1540
  %42 = icmp eq i32 %41, -1, !dbg !1541
  br i1 %42, label %bb7, label %bb9, !dbg !1541

bb7:                                              ; preds = %bb6
  %43 = tail call i32* @__errno_location() nounwind readnone, !dbg !1542
  %44 = tail call i32 @klee_get_errno() nounwind, !dbg !1542
  store i32 %44, i32* %43, align 4, !dbg !1542
  br label %bb9, !dbg !1542

bb9:                                              ; preds = %bb3.i, %bb.i11, %bb6, %bb7, %bb3, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb3 ], [ -1, %bb7 ], [ %41, %bb6 ], [ 0, %bb.i11 ], [ -1, %bb3.i ]
  ret i32 %.0, !dbg !1523
}

define i32 @chmod(i8* %path, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !573), !dbg !1543
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !574), !dbg !1543
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !266), !dbg !1544
  %0 = load i8* %path, align 1, !dbg !1546
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !267), !dbg !1546
  %1 = icmp eq i8 %0, 0, !dbg !1547
  br i1 %1, label %__get_sym_file.exit, label %bb.i, !dbg !1547

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !1547
  %3 = load i8* %2, align 1, !dbg !1547
  %4 = icmp eq i8 %3, 0, !dbg !1547
  br i1 %4, label %bb8.preheader.i, label %__get_sym_file.exit, !dbg !1547

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1548
  %6 = sext i8 %0 to i32, !dbg !1549
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %19, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !1549
  %8 = add nsw i32 %7, 65, !dbg !1549
  %9 = icmp eq i32 %6, %8, !dbg !1549
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !1549

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1550
  %11 = zext i32 %19 to i64, !dbg !1550
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !1550
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !1551
  %13 = load %struct.stat** %12, align 8, !dbg !1551
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !1551
  %15 = load i64* %14, align 8, !dbg !1551
  %16 = icmp eq i64 %15, 0, !dbg !1551
  br i1 %16, label %__get_sym_file.exit, label %bb6.i, !dbg !1551

bb6.i:                                            ; preds = %bb4.i
  %17 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !1550
  br label %__get_sym_file.exit, !dbg !1552

bb7.i:                                            ; preds = %bb3.i
  %18 = add i32 %19, 1, !dbg !1548
  br label %bb8.i, !dbg !1548

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %19 = phi i32 [ %18, %bb7.i ], [ 0, %bb8.preheader.i ]
  %20 = icmp ugt i32 %5, %19, !dbg !1548
  br i1 %20, label %bb3.i, label %__get_sym_file.exit, !dbg !1548

__get_sym_file.exit:                              ; preds = %bb8.i, %entry, %bb.i, %bb4.i, %bb6.i
  %.0.i = phi %struct.exe_disk_file_t* [ %17, %bb6.i ], [ null, %bb.i ], [ null, %entry ], [ null, %bb4.i ], [ null, %bb8.i ]
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %.0.i}, i64 0, metadata !575), !dbg !1545
  %21 = load i32* @n_calls.5109, align 4, !dbg !1553
  %22 = add nsw i32 %21, 1, !dbg !1553
  store i32 %22, i32* @n_calls.5109, align 4, !dbg !1553
  %23 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1554
  %24 = icmp eq i32 %23, 0, !dbg !1554
  br i1 %24, label %bb2, label %bb, !dbg !1554

bb:                                               ; preds = %__get_sym_file.exit
  %25 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 11), align 8, !dbg !1554
  %26 = load i32* %25, align 4, !dbg !1554
  %27 = icmp eq i32 %26, %22, !dbg !1554
  br i1 %27, label %bb1, label %bb2, !dbg !1554

bb1:                                              ; preds = %bb
  %28 = add i32 %23, -1, !dbg !1555
  store i32 %28, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1555
  %29 = tail call i32* @__errno_location() nounwind readnone, !dbg !1556
  store i32 5, i32* %29, align 4, !dbg !1556
  br label %bb7, !dbg !1557

bb2:                                              ; preds = %__get_sym_file.exit, %bb
  %30 = icmp eq %struct.exe_disk_file_t* %.0.i, null, !dbg !1558
  br i1 %30, label %bb4, label %bb3, !dbg !1558

bb3:                                              ; preds = %bb2
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %.0.i}, i64 0, metadata !565) nounwind, !dbg !1559
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !566) nounwind, !dbg !1559
  %31 = tail call i32 @geteuid() nounwind, !dbg !1561
  %32 = getelementptr inbounds %struct.exe_disk_file_t* %.0.i, i64 0, i32 2, !dbg !1561
  %33 = load %struct.stat** %32, align 8, !dbg !1561
  %34 = getelementptr inbounds %struct.stat* %33, i64 0, i32 4, !dbg !1561
  %35 = load i32* %34, align 4, !dbg !1561
  %36 = icmp eq i32 %31, %35, !dbg !1561
  br i1 %36, label %bb.i13, label %bb3.i14, !dbg !1561

bb.i13:                                           ; preds = %bb3
  %37 = tail call i32 @getgid() nounwind, !dbg !1562
  %38 = load %struct.stat** %32, align 8, !dbg !1562
  %39 = getelementptr inbounds %struct.stat* %38, i64 0, i32 5, !dbg !1562
  %40 = load i32* %39, align 8, !dbg !1562
  %41 = and i32 %mode, 3071, !dbg !1563
  %42 = icmp eq i32 %37, %40, !dbg !1562
  %mode..i = select i1 %42, i32 %mode, i32 %41
  %43 = getelementptr inbounds %struct.stat* %38, i64 0, i32 3, !dbg !1564
  %44 = load i32* %43, align 8, !dbg !1564
  %45 = and i32 %44, -4096, !dbg !1564
  %46 = and i32 %mode..i, 4095, !dbg !1564
  %47 = or i32 %46, %45, !dbg !1564
  store i32 %47, i32* %43, align 8, !dbg !1564
  br label %bb7, !dbg !1565

bb3.i14:                                          ; preds = %bb3
  %48 = tail call i32* @__errno_location() nounwind readnone, !dbg !1566
  store i32 1, i32* %48, align 4, !dbg !1566
  br label %bb7, !dbg !1567

bb4:                                              ; preds = %bb2
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !353) nounwind, !dbg !1568
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !343) nounwind, !dbg !1570
  %49 = ptrtoint i8* %path to i64, !dbg !1572
  %50 = tail call i64 @klee_get_valuel(i64 %49) nounwind, !dbg !1572
  %51 = inttoptr i64 %50 to i8*, !dbg !1572
  tail call void @llvm.dbg.value(metadata !{i8* %51}, i64 0, metadata !344) nounwind, !dbg !1572
  %52 = icmp eq i8* %51, %path, !dbg !1573
  %53 = zext i1 %52 to i64, !dbg !1573
  tail call void @klee_assume(i64 %53) nounwind, !dbg !1573
  tail call void @llvm.dbg.value(metadata !{i8* %51}, i64 0, metadata !354) nounwind, !dbg !1571
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !1574
  br label %bb.i9, !dbg !1574

bb.i9:                                            ; preds = %bb6.i11, %bb4
  %sc.0.i = phi i8* [ %51, %bb4 ], [ %sc.1.i, %bb6.i11 ]
  %54 = phi i32 [ 0, %bb4 ], [ %66, %bb6.i11 ]
  %tmp.i = add i32 %54, -1
  %55 = load i8* %sc.0.i, align 1, !dbg !1575
  %56 = and i32 %tmp.i, %54, !dbg !1576
  %57 = icmp eq i32 %56, 0, !dbg !1576
  br i1 %57, label %bb1.i, label %bb5.i, !dbg !1576

bb1.i:                                            ; preds = %bb.i9
  switch i8 %55, label %bb6.i11 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i10
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %55}, i64 0, metadata !357) nounwind, !dbg !1575
  store i8 0, i8* %sc.0.i, align 1, !dbg !1577
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !1577
  br label %__concretize_string.exit, !dbg !1577

bb4.i10:                                          ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1578
  %58 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1578
  br label %bb6.i11, !dbg !1578

bb5.i:                                            ; preds = %bb.i9
  %59 = sext i8 %55 to i64, !dbg !1579
  %60 = tail call i64 @klee_get_valuel(i64 %59) nounwind, !dbg !1579
  %61 = trunc i64 %60 to i8, !dbg !1579
  %62 = icmp eq i8 %61, %55, !dbg !1580
  %63 = zext i1 %62 to i64, !dbg !1580
  tail call void @klee_assume(i64 %63) nounwind, !dbg !1580
  store i8 %61, i8* %sc.0.i, align 1, !dbg !1581
  %64 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1581
  %65 = icmp eq i8 %61, 0, !dbg !1582
  br i1 %65, label %__concretize_string.exit, label %bb6.i11, !dbg !1582

bb6.i11:                                          ; preds = %bb5.i, %bb4.i10, %bb1.i
  %sc.1.i = phi i8* [ %58, %bb4.i10 ], [ %64, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %66 = add i32 %54, 1, !dbg !1574
  br label %bb.i9, !dbg !1574

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %67 = tail call i64 (i64, ...)* @syscall(i64 90, i8* %path, i32 %mode) nounwind, !dbg !1569
  %68 = trunc i64 %67 to i32, !dbg !1569
  tail call void @llvm.dbg.value(metadata !{i32 %68}, i64 0, metadata !577), !dbg !1569
  %69 = icmp eq i32 %68, -1, !dbg !1583
  br i1 %69, label %bb5, label %bb7, !dbg !1583

bb5:                                              ; preds = %__concretize_string.exit
  %70 = tail call i32* @__errno_location() nounwind readnone, !dbg !1584
  %71 = tail call i32 @klee_get_errno() nounwind, !dbg !1584
  store i32 %71, i32* %70, align 4, !dbg !1584
  br label %bb7, !dbg !1584

bb7:                                              ; preds = %bb3.i14, %bb.i13, %__concretize_string.exit, %bb5, %bb1
  %.0 = phi i32 [ -1, %bb1 ], [ -1, %bb5 ], [ %68, %__concretize_string.exit ], [ 0, %bb.i13 ], [ -1, %bb3.i14 ]
  ret i32 %.0, !dbg !1557
}

define i64 @write(i32 %fd, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !579), !dbg !1585
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !580), !dbg !1585
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !581), !dbg !1585
  %0 = load i32* @n_calls.4913, align 4, !dbg !1586
  %1 = add nsw i32 %0, 1, !dbg !1586
  store i32 %1, i32* @n_calls.4913, align 4, !dbg !1586
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !272), !dbg !1587
  %2 = icmp ult i32 %fd, 32, !dbg !1589
  br i1 %2, label %bb.i, label %bb, !dbg !1589

bb.i:                                             ; preds = %entry
  %3 = sext i32 %fd to i64, !dbg !1590
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1590
  %4 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 1, !dbg !1591
  %5 = load i32* %4, align 4, !dbg !1591
  %6 = and i32 %5, 1
  %toBool.i = icmp eq i32 %6, 0, !dbg !1591
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1591

__get_file.exit:                                  ; preds = %bb.i
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, !dbg !1590
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !582), !dbg !1588
  %8 = icmp eq %struct.exe_file_t* %7, null, !dbg !1592
  br i1 %8, label %bb, label %bb1, !dbg !1592

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !1593
  store i32 9, i32* %9, align 4, !dbg !1593
  br label %bb28, !dbg !1594

bb1:                                              ; preds = %__get_file.exit
  %10 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1595
  %11 = icmp eq i32 %10, 0, !dbg !1595
  br i1 %11, label %bb4, label %bb2, !dbg !1595

bb2:                                              ; preds = %bb1
  %12 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !1595
  %13 = load i32* %12, align 4, !dbg !1595
  %14 = icmp eq i32 %13, %1, !dbg !1595
  br i1 %14, label %bb3, label %bb4, !dbg !1595

bb3:                                              ; preds = %bb2
  %15 = add i32 %10, -1, !dbg !1596
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1596
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !1597
  store i32 5, i32* %16, align 4, !dbg !1597
  br label %bb28, !dbg !1598

bb4:                                              ; preds = %bb1, %bb2
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 3, !dbg !1599
  %18 = load %struct.exe_disk_file_t** %17, align 8, !dbg !1599
  %19 = icmp eq %struct.exe_disk_file_t* %18, null, !dbg !1599
  br i1 %19, label %bb5, label %bb15, !dbg !1599

bb5:                                              ; preds = %bb4
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !343) nounwind, !dbg !1600
  %20 = ptrtoint i8* %buf to i64, !dbg !1602
  %21 = tail call i64 @klee_get_valuel(i64 %20) nounwind, !dbg !1602
  %22 = inttoptr i64 %21 to i8*, !dbg !1602
  tail call void @llvm.dbg.value(metadata !{i8* %22}, i64 0, metadata !344) nounwind, !dbg !1602
  %23 = icmp eq i8* %22, %buf, !dbg !1603
  %24 = zext i1 %23 to i64, !dbg !1603
  tail call void @klee_assume(i64 %24) nounwind, !dbg !1603
  tail call void @llvm.dbg.value(metadata !{i8* %22}, i64 0, metadata !580), !dbg !1601
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !346) nounwind, !dbg !1604
  %25 = tail call i64 @klee_get_valuel(i64 %count) nounwind, !dbg !1606
  tail call void @llvm.dbg.value(metadata !{i64 %25}, i64 0, metadata !347) nounwind, !dbg !1606
  %26 = icmp eq i64 %25, %count, !dbg !1607
  %27 = zext i1 %26 to i64, !dbg !1607
  tail call void @klee_assume(i64 %27) nounwind, !dbg !1607
  tail call void @llvm.dbg.value(metadata !{i64 %25}, i64 0, metadata !581), !dbg !1605
  tail call void @klee_check_memory_access(i8* %22, i64 %25) nounwind, !dbg !1608
  %28 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 0, !dbg !1609
  %29 = load i32* %28, align 8, !dbg !1609
  %30 = add i32 %29, -1, !dbg !1609
  %31 = icmp ult i32 %30, 2, !dbg !1609
  br i1 %31, label %bb6, label %bb7, !dbg !1609

bb6:                                              ; preds = %bb5
  %32 = tail call i64 (i64, ...)* @syscall(i64 1, i32 %29, i8* %22, i64 %25) nounwind, !dbg !1610
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !584), !dbg !1610
  br label %bb8, !dbg !1610

bb7:                                              ; preds = %bb5
  %33 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 2, !dbg !1611
  %34 = load i64* %33, align 8, !dbg !1611
  %35 = tail call i64 (i64, ...)* @syscall(i64 18, i32 %29, i8* %22, i64 %25, i64 %34) nounwind, !dbg !1611
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !584), !dbg !1611
  br label %bb8, !dbg !1611

bb8:                                              ; preds = %bb7, %bb6
  %r.0.in = phi i64 [ %32, %bb6 ], [ %35, %bb7 ]
  %r.0 = trunc i64 %r.0.in to i32
  %36 = icmp eq i32 %r.0, -1, !dbg !1612
  br i1 %36, label %bb9, label %bb10, !dbg !1612

bb9:                                              ; preds = %bb8
  %37 = tail call i32* @__errno_location() nounwind readnone, !dbg !1613
  %38 = tail call i32 @klee_get_errno() nounwind, !dbg !1613
  store i32 %38, i32* %37, align 4, !dbg !1613
  br label %bb28, !dbg !1614

bb10:                                             ; preds = %bb8
  %39 = icmp slt i32 %r.0, 0, !dbg !1615
  br i1 %39, label %bb11, label %bb12, !dbg !1615

bb11:                                             ; preds = %bb10
  tail call void @__assert_fail(i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([6 x i8]* @__PRETTY_FUNCTION__.4916, i64 0, i64 0)) noreturn nounwind, !dbg !1615
  unreachable, !dbg !1615

bb12:                                             ; preds = %bb10
  %40 = load i32* %28, align 8, !dbg !1616
  %41 = add i32 %40, -1, !dbg !1616
  %42 = icmp ugt i32 %41, 1, !dbg !1616
  br i1 %42, label %bb13, label %bb12.bb14_crit_edge, !dbg !1616

bb12.bb14_crit_edge:                              ; preds = %bb12
  %.pre = sext i32 %r.0 to i64, !dbg !1617
  br label %bb28

bb13:                                             ; preds = %bb12
  %43 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 2, !dbg !1618
  %44 = load i64* %43, align 8, !dbg !1618
  %45 = sext i32 %r.0 to i64, !dbg !1618
  %46 = add nsw i64 %44, %45, !dbg !1618
  store i64 %46, i64* %43, align 8, !dbg !1618
  br label %bb28, !dbg !1618

bb15:                                             ; preds = %bb4
  tail call void @llvm.dbg.value(metadata !1284, i64 0, metadata !586), !dbg !1619
  %47 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 2, !dbg !1620
  %48 = load i64* %47, align 8, !dbg !1620
  %49 = add i64 %48, %count, !dbg !1620
  %50 = getelementptr inbounds %struct.exe_disk_file_t* %18, i64 0, i32 0, !dbg !1620
  %51 = load i32* %50, align 8, !dbg !1620
  %52 = zext i32 %51 to i64, !dbg !1620
  %53 = icmp ugt i64 %49, %52, !dbg !1620
  br i1 %53, label %bb17, label %bb21, !dbg !1620

bb17:                                             ; preds = %bb15
  %54 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 3), align 8, !dbg !1621
  %55 = icmp eq i32 %54, 0, !dbg !1621
  br i1 %55, label %bb19, label %bb18, !dbg !1621

bb18:                                             ; preds = %bb17
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 453, i8* getelementptr inbounds ([6 x i8]* @__PRETTY_FUNCTION__.4916, i64 0, i64 0)) noreturn nounwind, !dbg !1622
  unreachable, !dbg !1622

bb19:                                             ; preds = %bb17
  %56 = icmp slt i64 %48, %52, !dbg !1623
  br i1 %56, label %bb20, label %bb23, !dbg !1623

bb20:                                             ; preds = %bb19
  %57 = sub nsw i64 %52, %48, !dbg !1624
  tail call void @llvm.dbg.value(metadata !{i64 %57}, i64 0, metadata !586), !dbg !1624
  br label %bb21, !dbg !1624

bb21:                                             ; preds = %bb15, %bb20
  %actual_count.0 = phi i64 [ %57, %bb20 ], [ %count, %bb15 ]
  %58 = icmp eq i64 %actual_count.0, 0, !dbg !1625
  br i1 %58, label %bb23, label %bb22, !dbg !1625

bb22:                                             ; preds = %bb21
  %59 = getelementptr inbounds %struct.exe_disk_file_t* %18, i64 0, i32 1, !dbg !1626
  %60 = load i8** %59, align 8, !dbg !1626
  %61 = getelementptr inbounds i8* %60, i64 %48, !dbg !1626
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %buf, i64 %actual_count.0, i32 1, i1 false), !dbg !1626
  br label %bb23, !dbg !1626

bb23:                                             ; preds = %bb19, %bb21, %bb22
  %actual_count.030 = phi i64 [ 0, %bb21 ], [ %actual_count.0, %bb22 ], [ 0, %bb19 ]
  %62 = icmp eq i64 %actual_count.030, %count, !dbg !1627
  br i1 %62, label %bb25, label %bb24, !dbg !1627

bb24:                                             ; preds = %bb23
  %63 = load %struct._IO_FILE** @stderr, align 8, !dbg !1628
  %64 = bitcast %struct._IO_FILE* %63 to i8*, !dbg !1628
  %65 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i64 1, i64 32, i8* %64) nounwind, !dbg !1628
  br label %bb25, !dbg !1628

bb25:                                             ; preds = %bb23, %bb24
  %66 = load %struct.exe_disk_file_t** %17, align 8, !dbg !1629
  %67 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !1629
  %68 = icmp eq %struct.exe_disk_file_t* %66, %67, !dbg !1629
  br i1 %68, label %bb26, label %bb27, !dbg !1629

bb26:                                             ; preds = %bb25
  %69 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !1630
  %70 = trunc i64 %actual_count.030 to i32, !dbg !1630
  %71 = add i32 %69, %70, !dbg !1630
  store i32 %71, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !1630
  br label %bb27, !dbg !1630

bb27:                                             ; preds = %bb25, %bb26
  %72 = load i64* %47, align 8, !dbg !1631
  %73 = add i64 %72, %count, !dbg !1631
  store i64 %73, i64* %47, align 8, !dbg !1631
  br label %bb28, !dbg !1632

bb28:                                             ; preds = %bb13, %bb12.bb14_crit_edge, %bb27, %bb9, %bb3, %bb
  %.0 = phi i64 [ -1, %bb ], [ -1, %bb3 ], [ -1, %bb9 ], [ %count, %bb27 ], [ %.pre, %bb12.bb14_crit_edge ], [ %45, %bb13 ]
  ret i64 %.0, !dbg !1594
}

declare i64 @fwrite(i8* nocapture, i64, i64, i8* nocapture) nounwind

define i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !588), !dbg !1633
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !589), !dbg !1633
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !590), !dbg !1633
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !594), !dbg !1634
  br label %bb2, !dbg !1634

bb:                                               ; preds = %bb2
  %scevgep = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 1
  %0 = load i32* %scevgep, align 4, !dbg !1635
  %1 = and i32 %0, 1, !dbg !1635
  %2 = icmp eq i32 %1, 0, !dbg !1635
  br i1 %2, label %bb5, label %bb1, !dbg !1635

bb1:                                              ; preds = %bb
  %indvar.next = add i64 %indvar, 1
  br label %bb2, !dbg !1634

bb2:                                              ; preds = %bb1, %entry
  %indvar = phi i64 [ %indvar.next, %bb1 ], [ 0, %entry ]
  %fd.0 = trunc i64 %indvar to i32
  %3 = icmp slt i32 %fd.0, 32, !dbg !1634
  br i1 %3, label %bb, label %bb3, !dbg !1634

bb3:                                              ; preds = %bb2
  %4 = icmp eq i32 %fd.0, 32, !dbg !1636
  br i1 %4, label %bb4, label %bb5, !dbg !1636

bb4:                                              ; preds = %bb3
  %5 = tail call i32* @__errno_location() nounwind readnone, !dbg !1637
  store i32 24, i32* %5, align 4, !dbg !1637
  br label %bb25, !dbg !1638

bb5:                                              ; preds = %bb, %bb3
  %6 = sext i32 %fd.0 to i64, !dbg !1639
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, !dbg !1639
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !593), !dbg !1639
  %8 = bitcast %struct.exe_file_t* %7 to i8*, !dbg !1640
  tail call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 8, i1 false), !dbg !1640
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !266), !dbg !1641
  %9 = load i8* %pathname, align 1, !dbg !1643
  tail call void @llvm.dbg.value(metadata !{i8 %9}, i64 0, metadata !267), !dbg !1643
  %10 = icmp eq i8 %9, 0, !dbg !1644
  br i1 %10, label %bb16, label %bb.i, !dbg !1644

bb.i:                                             ; preds = %bb5
  %11 = getelementptr inbounds i8* %pathname, i64 1, !dbg !1644
  %12 = load i8* %11, align 1, !dbg !1644
  %13 = icmp eq i8 %12, 0, !dbg !1644
  br i1 %13, label %bb8.preheader.i, label %bb16, !dbg !1644

bb8.preheader.i:                                  ; preds = %bb.i
  %14 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1645
  %15 = sext i8 %9 to i32, !dbg !1646
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %27, 24
  %16 = ashr exact i32 %sext.i, 24, !dbg !1646
  %17 = add nsw i32 %16, 65, !dbg !1646
  %18 = icmp eq i32 %15, %17, !dbg !1646
  br i1 %18, label %bb4.i, label %bb7.i, !dbg !1646

bb4.i:                                            ; preds = %bb3.i
  %19 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1647
  %20 = zext i32 %27 to i64, !dbg !1647
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !1647
  %21 = getelementptr inbounds %struct.exe_disk_file_t* %19, i64 %20, i32 2, !dbg !1648
  %22 = load %struct.stat** %21, align 8, !dbg !1648
  %23 = getelementptr inbounds %struct.stat* %22, i64 0, i32 1, !dbg !1648
  %24 = load i64* %23, align 8, !dbg !1648
  %25 = icmp eq i64 %24, 0, !dbg !1648
  br i1 %25, label %bb16, label %__get_sym_file.exit, !dbg !1648

bb7.i:                                            ; preds = %bb3.i
  %26 = add i32 %27, 1, !dbg !1645
  br label %bb8.i, !dbg !1645

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %27 = phi i32 [ %26, %bb7.i ], [ 0, %bb8.preheader.i ]
  %28 = icmp ugt i32 %14, %27, !dbg !1645
  br i1 %28, label %bb3.i, label %bb16, !dbg !1645

__get_sym_file.exit:                              ; preds = %bb4.i
  %29 = getelementptr inbounds %struct.exe_disk_file_t* %19, i64 %20, !dbg !1647
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %29}, i64 0, metadata !591), !dbg !1642
  %30 = icmp eq %struct.exe_disk_file_t* %29, null, !dbg !1649
  br i1 %30, label %bb16, label %bb6, !dbg !1649

bb6:                                              ; preds = %__get_sym_file.exit
  %31 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 3, !dbg !1650
  store %struct.exe_disk_file_t* %29, %struct.exe_disk_file_t** %31, align 8, !dbg !1650
  %32 = and i32 %flags, 192
  switch i32 %32, label %bb12 [
    i32 192, label %bb8
    i32 128, label %bb11
  ]

bb8:                                              ; preds = %bb6
  %33 = tail call i32* @__errno_location() nounwind readnone, !dbg !1651
  store i32 17, i32* %33, align 4, !dbg !1651
  br label %bb25, !dbg !1652

bb11:                                             ; preds = %bb6
  %34 = load %struct._IO_FILE** @stderr, align 8, !dbg !1653
  %35 = bitcast %struct._IO_FILE* %34 to i8*, !dbg !1653
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str23, i64 0, i64 0), i64 1, i64 46, i8* %35) nounwind, !dbg !1653
  %37 = tail call i32* @__errno_location() nounwind readnone, !dbg !1654
  store i32 13, i32* %37, align 4, !dbg !1654
  br label %bb25, !dbg !1655

bb12:                                             ; preds = %bb6
  %38 = load %struct.stat** %21, align 8, !dbg !1656
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !279), !dbg !1657
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %38}, i64 0, metadata !280), !dbg !1657
  %39 = getelementptr inbounds %struct.stat* %38, i64 0, i32 3, !dbg !1658
  %40 = load i32* %39, align 8, !dbg !1658
  tail call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !284), !dbg !1658
  %41 = and i32 %flags, 2, !dbg !1659
  %42 = icmp eq i32 %41, 0, !dbg !1659
  %43 = and i32 %flags, 3
  %44 = icmp eq i32 %43, 0
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !281), !dbg !1660
  br i1 %42, label %bb9.i, label %bb7.i34, !dbg !1661

bb7.i34:                                          ; preds = %bb12
  %45 = and i32 %40, 292, !dbg !1661
  %46 = icmp eq i32 %45, 0, !dbg !1661
  br i1 %46, label %bb9.i, label %bb13, !dbg !1661

bb9.i:                                            ; preds = %bb7.i34, %bb12
  br i1 %44, label %bb14, label %bb10.i, !dbg !1662

bb10.i:                                           ; preds = %bb9.i
  %47 = and i32 %40, 146, !dbg !1662
  %48 = icmp eq i32 %47, 0, !dbg !1662
  br i1 %48, label %bb13, label %bb14, !dbg !1662

bb13:                                             ; preds = %bb7.i34, %bb10.i
  %49 = tail call i32* @__errno_location() nounwind readnone, !dbg !1663
  store i32 13, i32* %49, align 4, !dbg !1663
  br label %bb25, !dbg !1664

bb14:                                             ; preds = %bb10.i, %bb9.i
  %50 = and i32 %40, -512, !dbg !1665
  %51 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 1), align 8, !dbg !1665
  %not = xor i32 %51, -1, !dbg !1665
  %52 = and i32 %not, %mode, !dbg !1665
  %53 = or i32 %52, %50, !dbg !1665
  store i32 %53, i32* %39, align 8, !dbg !1665
  br label %bb19, !dbg !1665

bb16:                                             ; preds = %bb8.i, %bb4.i, %bb5, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !353) nounwind, !dbg !1666
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !343) nounwind, !dbg !1668
  %54 = ptrtoint i8* %pathname to i64, !dbg !1670
  %55 = tail call i64 @klee_get_valuel(i64 %54) nounwind, !dbg !1670
  %56 = inttoptr i64 %55 to i8*, !dbg !1670
  tail call void @llvm.dbg.value(metadata !{i8* %56}, i64 0, metadata !344) nounwind, !dbg !1670
  %57 = icmp eq i8* %56, %pathname, !dbg !1671
  %58 = zext i1 %57 to i64, !dbg !1671
  tail call void @klee_assume(i64 %58) nounwind, !dbg !1671
  tail call void @llvm.dbg.value(metadata !{i8* %56}, i64 0, metadata !354) nounwind, !dbg !1669
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !1672
  br label %bb.i30, !dbg !1672

bb.i30:                                           ; preds = %bb6.i32, %bb16
  %sc.0.i = phi i8* [ %56, %bb16 ], [ %sc.1.i, %bb6.i32 ]
  %59 = phi i32 [ 0, %bb16 ], [ %71, %bb6.i32 ]
  %tmp.i = add i32 %59, -1
  %60 = load i8* %sc.0.i, align 1, !dbg !1673
  %61 = and i32 %tmp.i, %59, !dbg !1674
  %62 = icmp eq i32 %61, 0, !dbg !1674
  br i1 %62, label %bb1.i, label %bb5.i, !dbg !1674

bb1.i:                                            ; preds = %bb.i30
  switch i8 %60, label %bb6.i32 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i31
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %60}, i64 0, metadata !357) nounwind, !dbg !1673
  store i8 0, i8* %sc.0.i, align 1, !dbg !1675
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !1675
  br label %__concretize_string.exit, !dbg !1675

bb4.i31:                                          ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1676
  %63 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1676
  br label %bb6.i32, !dbg !1676

bb5.i:                                            ; preds = %bb.i30
  %64 = sext i8 %60 to i64, !dbg !1677
  %65 = tail call i64 @klee_get_valuel(i64 %64) nounwind, !dbg !1677
  %66 = trunc i64 %65 to i8, !dbg !1677
  %67 = icmp eq i8 %66, %60, !dbg !1678
  %68 = zext i1 %67 to i64, !dbg !1678
  tail call void @klee_assume(i64 %68) nounwind, !dbg !1678
  store i8 %66, i8* %sc.0.i, align 1, !dbg !1679
  %69 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1679
  %70 = icmp eq i8 %66, 0, !dbg !1680
  br i1 %70, label %__concretize_string.exit, label %bb6.i32, !dbg !1680

bb6.i32:                                          ; preds = %bb5.i, %bb4.i31, %bb1.i
  %sc.1.i = phi i8* [ %63, %bb4.i31 ], [ %69, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %71 = add i32 %59, 1, !dbg !1672
  br label %bb.i30, !dbg !1672

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %72 = tail call i64 (i64, ...)* @syscall(i64 2, i8* %pathname, i32 %flags, i32 %mode) nounwind, !dbg !1667
  %73 = trunc i64 %72 to i32, !dbg !1667
  tail call void @llvm.dbg.value(metadata !{i32 %73}, i64 0, metadata !595), !dbg !1667
  %74 = icmp eq i32 %73, -1, !dbg !1681
  br i1 %74, label %bb17, label %bb18, !dbg !1681

bb17:                                             ; preds = %__concretize_string.exit
  %75 = tail call i32* @__errno_location() nounwind readnone, !dbg !1682
  %76 = tail call i32 @klee_get_errno() nounwind, !dbg !1682
  store i32 %76, i32* %75, align 4, !dbg !1682
  br label %bb25, !dbg !1683

bb18:                                             ; preds = %__concretize_string.exit
  %77 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 0, !dbg !1684
  store i32 %73, i32* %77, align 8, !dbg !1684
  %.pre = and i32 %flags, 3, !dbg !1685
  br label %bb19, !dbg !1684

bb19:                                             ; preds = %bb18, %bb14
  %.pre-phi = phi i32 [ %.pre, %bb18 ], [ %43, %bb14 ]
  %78 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 1, !dbg !1686
  store i32 1, i32* %78, align 4, !dbg !1686
  switch i32 %.pre-phi, label %bb23 [
    i32 0, label %bb20
    i32 1, label %bb22
  ]

bb20:                                             ; preds = %bb19
  store i32 5, i32* %78, align 4, !dbg !1687
  br label %bb25, !dbg !1687

bb22:                                             ; preds = %bb19
  store i32 9, i32* %78, align 4, !dbg !1688
  br label %bb25, !dbg !1688

bb23:                                             ; preds = %bb19
  store i32 13, i32* %78, align 4, !dbg !1689
  br label %bb25, !dbg !1689

bb25:                                             ; preds = %bb20, %bb22, %bb23, %bb17, %bb13, %bb11, %bb8, %bb4
  %.0 = phi i32 [ -1, %bb4 ], [ -1, %bb8 ], [ -1, %bb11 ], [ -1, %bb13 ], [ -1, %bb17 ], [ %fd.0, %bb23 ], [ %fd.0, %bb22 ], [ %fd.0, %bb20 ]
  ret i32 %.0, !dbg !1638
}

define i32 @__fd_openat(i32 %basefd, i8* %pathname, i32 %flags, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %basefd}, i64 0, metadata !597), !dbg !1690
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !598), !dbg !1690
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !599), !dbg !1690
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !600), !dbg !1690
  %0 = icmp eq i32 %basefd, -100, !dbg !1691
  br i1 %0, label %bb5, label %bb, !dbg !1691

bb:                                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %basefd}, i64 0, metadata !272), !dbg !1692
  %1 = icmp ult i32 %basefd, 32, !dbg !1694
  br i1 %1, label %bb.i, label %bb1, !dbg !1694

bb.i:                                             ; preds = %bb
  %2 = sext i32 %basefd to i64, !dbg !1695
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !273), !dbg !1695
  %3 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 1, !dbg !1696
  %4 = load i32* %3, align 4, !dbg !1696
  %5 = and i32 %4, 1
  %toBool.i = icmp eq i32 %5, 0, !dbg !1696
  br i1 %toBool.i, label %bb1, label %__get_file.exit, !dbg !1696

__get_file.exit:                                  ; preds = %bb.i
  %6 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, !dbg !1695
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %6}, i64 0, metadata !605), !dbg !1693
  %7 = icmp eq %struct.exe_file_t* %6, null, !dbg !1697
  br i1 %7, label %bb1, label %bb2, !dbg !1697

bb1:                                              ; preds = %bb, %bb.i, %__get_file.exit
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !1698
  store i32 9, i32* %8, align 4, !dbg !1698
  br label %bb21, !dbg !1699

bb2:                                              ; preds = %__get_file.exit
  %9 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 3, !dbg !1700
  %10 = load %struct.exe_disk_file_t** %9, align 8, !dbg !1700
  %11 = icmp eq %struct.exe_disk_file_t* %10, null, !dbg !1700
  br i1 %11, label %bb4, label %bb3, !dbg !1700

bb3:                                              ; preds = %bb2
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !1701
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !1702
  store i32 2, i32* %12, align 4, !dbg !1702
  br label %bb21, !dbg !1703

bb4:                                              ; preds = %bb2
  %13 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 0, !dbg !1704
  %14 = load i32* %13, align 8, !dbg !1704
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !597), !dbg !1704
  %phitmp = sext i32 %14 to i64
  br label %bb5, !dbg !1704

bb5:                                              ; preds = %entry, %bb4
  %basefd_addr.0 = phi i64 [ %phitmp, %bb4 ], [ -100, %entry ]
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !266), !dbg !1705
  %15 = load i8* %pathname, align 1, !dbg !1707
  tail call void @llvm.dbg.value(metadata !{i8 %15}, i64 0, metadata !267), !dbg !1707
  %16 = icmp eq i8 %15, 0, !dbg !1708
  br i1 %16, label %bb10, label %bb.i25, !dbg !1708

bb.i25:                                           ; preds = %bb5
  %17 = getelementptr inbounds i8* %pathname, i64 1, !dbg !1708
  %18 = load i8* %17, align 1, !dbg !1708
  %19 = icmp eq i8 %18, 0, !dbg !1708
  br i1 %19, label %bb8.preheader.i, label %bb10, !dbg !1708

bb8.preheader.i:                                  ; preds = %bb.i25
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1709
  %21 = sext i8 %15 to i32, !dbg !1710
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %33, 24
  %22 = ashr exact i32 %sext.i, 24, !dbg !1710
  %23 = add nsw i32 %22, 65, !dbg !1710
  %24 = icmp eq i32 %21, %23, !dbg !1710
  br i1 %24, label %bb4.i26, label %bb7.i, !dbg !1710

bb4.i26:                                          ; preds = %bb3.i
  %25 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1711
  %26 = zext i32 %33 to i64, !dbg !1711
  tail call void @llvm.dbg.value(metadata !615, i64 0, metadata !270), !dbg !1711
  %27 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, i32 2, !dbg !1712
  %28 = load %struct.stat** %27, align 8, !dbg !1712
  %29 = getelementptr inbounds %struct.stat* %28, i64 0, i32 1, !dbg !1712
  %30 = load i64* %29, align 8, !dbg !1712
  %31 = icmp eq i64 %30, 0, !dbg !1712
  br i1 %31, label %bb10, label %__get_sym_file.exit, !dbg !1712

bb7.i:                                            ; preds = %bb3.i
  %32 = add i32 %33, 1, !dbg !1709
  br label %bb8.i, !dbg !1709

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %33 = phi i32 [ %32, %bb7.i ], [ 0, %bb8.preheader.i ]
  %34 = icmp ugt i32 %20, %33, !dbg !1709
  br i1 %34, label %bb3.i, label %bb10, !dbg !1709

__get_sym_file.exit:                              ; preds = %bb4.i26
  %35 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, !dbg !1711
  %36 = icmp eq %struct.exe_disk_file_t* %35, null, !dbg !1706
  br i1 %36, label %bb10, label %bb6, !dbg !1706

bb6:                                              ; preds = %__get_sym_file.exit
  %37 = tail call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) nounwind, !dbg !1713
  br label %bb21, !dbg !1713

bb8:                                              ; preds = %bb10
  %scevgep = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 1
  %38 = load i32* %scevgep, align 4, !dbg !1714
  %39 = and i32 %38, 1, !dbg !1714
  %40 = icmp eq i32 %39, 0, !dbg !1714
  br i1 %40, label %bb13, label %bb9, !dbg !1714

bb9:                                              ; preds = %bb8
  %indvar.next = add i64 %indvar, 1
  br label %bb10, !dbg !1715

bb10:                                             ; preds = %bb4.i26, %bb5, %bb.i25, %__get_sym_file.exit, %bb8.i, %bb9
  %indvar = phi i64 [ %indvar.next, %bb9 ], [ 0, %bb8.i ], [ 0, %__get_sym_file.exit ], [ 0, %bb.i25 ], [ 0, %bb5 ], [ 0, %bb4.i26 ]
  %fd.0 = trunc i64 %indvar to i32
  %41 = icmp slt i32 %fd.0, 32, !dbg !1715
  br i1 %41, label %bb8, label %bb11, !dbg !1715

bb11:                                             ; preds = %bb10
  %42 = icmp eq i32 %fd.0, 32, !dbg !1716
  br i1 %42, label %bb12, label %bb13, !dbg !1716

bb12:                                             ; preds = %bb11
  %43 = tail call i32* @__errno_location() nounwind readnone, !dbg !1717
  store i32 24, i32* %43, align 4, !dbg !1717
  br label %bb21, !dbg !1718

bb13:                                             ; preds = %bb8, %bb11
  %44 = sext i32 %fd.0 to i64, !dbg !1719
  %45 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %44, !dbg !1719
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %45}, i64 0, metadata !601), !dbg !1719
  %46 = bitcast %struct.exe_file_t* %45 to i8*, !dbg !1720
  tail call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 24, i32 8, i1 false), !dbg !1720
  %47 = sext i32 %flags to i64, !dbg !1721
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !353) nounwind, !dbg !1722
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !343) nounwind, !dbg !1723
  %48 = ptrtoint i8* %pathname to i64, !dbg !1725
  %49 = tail call i64 @klee_get_valuel(i64 %48) nounwind, !dbg !1725
  %50 = inttoptr i64 %49 to i8*, !dbg !1725
  tail call void @llvm.dbg.value(metadata !{i8* %50}, i64 0, metadata !344) nounwind, !dbg !1725
  %51 = icmp eq i8* %50, %pathname, !dbg !1726
  %52 = zext i1 %51 to i64, !dbg !1726
  tail call void @klee_assume(i64 %52) nounwind, !dbg !1726
  tail call void @llvm.dbg.value(metadata !{i8* %50}, i64 0, metadata !354) nounwind, !dbg !1724
  tail call void @llvm.dbg.value(metadata !624, i64 0, metadata !356) nounwind, !dbg !1727
  br label %bb.i23, !dbg !1727

bb.i23:                                           ; preds = %bb6.i, %bb13
  %sc.0.i = phi i8* [ %50, %bb13 ], [ %sc.1.i, %bb6.i ]
  %53 = phi i32 [ 0, %bb13 ], [ %65, %bb6.i ]
  %tmp.i = add i32 %53, -1
  %54 = load i8* %sc.0.i, align 1, !dbg !1728
  %55 = and i32 %tmp.i, %53, !dbg !1729
  %56 = icmp eq i32 %55, 0, !dbg !1729
  br i1 %56, label %bb1.i24, label %bb5.i, !dbg !1729

bb1.i24:                                          ; preds = %bb.i23
  switch i8 %54, label %bb6.i [
    i8 0, label %bb2.i
    i8 47, label %bb4.i
  ]

bb2.i:                                            ; preds = %bb1.i24
  tail call void @llvm.dbg.value(metadata !{i8 %54}, i64 0, metadata !357) nounwind, !dbg !1728
  store i8 0, i8* %sc.0.i, align 1, !dbg !1730
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !354) nounwind, !dbg !1730
  br label %__concretize_string.exit, !dbg !1730

bb4.i:                                            ; preds = %bb1.i24
  store i8 47, i8* %sc.0.i, align 1, !dbg !1731
  %57 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1731
  br label %bb6.i, !dbg !1731

bb5.i:                                            ; preds = %bb.i23
  %58 = sext i8 %54 to i64, !dbg !1732
  %59 = tail call i64 @klee_get_valuel(i64 %58) nounwind, !dbg !1732
  %60 = trunc i64 %59 to i8, !dbg !1732
  %61 = icmp eq i8 %60, %54, !dbg !1733
  %62 = zext i1 %61 to i64, !dbg !1733
  tail call void @klee_assume(i64 %62) nounwind, !dbg !1733
  store i8 %60, i8* %sc.0.i, align 1, !dbg !1734
  %63 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1734
  %64 = icmp eq i8 %60, 0, !dbg !1735
  br i1 %64, label %__concretize_string.exit, label %bb6.i, !dbg !1735

bb6.i:                                            ; preds = %bb5.i, %bb4.i, %bb1.i24
  %sc.1.i = phi i8* [ %57, %bb4.i ], [ %63, %bb5.i ], [ %sc.0.i, %bb1.i24 ]
  %65 = add i32 %53, 1, !dbg !1727
  br label %bb.i23, !dbg !1727

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %66 = tail call i64 (i64, ...)* @syscall(i64 257, i64 %basefd_addr.0, i8* %pathname, i64 %47, i32 %mode) nounwind, !dbg !1721
  %67 = trunc i64 %66 to i32, !dbg !1721
  tail call void @llvm.dbg.value(metadata !{i32 %67}, i64 0, metadata !604), !dbg !1721
  %68 = icmp eq i32 %67, -1, !dbg !1736
  br i1 %68, label %bb14, label %bb15, !dbg !1736

bb14:                                             ; preds = %__concretize_string.exit
  %69 = tail call i32* @__errno_location() nounwind readnone, !dbg !1737
  %70 = tail call i32 @klee_get_errno() nounwind, !dbg !1737
  store i32 %70, i32* %69, align 4, !dbg !1737
  br label %bb21, !dbg !1738

bb15:                                             ; preds = %__concretize_string.exit
  %71 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %44, i32 0, !dbg !1739
  store i32 %67, i32* %71, align 8, !dbg !1739
  %72 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %44, i32 1, !dbg !1740
  store i32 1, i32* %72, align 4, !dbg !1740
  %73 = and i32 %flags, 3, !dbg !1741
  switch i32 %73, label %bb19 [
    i32 0, label %bb16
    i32 1, label %bb18
  ]

bb16:                                             ; preds = %bb15
  store i32 5, i32* %72, align 4, !dbg !1742
  br label %bb21, !dbg !1742

bb18:                                             ; preds = %bb15
  store i32 9, i32* %72, align 4, !dbg !1743
  br label %bb21, !dbg !1743

bb19:                                             ; preds = %bb15
  store i32 13, i32* %72, align 4, !dbg !1744
  br label %bb21, !dbg !1744

bb21:                                             ; preds = %bb16, %bb18, %bb19, %bb14, %bb12, %bb6, %bb3, %bb1
  %.0 = phi i32 [ -1, %bb1 ], [ -1, %bb3 ], [ %37, %bb6 ], [ -1, %bb12 ], [ -1, %bb14 ], [ %fd.0, %bb19 ], [ %fd.0, %bb18 ], [ %fd.0, %bb16 ]
  ret i32 %.0, !dbg !1699
}

!llvm.dbg.sp = !{!0, !59, !72, !76, !79, !82, !85, !86, !87, !92, !97, !100, !130, !133, !136, !137, !141, !144, !147, !150, !153, !156, !157, !158, !169, !172, !175, !189, !190, !193, !194, !195, !198, !216, !219, !220, !223, !246, !247, !250, !253, !256, !259, !260, !263}
!llvm.dbg.lv.__get_sym_file = !{!266, !267, !269, !270}
!llvm.dbg.lv.__get_file = !{!272, !273}
!llvm.dbg.lv.umask = !{!276, !277}
!llvm.dbg.lv.has_permission = !{!279, !280, !281, !283, !284}
!llvm.dbg.lv.chroot = !{!285}
!llvm.dbg.lv.unlinkat = !{!286, !287, !288, !289}
!llvm.dbg.lv.unlink = !{!291, !292}
!llvm.dbg.lv.rmdir = !{!294, !295}
!llvm.dbg.lv.__df_chown = !{!297, !298, !299}
!llvm.dbg.lv.readlink = !{!300, !301, !302, !303, !305}
!llvm.dbg.lv.fsync = !{!307, !308, !310}
!llvm.dbg.lv.fstatfs = !{!312, !313, !314, !316}
!llvm.dbg.lv.__fd_ftruncate = !{!318, !319, !320, !322}
!llvm.dbg.gv = !{!324, !325, !326, !327, !328, !329, !330}
!llvm.dbg.lv.fchown = !{!331, !332, !333, !334, !336}
!llvm.dbg.lv.fchdir = !{!338, !339, !341}
!llvm.dbg.lv.__concretize_ptr = !{!343, !344}
!llvm.dbg.lv.__concretize_size = !{!346, !347}
!llvm.dbg.lv.getcwd = !{!349, !350, !351}
!llvm.dbg.lv.__concretize_string = !{!353, !354, !356, !357, !359}
!llvm.dbg.lv.__fd_statfs = !{!361, !362, !363, !365}
!llvm.dbg.lv.lchown = !{!367, !368, !369, !370, !372}
!llvm.dbg.lv.chown = !{!374, !375, !376, !377, !379}
!llvm.dbg.lv.chdir = !{!381, !382, !384}
!llvm.dbg.lv.utimes = !{!386, !387, !388, !390}
!llvm.dbg.lv.futimesat = !{!391, !392, !393, !394, !396}
!llvm.dbg.lv.access = !{!398, !399, !400, !402}
!llvm.dbg.lv.select = !{!404, !405, !406, !407, !408, !409, !411, !412, !413, !414, !415, !416, !417, !418, !419, !421, !423, !424}
!llvm.dbg.lv.close = !{!426, !427, !429}
!llvm.dbg.lv.dup2 = !{!430, !431, !432, !434}
!llvm.dbg.lv.dup = !{!436, !437, !439}
!llvm.dbg.lv.fcntl = !{!441, !442, !443, !445, !458, !459, !461}
!llvm.dbg.lv.ioctl = !{!463, !464, !465, !467, !468, !469, !471, !491, !501, !504}
!llvm.dbg.lv.__fd_getdents = !{!506, !507, !508, !509, !511, !513, !514, !515, !517, !519, !520, !521, !523}
!llvm.dbg.lv.__fd_lseek = !{!525, !526, !527, !528, !530}
!llvm.dbg.lv.__fd_fstat = !{!531, !532, !533, !535}
!llvm.dbg.lv.__fd_lstat = !{!537, !538, !539, !541}
!llvm.dbg.lv.fstatat = !{!543, !544, !545, !546, !547, !549, !550}
!llvm.dbg.lv.__fd_stat = !{!552, !553, !554, !556}
!llvm.dbg.lv.read = !{!558, !559, !560, !561, !563}
!llvm.dbg.lv.__df_chmod = !{!565, !566}
!llvm.dbg.lv.fchmod = !{!567, !568, !569, !571}
!llvm.dbg.lv.chmod = !{!573, !574, !575, !577}
!llvm.dbg.lv.write = !{!579, !580, !581, !582, !584, !586}
!llvm.dbg.lv.__fd_open = !{!588, !589, !590, !591, !593, !594, !595}
!llvm.dbg.lv.__fd_openat = !{!597, !598, !599, !600, !601, !603, !604, !605}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_sym_file", metadata !"__get_sym_file", metadata !"", metadata !1, i32 39, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd.c", metadata !"/home/klee/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd.c", metadata !"/home/klee/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !57}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589846, metadata !7, metadata !"exe_disk_file_t", metadata !7, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!7 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/klee/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 589843, metadata !1, metadata !"", metadata !7, i32 20, i64 192, i64 64, i64 0, i32 0, null, metadata !9, i32 0, null} ; [ DW_TAG_structure_type ]
!9 = metadata !{metadata !10, metadata !12, metadata !15}
!10 = metadata !{i32 589837, metadata !8, metadata !"size", metadata !7, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!11 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 589837, metadata !8, metadata !"contents", metadata !7, i32 22, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ]
!13 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589837, metadata !8, metadata !"stat", metadata !7, i32 23, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !7, i32 23, i64 1152, i64 64, i64 0, i32 0, null, metadata !18, i32 0, null} ; [ DW_TAG_structure_type ]
!18 = metadata !{metadata !19, metadata !24, metadata !26, metadata !28, metadata !30, metadata !32, metadata !34, metadata !36, metadata !37, metadata !40, metadata !42, metadata !44, metadata !51, metadata !52, metadata !53}
!19 = metadata !{i32 589837, metadata !17, metadata !"st_dev", metadata !20, i32 118, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!20 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 589846, metadata !22, metadata !"__dev_t", metadata !22, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 589837, metadata !17, metadata !"st_ino", metadata !20, i32 120, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ]
!25 = metadata !{i32 589846, metadata !22, metadata !"__ino64_t", metadata !22, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 589837, metadata !17, metadata !"st_nlink", metadata !20, i32 121, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 589846, metadata !22, metadata !"__nlink_t", metadata !22, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 589837, metadata !17, metadata !"st_mode", metadata !20, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 589846, metadata !22, metadata !"__mode_t", metadata !22, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589837, metadata !17, metadata !"st_uid", metadata !20, i32 129, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ]
!31 = metadata !{i32 589846, metadata !22, metadata !"__uid_t", metadata !22, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 589837, metadata !17, metadata !"st_gid", metadata !20, i32 130, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ]
!33 = metadata !{i32 589846, metadata !22, metadata !"__gid_t", metadata !22, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!34 = metadata !{i32 589837, metadata !17, metadata !"__pad0", metadata !20, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 589837, metadata !17, metadata !"st_rdev", metadata !20, i32 133, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ]
!37 = metadata !{i32 589837, metadata !17, metadata !"st_size", metadata !20, i32 134, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ]
!38 = metadata !{i32 589846, metadata !22, metadata !"__off_t", metadata !22, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 589837, metadata !17, metadata !"st_blksize", metadata !20, i32 140, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !22, metadata !"__blksize_t", metadata !22, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589837, metadata !17, metadata !"st_blocks", metadata !20, i32 141, i64 64, i64 64, i64 512, i32 0, metadata !43} ; [ DW_TAG_member ]
!43 = metadata !{i32 589846, metadata !22, metadata !"__blkcnt64_t", metadata !22, i32 173, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 589837, metadata !17, metadata !"st_atim", metadata !20, i32 149, i64 128, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !46, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !47, i32 0, null} ; [ DW_TAG_structure_type ]
!46 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!47 = metadata !{metadata !48, metadata !50}
!48 = metadata !{i32 589837, metadata !45, metadata !"tv_sec", metadata !46, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 589846, metadata !22, metadata !"__time_t", metadata !22, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 589837, metadata !45, metadata !"tv_nsec", metadata !46, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ]
!51 = metadata !{i32 589837, metadata !17, metadata !"st_mtim", metadata !20, i32 150, i64 128, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !17, metadata !"st_ctim", metadata !20, i32 151, i64 128, i64 64, i64 832, i32 0, metadata !45} ; [ DW_TAG_member ]
!53 = metadata !{i32 589837, metadata !17, metadata !"__unused", metadata !20, i32 164, i64 192, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !39, metadata !55, i32 0, null} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!58 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!59 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_file", metadata !"__get_file", metadata !"", metadata !1, i32 63, metadata !60, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !62, metadata !35}
!62 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 589846, metadata !7, metadata !"exe_file_t", metadata !7, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ]
!64 = metadata !{i32 589843, metadata !1, metadata !"", metadata !7, i32 33, i64 192, i64 64, i64 0, i32 0, null, metadata !65, i32 0, null} ; [ DW_TAG_structure_type ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !71}
!66 = metadata !{i32 589837, metadata !64, metadata !"fd", metadata !7, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!67 = metadata !{i32 589837, metadata !64, metadata !"flags", metadata !7, i32 35, i64 32, i64 32, i64 32, i32 0, metadata !11} ; [ DW_TAG_member ]
!68 = metadata !{i32 589837, metadata !64, metadata !"off", metadata !7, i32 38, i64 64, i64 64, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ]
!69 = metadata !{i32 589846, metadata !70, metadata !"off64_t", metadata !70, i32 100, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!71 = metadata !{i32 589837, metadata !64, metadata !"dfile", metadata !7, i32 39, i64 64, i64 64, i64 128, i32 0, metadata !5} ; [ DW_TAG_member ]
!72 = metadata !{i32 589870, i32 0, metadata !1, metadata !"umask", metadata !"umask", metadata !"umask", metadata !1, i32 88, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @umask} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{metadata !75, metadata !75}
!75 = metadata !{i32 589846, metadata !70, metadata !"mode_t", metadata !70, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!76 = metadata !{i32 589870, i32 0, metadata !1, metadata !"has_permission", metadata !"has_permission", metadata !"", metadata !1, i32 97, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !35, metadata !35, metadata !16}
!79 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chroot", metadata !"chroot", metadata !"chroot", metadata !1, i32 1460, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chroot} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, null} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{metadata !35, metadata !57}
!82 = metadata !{i32 589870, i32 0, metadata !1, metadata !"unlinkat", metadata !"unlinkat", metadata !"unlinkat", metadata !1, i32 1242, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @unlinkat} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, null} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !35, metadata !35, metadata !57, metadata !35}
!85 = metadata !{i32 589870, i32 0, metadata !1, metadata !"unlink", metadata !"unlink", metadata !"unlink", metadata !1, i32 1221, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @unlink} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 589870, i32 0, metadata !1, metadata !"rmdir", metadata !"rmdir", metadata !"rmdir", metadata !1, i32 1203, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @rmdir} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__df_chown", metadata !"__df_chown", metadata !"", metadata !1, i32 710, metadata !88, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, null} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !35, metadata !5, metadata !90, metadata !91}
!90 = metadata !{i32 589846, metadata !70, metadata !"uid_t", metadata !70, i32 88, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!91 = metadata !{i32 589846, metadata !70, metadata !"gid_t", metadata !70, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!92 = metadata !{i32 589870, i32 0, metadata !1, metadata !"readlink", metadata !"readlink", metadata !"readlink", metadata !1, i32 1265, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*, i8*, i64)* @readlink} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, null} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{metadata !95, metadata !57, metadata !13, metadata !96}
!95 = metadata !{i32 589846, metadata !70, metadata !"ssize_t", metadata !70, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!96 = metadata !{i32 589846, metadata !70, metadata !"size_t", metadata !70, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!97 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fsync", metadata !"fsync", metadata !"fsync", metadata !1, i32 1143, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fsync} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !35, metadata !35}
!100 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstatfs", metadata !"fstatfs", metadata !"fstatfs", metadata !1, i32 1123, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.statfs*)* @fstatfs} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, null} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !35, metadata !35, metadata !103}
!103 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !105, i32 26, i64 960, i64 64, i64 0, i32 0, null, metadata !106, i32 0, null} ; [ DW_TAG_structure_type ]
!105 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !111, metadata !112, metadata !113, metadata !115, metadata !116, metadata !124, metadata !125, metadata !126}
!107 = metadata !{i32 589837, metadata !104, metadata !"f_type", metadata !105, i32 27, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ]
!108 = metadata !{i32 589837, metadata !104, metadata !"f_bsize", metadata !105, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ]
!109 = metadata !{i32 589837, metadata !104, metadata !"f_blocks", metadata !105, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !110} ; [ DW_TAG_member ]
!110 = metadata !{i32 589846, metadata !22, metadata !"__fsblkcnt_t", metadata !22, i32 174, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!111 = metadata !{i32 589837, metadata !104, metadata !"f_bfree", metadata !105, i32 31, i64 64, i64 64, i64 192, i32 0, metadata !110} ; [ DW_TAG_member ]
!112 = metadata !{i32 589837, metadata !104, metadata !"f_bavail", metadata !105, i32 32, i64 64, i64 64, i64 256, i32 0, metadata !110} ; [ DW_TAG_member ]
!113 = metadata !{i32 589837, metadata !104, metadata !"f_files", metadata !105, i32 33, i64 64, i64 64, i64 320, i32 0, metadata !114} ; [ DW_TAG_member ]
!114 = metadata !{i32 589846, metadata !22, metadata !"__fsfilcnt_t", metadata !22, i32 178, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!115 = metadata !{i32 589837, metadata !104, metadata !"f_ffree", metadata !105, i32 34, i64 64, i64 64, i64 384, i32 0, metadata !114} ; [ DW_TAG_member ]
!116 = metadata !{i32 589837, metadata !104, metadata !"f_fsid", metadata !105, i32 42, i64 64, i64 32, i64 448, i32 0, metadata !117} ; [ DW_TAG_member ]
!117 = metadata !{i32 589846, metadata !22, metadata !"__fsid_t", metadata !22, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ]
!118 = metadata !{i32 589843, metadata !1, metadata !"", metadata !22, i32 144, i64 64, i64 32, i64 0, i32 0, null, metadata !119, i32 0, null} ; [ DW_TAG_structure_type ]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 589837, metadata !118, metadata !"__val", metadata !22, i32 144, i64 64, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ]
!121 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !35, metadata !122, i32 0, null} ; [ DW_TAG_array_type ]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 589857, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!124 = metadata !{i32 589837, metadata !104, metadata !"f_namelen", metadata !105, i32 43, i64 64, i64 64, i64 512, i32 0, metadata !39} ; [ DW_TAG_member ]
!125 = metadata !{i32 589837, metadata !104, metadata !"f_frsize", metadata !105, i32 44, i64 64, i64 64, i64 576, i32 0, metadata !39} ; [ DW_TAG_member ]
!126 = metadata !{i32 589837, metadata !104, metadata !"f_spare", metadata !105, i32 45, i64 320, i64 64, i64 640, i32 0, metadata !127} ; [ DW_TAG_member ]
!127 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 320, i64 64, i64 0, i32 0, metadata !39, metadata !128, i32 0, null} ; [ DW_TAG_array_type ]
!128 = metadata !{metadata !129}
!129 = metadata !{i32 589857, i64 0, i64 4}       ; [ DW_TAG_subrange_type ]
!130 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !1, i32 784, metadata !131, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @__fd_ftruncate} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, null} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{metadata !35, metadata !35, metadata !69}
!133 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchown", metadata !"fchown", metadata !"fchown", metadata !1, i32 729, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @fchown} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, null} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{metadata !35, metadata !35, metadata !90, metadata !91}
!136 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchdir", metadata !"fchdir", metadata !"fchdir", metadata !1, i32 627, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fchdir} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_ptr", metadata !"__concretize_ptr", metadata !"", metadata !1, i32 1418, metadata !138, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, null} ; [ DW_TAG_subroutine_type ]
!139 = metadata !{metadata !140, metadata !140}
!140 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!141 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_size", metadata !"__concretize_size", metadata !"", metadata !1, i32 1425, metadata !142, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, null} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{metadata !96, metadata !96}
!144 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getcwd", metadata !"getcwd", metadata !"getcwd", metadata !1, i32 1383, metadata !145, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i64)* @getcwd} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, null} ; [ DW_TAG_subroutine_type ]
!146 = metadata !{metadata !13, metadata !13, metadata !96}
!147 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_string", metadata !"__concretize_string", metadata !"", metadata !1, i32 1431, metadata !148, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, null} ; [ DW_TAG_subroutine_type ]
!149 = metadata !{metadata !57, metadata !57}
!150 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !1, i32 1106, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @__fd_statfs} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, null} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !35, metadata !57, metadata !103}
!153 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lchown", metadata !"lchown", metadata !"lchown", metadata !1, i32 747, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @lchown} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, null} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !35, metadata !57, metadata !90, metadata !91}
!156 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chown", metadata !"chown", metadata !"chown", metadata !1, i32 716, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @chown} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chdir", metadata !"chdir", metadata !"chdir", metadata !1, i32 609, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chdir} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 589870, i32 0, metadata !1, metadata !"utimes", metadata !"utimes", metadata !"utimes", metadata !1, i32 256, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.timespec*)* @utimes} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, null} ; [ DW_TAG_subroutine_type ]
!160 = metadata !{metadata !35, metadata !57, metadata !161}
!161 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ]
!162 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_const_type ]
!163 = metadata !{i32 589843, metadata !1, metadata !"timeval", metadata !164, i32 70, i64 128, i64 64, i64 0, i32 0, null, metadata !165, i32 0, null} ; [ DW_TAG_structure_type ]
!164 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!165 = metadata !{metadata !166, metadata !167}
!166 = metadata !{i32 589837, metadata !163, metadata !"tv_sec", metadata !164, i32 71, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!167 = metadata !{i32 589837, metadata !163, metadata !"tv_usec", metadata !164, i32 72, i64 64, i64 64, i64 64, i32 0, metadata !168} ; [ DW_TAG_member ]
!168 = metadata !{i32 589846, metadata !22, metadata !"__suseconds_t", metadata !22, i32 153, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!169 = metadata !{i32 589870, i32 0, metadata !1, metadata !"futimesat", metadata !"futimesat", metadata !"futimesat", metadata !1, i32 277, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.timespec*)* @futimesat} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, null} ; [ DW_TAG_subroutine_type ]
!171 = metadata !{metadata !35, metadata !35, metadata !57, metadata !161}
!172 = metadata !{i32 589870, i32 0, metadata !1, metadata !"access", metadata !"access", metadata !"access", metadata !1, i32 73, metadata !173, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @access} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, null} ; [ DW_TAG_subroutine_type ]
!174 = metadata !{metadata !35, metadata !57, metadata !35}
!175 = metadata !{i32 589870, i32 0, metadata !1, metadata !"select", metadata !"select", metadata !"select", metadata !1, i32 1298, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timespec*)* @select} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, null} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{metadata !35, metadata !35, metadata !178, metadata !178, metadata !178, metadata !188}
!178 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ]
!179 = metadata !{i32 589846, metadata !180, metadata !"fd_set", metadata !180, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ]
!180 = metadata !{i32 589865, metadata !"select.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!181 = metadata !{i32 589843, metadata !1, metadata !"", metadata !180, i32 68, i64 1024, i64 64, i64 0, i32 0, null, metadata !182, i32 0, null} ; [ DW_TAG_structure_type ]
!182 = metadata !{metadata !183}
!183 = metadata !{i32 589837, metadata !181, metadata !"fds_bits", metadata !180, i32 72, i64 1024, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_member ]
!184 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !185, metadata !186, i32 0, null} ; [ DW_TAG_array_type ]
!185 = metadata !{i32 589846, metadata !180, metadata !"__fd_mask", metadata !180, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!186 = metadata !{metadata !187}
!187 = metadata !{i32 589857, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!188 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ]
!189 = metadata !{i32 589870, i32 0, metadata !1, metadata !"close", metadata !"close", metadata !"close", metadata !1, i32 303, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @close} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 589870, i32 0, metadata !1, metadata !"dup2", metadata !"dup2", metadata !"dup2", metadata !1, i32 1159, metadata !191, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dup2} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, null} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{metadata !35, metadata !35, metadata !35}
!193 = metadata !{i32 589870, i32 0, metadata !1, metadata !"dup", metadata !"dup", metadata !"dup", metadata !1, i32 1184, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @dup} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fcntl", metadata !"fcntl", metadata !"fcntl", metadata !1, i32 1051, metadata !191, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, ...)* @fcntl} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ioctl", metadata !"ioctl", metadata !"ioctl", metadata !1, i32 901, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64, ...)* @ioctl} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, null} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !35, metadata !35, metadata !23}
!198 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !1, i32 817, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent64*, i32)* @__fd_getdents} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, null} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !35, metadata !11, metadata !201, metadata !11}
!201 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ]
!202 = metadata !{i32 589843, metadata !1, metadata !"dirent64", metadata !203, i32 39, i64 2240, i64 64, i64 0, i32 0, null, metadata !204, i32 0, null} ; [ DW_TAG_structure_type ]
!203 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!204 = metadata !{metadata !205, metadata !206, metadata !208, metadata !210, metadata !212}
!205 = metadata !{i32 589837, metadata !202, metadata !"d_ino", metadata !203, i32 40, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ]
!206 = metadata !{i32 589837, metadata !202, metadata !"d_off", metadata !203, i32 41, i64 64, i64 64, i64 64, i32 0, metadata !207} ; [ DW_TAG_member ]
!207 = metadata !{i32 589846, metadata !22, metadata !"__off64_t", metadata !22, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!208 = metadata !{i32 589837, metadata !202, metadata !"d_reclen", metadata !203, i32 42, i64 16, i64 16, i64 128, i32 0, metadata !209} ; [ DW_TAG_member ]
!209 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!210 = metadata !{i32 589837, metadata !202, metadata !"d_type", metadata !203, i32 43, i64 8, i64 8, i64 144, i32 0, metadata !211} ; [ DW_TAG_member ]
!211 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!212 = metadata !{i32 589837, metadata !202, metadata !"d_name", metadata !203, i32 44, i64 2048, i64 8, i64 152, i32 0, metadata !213} ; [ DW_TAG_member ]
!213 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !14, metadata !214, i32 0, null} ; [ DW_TAG_array_type ]
!214 = metadata !{metadata !215}
!215 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!216 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !1, i32 475, metadata !217, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @__fd_lseek} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, null} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !69, metadata !35, metadata !69, metadata !35}
!219 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !1, i32 761, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @__fd_fstat} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !1, i32 590, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @__fd_lstat} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, null} ; [ DW_TAG_subroutine_type ]
!222 = metadata !{metadata !35, metadata !57, metadata !16}
!223 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstatat", metadata !"fstatat", metadata !"fstatat", metadata !1, i32 554, metadata !224, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*, i32)* @fstatat} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, null} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{metadata !35, metadata !35, metadata !57, metadata !226, metadata !35}
!226 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ]
!227 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !20, i32 44, i64 1152, i64 64, i64 0, i32 0, null, metadata !228, i32 0, null} ; [ DW_TAG_structure_type ]
!228 = metadata !{metadata !229, metadata !230, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !242, metadata !243, metadata !244, metadata !245}
!229 = metadata !{i32 589837, metadata !227, metadata !"st_dev", metadata !20, i32 45, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!230 = metadata !{i32 589837, metadata !227, metadata !"st_ino", metadata !20, i32 50, i64 64, i64 64, i64 64, i32 0, metadata !231} ; [ DW_TAG_member ]
!231 = metadata !{i32 589846, metadata !22, metadata !"__ino_t", metadata !22, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!232 = metadata !{i32 589837, metadata !227, metadata !"st_nlink", metadata !20, i32 58, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ]
!233 = metadata !{i32 589837, metadata !227, metadata !"st_mode", metadata !20, i32 59, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ]
!234 = metadata !{i32 589837, metadata !227, metadata !"st_uid", metadata !20, i32 61, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ]
!235 = metadata !{i32 589837, metadata !227, metadata !"st_gid", metadata !20, i32 62, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ]
!236 = metadata !{i32 589837, metadata !227, metadata !"__pad0", metadata !20, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !35} ; [ DW_TAG_member ]
!237 = metadata !{i32 589837, metadata !227, metadata !"st_rdev", metadata !20, i32 66, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ]
!238 = metadata !{i32 589837, metadata !227, metadata !"st_size", metadata !20, i32 71, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ]
!239 = metadata !{i32 589837, metadata !227, metadata !"st_blksize", metadata !20, i32 75, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ]
!240 = metadata !{i32 589837, metadata !227, metadata !"st_blocks", metadata !20, i32 77, i64 64, i64 64, i64 512, i32 0, metadata !241} ; [ DW_TAG_member ]
!241 = metadata !{i32 589846, metadata !22, metadata !"__blkcnt_t", metadata !22, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!242 = metadata !{i32 589837, metadata !227, metadata !"st_atim", metadata !20, i32 88, i64 128, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ]
!243 = metadata !{i32 589837, metadata !227, metadata !"st_mtim", metadata !20, i32 89, i64 128, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ]
!244 = metadata !{i32 589837, metadata !227, metadata !"st_ctim", metadata !20, i32 90, i64 128, i64 64, i64 832, i32 0, metadata !45} ; [ DW_TAG_member ]
!245 = metadata !{i32 589837, metadata !227, metadata !"__unused", metadata !20, i32 103, i64 192, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ]
!246 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_stat", metadata !"__fd_stat", metadata !"__fd_stat", metadata !1, i32 535, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @__fd_stat} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 589870, i32 0, metadata !1, metadata !"read", metadata !"read", metadata !"read", metadata !1, i32 335, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @read} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, null} ; [ DW_TAG_subroutine_type ]
!249 = metadata !{metadata !95, metadata !35, metadata !140, metadata !96}
!250 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__df_chmod", metadata !"__df_chmod", metadata !"", metadata !1, i32 648, metadata !251, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, null} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{metadata !35, metadata !5, metadata !75}
!253 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchmod", metadata !"fchmod", metadata !"fchmod", metadata !1, i32 683, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @fchmod} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, null} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{metadata !35, metadata !35, metadata !75}
!256 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chmod", metadata !"chmod", metadata !"chmod", metadata !1, i32 661, metadata !257, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @chmod} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, null} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{metadata !35, metadata !57, metadata !75}
!259 = metadata !{i32 589870, i32 0, metadata !1, metadata !"write", metadata !"write", metadata !"write", metadata !1, i32 403, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @write} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_open", metadata !"__fd_open", metadata !"__fd_open", metadata !1, i32 128, metadata !261, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @__fd_open} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, null} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{metadata !35, metadata !57, metadata !35, metadata !75}
!263 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_openat", metadata !"__fd_openat", metadata !"__fd_openat", metadata !1, i32 201, metadata !264, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, i32)* @__fd_openat} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, null} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{metadata !35, metadata !35, metadata !57, metadata !35, metadata !75}
!266 = metadata !{i32 590081, metadata !0, metadata !"pathname", metadata !1, i32 39, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 590080, metadata !268, metadata !"c", metadata !1, i32 40, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 589835, metadata !0, i32 39, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 590080, metadata !268, metadata !"i", metadata !1, i32 41, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 590080, metadata !271, metadata !"df", metadata !1, i32 48, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 589835, metadata !268, i32 48, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!272 = metadata !{i32 590081, metadata !59, metadata !"fd", metadata !1, i32 63, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 590080, metadata !274, metadata !"f", metadata !1, i32 65, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 589835, metadata !275, i32 63, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 589835, metadata !59, i32 63, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 590081, metadata !72, metadata !"mask", metadata !1, i32 88, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!277 = metadata !{i32 590080, metadata !278, metadata !"r", metadata !1, i32 89, metadata !75, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 589835, metadata !72, i32 88, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!279 = metadata !{i32 590081, metadata !76, metadata !"flags", metadata !1, i32 97, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!280 = metadata !{i32 590081, metadata !76, metadata !"s", metadata !1, i32 97, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!281 = metadata !{i32 590080, metadata !282, metadata !"write_access", metadata !1, i32 98, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!282 = metadata !{i32 589835, metadata !76, i32 97, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!283 = metadata !{i32 590080, metadata !282, metadata !"read_access", metadata !1, i32 98, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 590080, metadata !282, metadata !"mode", metadata !1, i32 99, metadata !75, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 590081, metadata !79, metadata !"path", metadata !1, i32 1460, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!286 = metadata !{i32 590081, metadata !82, metadata !"dirfd", metadata !1, i32 1242, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!287 = metadata !{i32 590081, metadata !82, metadata !"pathname", metadata !1, i32 1242, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!288 = metadata !{i32 590081, metadata !82, metadata !"flags", metadata !1, i32 1242, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!289 = metadata !{i32 590080, metadata !290, metadata !"dfile", metadata !1, i32 1245, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 589835, metadata !82, i32 1242, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 590081, metadata !85, metadata !"pathname", metadata !1, i32 1221, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!292 = metadata !{i32 590080, metadata !293, metadata !"dfile", metadata !1, i32 1222, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 589835, metadata !85, i32 1221, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!294 = metadata !{i32 590081, metadata !86, metadata !"pathname", metadata !1, i32 1203, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!295 = metadata !{i32 590080, metadata !296, metadata !"dfile", metadata !1, i32 1204, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!296 = metadata !{i32 589835, metadata !86, i32 1203, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 590081, metadata !87, metadata !"df", metadata !1, i32 710, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!298 = metadata !{i32 590081, metadata !87, metadata !"owner", metadata !1, i32 710, metadata !90, i32 0} ; [ DW_TAG_arg_variable ]
!299 = metadata !{i32 590081, metadata !87, metadata !"group", metadata !1, i32 710, metadata !91, i32 0} ; [ DW_TAG_arg_variable ]
!300 = metadata !{i32 590081, metadata !92, metadata !"path", metadata !1, i32 1265, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!301 = metadata !{i32 590081, metadata !92, metadata !"buf", metadata !1, i32 1265, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!302 = metadata !{i32 590081, metadata !92, metadata !"bufsize", metadata !1, i32 1265, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!303 = metadata !{i32 590080, metadata !304, metadata !"dfile", metadata !1, i32 1266, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!304 = metadata !{i32 589835, metadata !92, i32 1265, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!305 = metadata !{i32 590080, metadata !306, metadata !"r", metadata !1, i32 1282, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!306 = metadata !{i32 589835, metadata !304, i32 1282, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!307 = metadata !{i32 590081, metadata !97, metadata !"fd", metadata !1, i32 1143, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 590080, metadata !309, metadata !"f", metadata !1, i32 1144, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!309 = metadata !{i32 589835, metadata !97, i32 1143, i32 0, metadata !1, i32 13} ; [ DW_TAG_lexical_block ]
!310 = metadata !{i32 590080, metadata !311, metadata !"r", metadata !1, i32 1152, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!311 = metadata !{i32 589835, metadata !309, i32 1152, i32 0, metadata !1, i32 14} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 590081, metadata !100, metadata !"fd", metadata !1, i32 1123, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!313 = metadata !{i32 590081, metadata !100, metadata !"buf", metadata !1, i32 1123, metadata !103, i32 0} ; [ DW_TAG_arg_variable ]
!314 = metadata !{i32 590080, metadata !315, metadata !"f", metadata !1, i32 1124, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!315 = metadata !{i32 589835, metadata !100, i32 1123, i32 0, metadata !1, i32 15} ; [ DW_TAG_lexical_block ]
!316 = metadata !{i32 590080, metadata !317, metadata !"r", metadata !1, i32 1136, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!317 = metadata !{i32 589835, metadata !315, i32 1136, i32 0, metadata !1, i32 16} ; [ DW_TAG_lexical_block ]
!318 = metadata !{i32 590081, metadata !130, metadata !"fd", metadata !1, i32 784, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!319 = metadata !{i32 590081, metadata !130, metadata !"length", metadata !1, i32 784, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!320 = metadata !{i32 590080, metadata !321, metadata !"f", metadata !1, i32 786, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 589835, metadata !130, i32 784, i32 0, metadata !1, i32 17} ; [ DW_TAG_lexical_block ]
!322 = metadata !{i32 590080, metadata !323, metadata !"r", metadata !1, i32 807, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!323 = metadata !{i32 589835, metadata !321, i32 807, i32 0, metadata !1, i32 18} ; [ DW_TAG_lexical_block ]
!324 = metadata !{i32 589876, i32 0, metadata !130, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 785, metadata !35, i1 true, i1 true, i32* @n_calls.5225} ; [ DW_TAG_variable ]
!325 = metadata !{i32 589876, i32 0, metadata !144, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 1384, metadata !35, i1 true, i1 true, i32* @n_calls.5801} ; [ DW_TAG_variable ]
!326 = metadata !{i32 589876, i32 0, metadata !189, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 304, metadata !35, i1 true, i1 true, i32* @n_calls.4832} ; [ DW_TAG_variable ]
!327 = metadata !{i32 589876, i32 0, metadata !247, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 336, metadata !35, i1 true, i1 true, i32* @n_calls.4852} ; [ DW_TAG_variable ]
!328 = metadata !{i32 589876, i32 0, metadata !253, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 684, metadata !35, i1 true, i1 true, i32* @n_calls.5132} ; [ DW_TAG_variable ]
!329 = metadata !{i32 589876, i32 0, metadata !256, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 662, metadata !35, i1 true, i1 true, i32* @n_calls.5109} ; [ DW_TAG_variable ]
!330 = metadata !{i32 589876, i32 0, metadata !259, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 404, metadata !35, i1 true, i1 true, i32* @n_calls.4913} ; [ DW_TAG_variable ]
!331 = metadata !{i32 590081, metadata !133, metadata !"fd", metadata !1, i32 729, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!332 = metadata !{i32 590081, metadata !133, metadata !"owner", metadata !1, i32 729, metadata !90, i32 0} ; [ DW_TAG_arg_variable ]
!333 = metadata !{i32 590081, metadata !133, metadata !"group", metadata !1, i32 729, metadata !91, i32 0} ; [ DW_TAG_arg_variable ]
!334 = metadata !{i32 590080, metadata !335, metadata !"f", metadata !1, i32 730, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!335 = metadata !{i32 589835, metadata !133, i32 729, i32 0, metadata !1, i32 19} ; [ DW_TAG_lexical_block ]
!336 = metadata !{i32 590080, metadata !337, metadata !"r", metadata !1, i32 740, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!337 = metadata !{i32 589835, metadata !335, i32 740, i32 0, metadata !1, i32 20} ; [ DW_TAG_lexical_block ]
!338 = metadata !{i32 590081, metadata !136, metadata !"fd", metadata !1, i32 627, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!339 = metadata !{i32 590080, metadata !340, metadata !"f", metadata !1, i32 628, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!340 = metadata !{i32 589835, metadata !136, i32 627, i32 0, metadata !1, i32 21} ; [ DW_TAG_lexical_block ]
!341 = metadata !{i32 590080, metadata !342, metadata !"r", metadata !1, i32 640, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!342 = metadata !{i32 589835, metadata !340, i32 640, i32 0, metadata !1, i32 22} ; [ DW_TAG_lexical_block ]
!343 = metadata !{i32 590081, metadata !137, metadata !"p", metadata !1, i32 1418, metadata !140, i32 0} ; [ DW_TAG_arg_variable ]
!344 = metadata !{i32 590080, metadata !345, metadata !"pc", metadata !1, i32 1420, metadata !13, i32 0} ; [ DW_TAG_auto_variable ]
!345 = metadata !{i32 589835, metadata !137, i32 1418, i32 0, metadata !1, i32 23} ; [ DW_TAG_lexical_block ]
!346 = metadata !{i32 590081, metadata !141, metadata !"s", metadata !1, i32 1425, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!347 = metadata !{i32 590080, metadata !348, metadata !"sc", metadata !1, i32 1426, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!348 = metadata !{i32 589835, metadata !141, i32 1425, i32 0, metadata !1, i32 24} ; [ DW_TAG_lexical_block ]
!349 = metadata !{i32 590081, metadata !144, metadata !"buf", metadata !1, i32 1383, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!350 = metadata !{i32 590081, metadata !144, metadata !"size", metadata !1, i32 1383, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!351 = metadata !{i32 590080, metadata !352, metadata !"r", metadata !1, i32 1385, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!352 = metadata !{i32 589835, metadata !144, i32 1383, i32 0, metadata !1, i32 25} ; [ DW_TAG_lexical_block ]
!353 = metadata !{i32 590081, metadata !147, metadata !"s", metadata !1, i32 1431, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!354 = metadata !{i32 590080, metadata !355, metadata !"sc", metadata !1, i32 1432, metadata !13, i32 0} ; [ DW_TAG_auto_variable ]
!355 = metadata !{i32 589835, metadata !147, i32 1431, i32 0, metadata !1, i32 26} ; [ DW_TAG_lexical_block ]
!356 = metadata !{i32 590080, metadata !355, metadata !"i", metadata !1, i32 1433, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!357 = metadata !{i32 590080, metadata !358, metadata !"c", metadata !1, i32 1436, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!358 = metadata !{i32 589835, metadata !355, i32 1436, i32 0, metadata !1, i32 27} ; [ DW_TAG_lexical_block ]
!359 = metadata !{i32 590080, metadata !360, metadata !"cc", metadata !1, i32 1445, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!360 = metadata !{i32 589835, metadata !358, i32 1445, i32 0, metadata !1, i32 28} ; [ DW_TAG_lexical_block ]
!361 = metadata !{i32 590081, metadata !150, metadata !"path", metadata !1, i32 1106, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!362 = metadata !{i32 590081, metadata !150, metadata !"buf", metadata !1, i32 1106, metadata !103, i32 0} ; [ DW_TAG_arg_variable ]
!363 = metadata !{i32 590080, metadata !364, metadata !"dfile", metadata !1, i32 1107, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!364 = metadata !{i32 589835, metadata !150, i32 1106, i32 0, metadata !1, i32 29} ; [ DW_TAG_lexical_block ]
!365 = metadata !{i32 590080, metadata !366, metadata !"r", metadata !1, i32 1116, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!366 = metadata !{i32 589835, metadata !364, i32 1116, i32 0, metadata !1, i32 30} ; [ DW_TAG_lexical_block ]
!367 = metadata !{i32 590081, metadata !153, metadata !"path", metadata !1, i32 747, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!368 = metadata !{i32 590081, metadata !153, metadata !"owner", metadata !1, i32 747, metadata !90, i32 0} ; [ DW_TAG_arg_variable ]
!369 = metadata !{i32 590081, metadata !153, metadata !"group", metadata !1, i32 747, metadata !91, i32 0} ; [ DW_TAG_arg_variable ]
!370 = metadata !{i32 590080, metadata !371, metadata !"df", metadata !1, i32 749, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!371 = metadata !{i32 589835, metadata !153, i32 747, i32 0, metadata !1, i32 31} ; [ DW_TAG_lexical_block ]
!372 = metadata !{i32 590080, metadata !373, metadata !"r", metadata !1, i32 754, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!373 = metadata !{i32 589835, metadata !371, i32 754, i32 0, metadata !1, i32 32} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 590081, metadata !156, metadata !"path", metadata !1, i32 716, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!375 = metadata !{i32 590081, metadata !156, metadata !"owner", metadata !1, i32 716, metadata !90, i32 0} ; [ DW_TAG_arg_variable ]
!376 = metadata !{i32 590081, metadata !156, metadata !"group", metadata !1, i32 716, metadata !91, i32 0} ; [ DW_TAG_arg_variable ]
!377 = metadata !{i32 590080, metadata !378, metadata !"df", metadata !1, i32 717, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!378 = metadata !{i32 589835, metadata !156, i32 716, i32 0, metadata !1, i32 33} ; [ DW_TAG_lexical_block ]
!379 = metadata !{i32 590080, metadata !380, metadata !"r", metadata !1, i32 722, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!380 = metadata !{i32 589835, metadata !378, i32 722, i32 0, metadata !1, i32 34} ; [ DW_TAG_lexical_block ]
!381 = metadata !{i32 590081, metadata !157, metadata !"path", metadata !1, i32 609, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!382 = metadata !{i32 590080, metadata !383, metadata !"dfile", metadata !1, i32 610, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!383 = metadata !{i32 589835, metadata !157, i32 609, i32 0, metadata !1, i32 35} ; [ DW_TAG_lexical_block ]
!384 = metadata !{i32 590080, metadata !385, metadata !"r", metadata !1, i32 620, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!385 = metadata !{i32 589835, metadata !383, i32 620, i32 0, metadata !1, i32 36} ; [ DW_TAG_lexical_block ]
!386 = metadata !{i32 590081, metadata !158, metadata !"path", metadata !1, i32 256, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!387 = metadata !{i32 590081, metadata !158, metadata !"times", metadata !1, i32 256, metadata !161, i32 0} ; [ DW_TAG_arg_variable ]
!388 = metadata !{i32 590080, metadata !389, metadata !"dfile", metadata !1, i32 257, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!389 = metadata !{i32 589835, metadata !158, i32 256, i32 0, metadata !1, i32 37} ; [ DW_TAG_lexical_block ]
!390 = metadata !{i32 590080, metadata !389, metadata !"r", metadata !1, i32 269, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!391 = metadata !{i32 590081, metadata !169, metadata !"fd", metadata !1, i32 277, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!392 = metadata !{i32 590081, metadata !169, metadata !"path", metadata !1, i32 277, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!393 = metadata !{i32 590081, metadata !169, metadata !"times", metadata !1, i32 277, metadata !161, i32 0} ; [ DW_TAG_arg_variable ]
!394 = metadata !{i32 590080, metadata !395, metadata !"r", metadata !1, i32 295, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!395 = metadata !{i32 589835, metadata !169, i32 277, i32 0, metadata !1, i32 38} ; [ DW_TAG_lexical_block ]
!396 = metadata !{i32 590080, metadata !397, metadata !"f", metadata !1, i32 279, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!397 = metadata !{i32 589835, metadata !395, i32 279, i32 0, metadata !1, i32 39} ; [ DW_TAG_lexical_block ]
!398 = metadata !{i32 590081, metadata !172, metadata !"pathname", metadata !1, i32 73, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!399 = metadata !{i32 590081, metadata !172, metadata !"mode", metadata !1, i32 73, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!400 = metadata !{i32 590080, metadata !401, metadata !"dfile", metadata !1, i32 74, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!401 = metadata !{i32 589835, metadata !172, i32 73, i32 0, metadata !1, i32 40} ; [ DW_TAG_lexical_block ]
!402 = metadata !{i32 590080, metadata !403, metadata !"r", metadata !1, i32 81, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!403 = metadata !{i32 589835, metadata !401, i32 81, i32 0, metadata !1, i32 41} ; [ DW_TAG_lexical_block ]
!404 = metadata !{i32 590081, metadata !175, metadata !"nfds", metadata !1, i32 1297, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!405 = metadata !{i32 590081, metadata !175, metadata !"read", metadata !1, i32 1297, metadata !178, i32 0} ; [ DW_TAG_arg_variable ]
!406 = metadata !{i32 590081, metadata !175, metadata !"write", metadata !1, i32 1297, metadata !178, i32 0} ; [ DW_TAG_arg_variable ]
!407 = metadata !{i32 590081, metadata !175, metadata !"except", metadata !1, i32 1298, metadata !178, i32 0} ; [ DW_TAG_arg_variable ]
!408 = metadata !{i32 590081, metadata !175, metadata !"timeout", metadata !1, i32 1298, metadata !188, i32 0} ; [ DW_TAG_arg_variable ]
!409 = metadata !{i32 590080, metadata !410, metadata !"in_read", metadata !1, i32 1299, metadata !179, i32 0} ; [ DW_TAG_auto_variable ]
!410 = metadata !{i32 589835, metadata !175, i32 1298, i32 0, metadata !1, i32 42} ; [ DW_TAG_lexical_block ]
!411 = metadata !{i32 590080, metadata !410, metadata !"in_write", metadata !1, i32 1299, metadata !179, i32 0} ; [ DW_TAG_auto_variable ]
!412 = metadata !{i32 590080, metadata !410, metadata !"in_except", metadata !1, i32 1299, metadata !179, i32 0} ; [ DW_TAG_auto_variable ]
!413 = metadata !{i32 590080, metadata !410, metadata !"os_read", metadata !1, i32 1299, metadata !179, i32 0} ; [ DW_TAG_auto_variable ]
!414 = metadata !{i32 590080, metadata !410, metadata !"os_write", metadata !1, i32 1299, metadata !179, i32 0} ; [ DW_TAG_auto_variable ]
!415 = metadata !{i32 590080, metadata !410, metadata !"os_except", metadata !1, i32 1299, metadata !179, i32 0} ; [ DW_TAG_auto_variable ]
!416 = metadata !{i32 590080, metadata !410, metadata !"i", metadata !1, i32 1300, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!417 = metadata !{i32 590080, metadata !410, metadata !"count", metadata !1, i32 1300, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!418 = metadata !{i32 590080, metadata !410, metadata !"os_nfds", metadata !1, i32 1300, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!419 = metadata !{i32 590080, metadata !420, metadata !"f", metadata !1, i32 1330, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!420 = metadata !{i32 589835, metadata !410, i32 1330, i32 0, metadata !1, i32 43} ; [ DW_TAG_lexical_block ]
!421 = metadata !{i32 590080, metadata !422, metadata !"tv", metadata !1, i32 1352, metadata !163, i32 0} ; [ DW_TAG_auto_variable ]
!422 = metadata !{i32 589835, metadata !410, i32 1352, i32 0, metadata !1, i32 44} ; [ DW_TAG_lexical_block ]
!423 = metadata !{i32 590080, metadata !422, metadata !"r", metadata !1, i32 1353, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!424 = metadata !{i32 590080, metadata !425, metadata !"f", metadata !1, i32 1368, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!425 = metadata !{i32 589835, metadata !422, i32 1368, i32 0, metadata !1, i32 45} ; [ DW_TAG_lexical_block ]
!426 = metadata !{i32 590081, metadata !189, metadata !"fd", metadata !1, i32 303, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!427 = metadata !{i32 590080, metadata !428, metadata !"f", metadata !1, i32 305, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!428 = metadata !{i32 589835, metadata !189, i32 303, i32 0, metadata !1, i32 46} ; [ DW_TAG_lexical_block ]
!429 = metadata !{i32 590080, metadata !428, metadata !"r", metadata !1, i32 306, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!430 = metadata !{i32 590081, metadata !190, metadata !"oldfd", metadata !1, i32 1159, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!431 = metadata !{i32 590081, metadata !190, metadata !"newfd", metadata !1, i32 1159, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!432 = metadata !{i32 590080, metadata !433, metadata !"f", metadata !1, i32 1160, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!433 = metadata !{i32 589835, metadata !190, i32 1159, i32 0, metadata !1, i32 47} ; [ DW_TAG_lexical_block ]
!434 = metadata !{i32 590080, metadata !435, metadata !"f2", metadata !1, i32 1166, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!435 = metadata !{i32 589835, metadata !433, i32 1166, i32 0, metadata !1, i32 48} ; [ DW_TAG_lexical_block ]
!436 = metadata !{i32 590081, metadata !193, metadata !"oldfd", metadata !1, i32 1184, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!437 = metadata !{i32 590080, metadata !438, metadata !"f", metadata !1, i32 1185, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!438 = metadata !{i32 589835, metadata !193, i32 1184, i32 0, metadata !1, i32 49} ; [ DW_TAG_lexical_block ]
!439 = metadata !{i32 590080, metadata !440, metadata !"fd", metadata !1, i32 1190, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!440 = metadata !{i32 589835, metadata !438, i32 1191, i32 0, metadata !1, i32 50} ; [ DW_TAG_lexical_block ]
!441 = metadata !{i32 590081, metadata !194, metadata !"fd", metadata !1, i32 1051, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!442 = metadata !{i32 590081, metadata !194, metadata !"cmd", metadata !1, i32 1051, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!443 = metadata !{i32 590080, metadata !444, metadata !"f", metadata !1, i32 1052, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!444 = metadata !{i32 589835, metadata !194, i32 1051, i32 0, metadata !1, i32 51} ; [ DW_TAG_lexical_block ]
!445 = metadata !{i32 590080, metadata !444, metadata !"ap", metadata !1, i32 1053, metadata !446, i32 0} ; [ DW_TAG_auto_variable ]
!446 = metadata !{i32 589846, metadata !447, metadata !"va_list", metadata !447, i32 91, i64 0, i64 0, i64 0, i32 0, metadata !448} ; [ DW_TAG_typedef ]
!447 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!448 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !449, metadata !456, i32 0, null} ; [ DW_TAG_array_type ]
!449 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !450, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !451, i32 0, null} ; [ DW_TAG_structure_type ]
!450 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/klee/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!451 = metadata !{metadata !452, metadata !453, metadata !454, metadata !455}
!452 = metadata !{i32 589837, metadata !449, metadata !"gp_offset", metadata !450, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!453 = metadata !{i32 589837, metadata !449, metadata !"fp_offset", metadata !450, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !11} ; [ DW_TAG_member ]
!454 = metadata !{i32 589837, metadata !449, metadata !"overflow_arg_area", metadata !450, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !140} ; [ DW_TAG_member ]
!455 = metadata !{i32 589837, metadata !449, metadata !"reg_save_area", metadata !450, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !140} ; [ DW_TAG_member ]
!456 = metadata !{metadata !457}
!457 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!458 = metadata !{i32 590080, metadata !444, metadata !"arg", metadata !1, i32 1054, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!459 = metadata !{i32 590080, metadata !460, metadata !"flags", metadata !1, i32 1073, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!460 = metadata !{i32 589835, metadata !444, i32 1073, i32 0, metadata !1, i32 52} ; [ DW_TAG_lexical_block ]
!461 = metadata !{i32 590080, metadata !462, metadata !"r", metadata !1, i32 1099, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!462 = metadata !{i32 589835, metadata !444, i32 1099, i32 0, metadata !1, i32 53} ; [ DW_TAG_lexical_block ]
!463 = metadata !{i32 590081, metadata !195, metadata !"fd", metadata !1, i32 901, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!464 = metadata !{i32 590081, metadata !195, metadata !"request", metadata !1, i32 901, metadata !23, i32 0} ; [ DW_TAG_arg_variable ]
!465 = metadata !{i32 590080, metadata !466, metadata !"f", metadata !1, i32 905, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!466 = metadata !{i32 589835, metadata !195, i32 901, i32 0, metadata !1, i32 54} ; [ DW_TAG_lexical_block ]
!467 = metadata !{i32 590080, metadata !466, metadata !"ap", metadata !1, i32 906, metadata !446, i32 0} ; [ DW_TAG_auto_variable ]
!468 = metadata !{i32 590080, metadata !466, metadata !"buf", metadata !1, i32 907, metadata !140, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 590080, metadata !470, metadata !"stat", metadata !1, i32 923, metadata !226, i32 0} ; [ DW_TAG_auto_variable ]
!470 = metadata !{i32 589835, metadata !466, i32 923, i32 0, metadata !1, i32 55} ; [ DW_TAG_lexical_block ]
!471 = metadata !{i32 590080, metadata !472, metadata !"ts", metadata !1, i32 927, metadata !473, i32 0} ; [ DW_TAG_auto_variable ]
!472 = metadata !{i32 589835, metadata !470, i32 927, i32 0, metadata !1, i32 56} ; [ DW_TAG_lexical_block ]
!473 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !474} ; [ DW_TAG_pointer_type ]
!474 = metadata !{i32 589843, metadata !1, metadata !"termios", metadata !475, i32 31, i64 480, i64 32, i64 0, i32 0, null, metadata !476, i32 0, null} ; [ DW_TAG_structure_type ]
!475 = metadata !{i32 589865, metadata !"termios.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!476 = metadata !{metadata !477, metadata !479, metadata !480, metadata !481, metadata !482, metadata !484, metadata !488, metadata !490}
!477 = metadata !{i32 589837, metadata !474, metadata !"c_iflag", metadata !475, i32 32, i64 32, i64 32, i64 0, i32 0, metadata !478} ; [ DW_TAG_member ]
!478 = metadata !{i32 589846, metadata !475, metadata !"tcflag_t", metadata !475, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!479 = metadata !{i32 589837, metadata !474, metadata !"c_oflag", metadata !475, i32 33, i64 32, i64 32, i64 32, i32 0, metadata !478} ; [ DW_TAG_member ]
!480 = metadata !{i32 589837, metadata !474, metadata !"c_cflag", metadata !475, i32 34, i64 32, i64 32, i64 64, i32 0, metadata !478} ; [ DW_TAG_member ]
!481 = metadata !{i32 589837, metadata !474, metadata !"c_lflag", metadata !475, i32 35, i64 32, i64 32, i64 96, i32 0, metadata !478} ; [ DW_TAG_member ]
!482 = metadata !{i32 589837, metadata !474, metadata !"c_line", metadata !475, i32 36, i64 8, i64 8, i64 128, i32 0, metadata !483} ; [ DW_TAG_member ]
!483 = metadata !{i32 589846, metadata !475, metadata !"cc_t", metadata !475, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ]
!484 = metadata !{i32 589837, metadata !474, metadata !"c_cc", metadata !475, i32 37, i64 256, i64 8, i64 136, i32 0, metadata !485} ; [ DW_TAG_member ]
!485 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 8, i64 0, i32 0, metadata !483, metadata !486, i32 0, null} ; [ DW_TAG_array_type ]
!486 = metadata !{metadata !487}
!487 = metadata !{i32 589857, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!488 = metadata !{i32 589837, metadata !474, metadata !"c_ispeed", metadata !475, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !489} ; [ DW_TAG_member ]
!489 = metadata !{i32 589846, metadata !475, metadata !"speed_t", metadata !475, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!490 = metadata !{i32 589837, metadata !474, metadata !"c_ospeed", metadata !475, i32 39, i64 32, i64 32, i64 448, i32 0, metadata !489} ; [ DW_TAG_member ]
!491 = metadata !{i32 590080, metadata !492, metadata !"ws", metadata !1, i32 996, metadata !493, i32 0} ; [ DW_TAG_auto_variable ]
!492 = metadata !{i32 589835, metadata !470, i32 996, i32 0, metadata !1, i32 57} ; [ DW_TAG_lexical_block ]
!493 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !494} ; [ DW_TAG_pointer_type ]
!494 = metadata !{i32 589843, metadata !1, metadata !"winsize", metadata !495, i32 29, i64 64, i64 16, i64 0, i32 0, null, metadata !496, i32 0, null} ; [ DW_TAG_structure_type ]
!495 = metadata !{i32 589865, metadata !"ioctl-types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!496 = metadata !{metadata !497, metadata !498, metadata !499, metadata !500}
!497 = metadata !{i32 589837, metadata !494, metadata !"ws_row", metadata !495, i32 30, i64 16, i64 16, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ]
!498 = metadata !{i32 589837, metadata !494, metadata !"ws_col", metadata !495, i32 31, i64 16, i64 16, i64 16, i32 0, metadata !209} ; [ DW_TAG_member ]
!499 = metadata !{i32 589837, metadata !494, metadata !"ws_xpixel", metadata !495, i32 32, i64 16, i64 16, i64 32, i32 0, metadata !209} ; [ DW_TAG_member ]
!500 = metadata !{i32 589837, metadata !494, metadata !"ws_ypixel", metadata !495, i32 33, i64 16, i64 16, i64 48, i32 0, metadata !209} ; [ DW_TAG_member ]
!501 = metadata !{i32 590080, metadata !502, metadata !"res", metadata !1, i32 1019, metadata !503, i32 0} ; [ DW_TAG_auto_variable ]
!502 = metadata !{i32 589835, metadata !470, i32 1019, i32 0, metadata !1, i32 58} ; [ DW_TAG_lexical_block ]
!503 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!504 = metadata !{i32 590080, metadata !505, metadata !"r", metadata !1, i32 1044, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!505 = metadata !{i32 589835, metadata !466, i32 1044, i32 0, metadata !1, i32 59} ; [ DW_TAG_lexical_block ]
!506 = metadata !{i32 590081, metadata !198, metadata !"fd", metadata !1, i32 817, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!507 = metadata !{i32 590081, metadata !198, metadata !"dirp", metadata !1, i32 817, metadata !201, i32 0} ; [ DW_TAG_arg_variable ]
!508 = metadata !{i32 590081, metadata !198, metadata !"count", metadata !1, i32 817, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!509 = metadata !{i32 590080, metadata !510, metadata !"f", metadata !1, i32 818, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!510 = metadata !{i32 589835, metadata !198, i32 817, i32 0, metadata !1, i32 60} ; [ DW_TAG_lexical_block ]
!511 = metadata !{i32 590080, metadata !512, metadata !"i", metadata !1, i32 832, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!512 = metadata !{i32 589835, metadata !510, i32 832, i32 0, metadata !1, i32 61} ; [ DW_TAG_lexical_block ]
!513 = metadata !{i32 590080, metadata !512, metadata !"pad", metadata !1, i32 832, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!514 = metadata !{i32 590080, metadata !512, metadata !"bytes", metadata !1, i32 832, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!515 = metadata !{i32 590080, metadata !516, metadata !"df", metadata !1, i32 842, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!516 = metadata !{i32 589835, metadata !512, i32 842, i32 0, metadata !1, i32 62} ; [ DW_TAG_lexical_block ]
!517 = metadata !{i32 590080, metadata !518, metadata !"os_pos", metadata !1, i32 865, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!518 = metadata !{i32 589835, metadata !510, i32 865, i32 0, metadata !1, i32 63} ; [ DW_TAG_lexical_block ]
!519 = metadata !{i32 590080, metadata !518, metadata !"res", metadata !1, i32 866, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!520 = metadata !{i32 590080, metadata !518, metadata !"s", metadata !1, i32 867, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!521 = metadata !{i32 590080, metadata !522, metadata !"pos", metadata !1, i32 883, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!522 = metadata !{i32 589835, metadata !518, i32 883, i32 0, metadata !1, i32 64} ; [ DW_TAG_lexical_block ]
!523 = metadata !{i32 590080, metadata !524, metadata !"dp", metadata !1, i32 889, metadata !201, i32 0} ; [ DW_TAG_auto_variable ]
!524 = metadata !{i32 589835, metadata !522, i32 889, i32 0, metadata !1, i32 65} ; [ DW_TAG_lexical_block ]
!525 = metadata !{i32 590081, metadata !216, metadata !"fd", metadata !1, i32 475, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!526 = metadata !{i32 590081, metadata !216, metadata !"offset", metadata !1, i32 475, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!527 = metadata !{i32 590081, metadata !216, metadata !"whence", metadata !1, i32 475, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!528 = metadata !{i32 590080, metadata !529, metadata !"new_off", metadata !1, i32 476, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!529 = metadata !{i32 589835, metadata !216, i32 475, i32 0, metadata !1, i32 66} ; [ DW_TAG_lexical_block ]
!530 = metadata !{i32 590080, metadata !529, metadata !"f", metadata !1, i32 477, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!531 = metadata !{i32 590081, metadata !219, metadata !"fd", metadata !1, i32 761, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!532 = metadata !{i32 590081, metadata !219, metadata !"buf", metadata !1, i32 761, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!533 = metadata !{i32 590080, metadata !534, metadata !"f", metadata !1, i32 762, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!534 = metadata !{i32 589835, metadata !219, i32 761, i32 0, metadata !1, i32 67} ; [ DW_TAG_lexical_block ]
!535 = metadata !{i32 590080, metadata !536, metadata !"r", metadata !1, i32 771, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!536 = metadata !{i32 589835, metadata !534, i32 771, i32 0, metadata !1, i32 68} ; [ DW_TAG_lexical_block ]
!537 = metadata !{i32 590081, metadata !220, metadata !"path", metadata !1, i32 590, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!538 = metadata !{i32 590081, metadata !220, metadata !"buf", metadata !1, i32 590, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!539 = metadata !{i32 590080, metadata !540, metadata !"dfile", metadata !1, i32 591, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!540 = metadata !{i32 589835, metadata !220, i32 590, i32 0, metadata !1, i32 69} ; [ DW_TAG_lexical_block ]
!541 = metadata !{i32 590080, metadata !542, metadata !"r", metadata !1, i32 599, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!542 = metadata !{i32 589835, metadata !540, i32 599, i32 0, metadata !1, i32 70} ; [ DW_TAG_lexical_block ]
!543 = metadata !{i32 590081, metadata !223, metadata !"fd", metadata !1, i32 554, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!544 = metadata !{i32 590081, metadata !223, metadata !"path", metadata !1, i32 554, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!545 = metadata !{i32 590081, metadata !223, metadata !"buf", metadata !1, i32 554, metadata !226, i32 0} ; [ DW_TAG_arg_variable ]
!546 = metadata !{i32 590081, metadata !223, metadata !"flags", metadata !1, i32 554, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!547 = metadata !{i32 590080, metadata !548, metadata !"dfile", metadata !1, i32 568, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!548 = metadata !{i32 589835, metadata !223, i32 554, i32 0, metadata !1, i32 71} ; [ DW_TAG_lexical_block ]
!549 = metadata !{i32 590080, metadata !548, metadata !"r", metadata !1, i32 575, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!550 = metadata !{i32 590080, metadata !551, metadata !"f", metadata !1, i32 556, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!551 = metadata !{i32 589835, metadata !548, i32 556, i32 0, metadata !1, i32 72} ; [ DW_TAG_lexical_block ]
!552 = metadata !{i32 590081, metadata !246, metadata !"path", metadata !1, i32 535, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!553 = metadata !{i32 590081, metadata !246, metadata !"buf", metadata !1, i32 535, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!554 = metadata !{i32 590080, metadata !555, metadata !"dfile", metadata !1, i32 536, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!555 = metadata !{i32 589835, metadata !246, i32 535, i32 0, metadata !1, i32 73} ; [ DW_TAG_lexical_block ]
!556 = metadata !{i32 590080, metadata !557, metadata !"r", metadata !1, i32 544, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!557 = metadata !{i32 589835, metadata !555, i32 544, i32 0, metadata !1, i32 74} ; [ DW_TAG_lexical_block ]
!558 = metadata !{i32 590081, metadata !247, metadata !"fd", metadata !1, i32 335, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!559 = metadata !{i32 590081, metadata !247, metadata !"buf", metadata !1, i32 335, metadata !140, i32 0} ; [ DW_TAG_arg_variable ]
!560 = metadata !{i32 590081, metadata !247, metadata !"count", metadata !1, i32 335, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!561 = metadata !{i32 590080, metadata !562, metadata !"f", metadata !1, i32 337, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!562 = metadata !{i32 589835, metadata !247, i32 335, i32 0, metadata !1, i32 75} ; [ DW_TAG_lexical_block ]
!563 = metadata !{i32 590080, metadata !564, metadata !"r", metadata !1, i32 364, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!564 = metadata !{i32 589835, metadata !562, i32 365, i32 0, metadata !1, i32 76} ; [ DW_TAG_lexical_block ]
!565 = metadata !{i32 590081, metadata !250, metadata !"df", metadata !1, i32 648, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!566 = metadata !{i32 590081, metadata !250, metadata !"mode", metadata !1, i32 648, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!567 = metadata !{i32 590081, metadata !253, metadata !"fd", metadata !1, i32 683, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!568 = metadata !{i32 590081, metadata !253, metadata !"mode", metadata !1, i32 683, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!569 = metadata !{i32 590080, metadata !570, metadata !"f", metadata !1, i32 686, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!570 = metadata !{i32 589835, metadata !253, i32 683, i32 0, metadata !1, i32 78} ; [ DW_TAG_lexical_block ]
!571 = metadata !{i32 590080, metadata !572, metadata !"r", metadata !1, i32 703, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!572 = metadata !{i32 589835, metadata !570, i32 703, i32 0, metadata !1, i32 79} ; [ DW_TAG_lexical_block ]
!573 = metadata !{i32 590081, metadata !256, metadata !"path", metadata !1, i32 661, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!574 = metadata !{i32 590081, metadata !256, metadata !"mode", metadata !1, i32 661, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!575 = metadata !{i32 590080, metadata !576, metadata !"dfile", metadata !1, i32 664, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!576 = metadata !{i32 589835, metadata !256, i32 661, i32 0, metadata !1, i32 80} ; [ DW_TAG_lexical_block ]
!577 = metadata !{i32 590080, metadata !578, metadata !"r", metadata !1, i32 676, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!578 = metadata !{i32 589835, metadata !576, i32 676, i32 0, metadata !1, i32 81} ; [ DW_TAG_lexical_block ]
!579 = metadata !{i32 590081, metadata !259, metadata !"fd", metadata !1, i32 403, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!580 = metadata !{i32 590081, metadata !259, metadata !"buf", metadata !1, i32 403, metadata !140, i32 0} ; [ DW_TAG_arg_variable ]
!581 = metadata !{i32 590081, metadata !259, metadata !"count", metadata !1, i32 403, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!582 = metadata !{i32 590080, metadata !583, metadata !"f", metadata !1, i32 405, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!583 = metadata !{i32 589835, metadata !259, i32 403, i32 0, metadata !1, i32 82} ; [ DW_TAG_lexical_block ]
!584 = metadata !{i32 590080, metadata !585, metadata !"r", metadata !1, i32 423, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!585 = metadata !{i32 589835, metadata !583, i32 425, i32 0, metadata !1, i32 83} ; [ DW_TAG_lexical_block ]
!586 = metadata !{i32 590080, metadata !587, metadata !"actual_count", metadata !1, i32 448, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!587 = metadata !{i32 589835, metadata !583, i32 448, i32 0, metadata !1, i32 84} ; [ DW_TAG_lexical_block ]
!588 = metadata !{i32 590081, metadata !260, metadata !"pathname", metadata !1, i32 128, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!589 = metadata !{i32 590081, metadata !260, metadata !"flags", metadata !1, i32 128, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!590 = metadata !{i32 590081, metadata !260, metadata !"mode", metadata !1, i32 128, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!591 = metadata !{i32 590080, metadata !592, metadata !"df", metadata !1, i32 129, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!592 = metadata !{i32 589835, metadata !260, i32 128, i32 0, metadata !1, i32 85} ; [ DW_TAG_lexical_block ]
!593 = metadata !{i32 590080, metadata !592, metadata !"f", metadata !1, i32 130, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!594 = metadata !{i32 590080, metadata !592, metadata !"fd", metadata !1, i32 131, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!595 = metadata !{i32 590080, metadata !596, metadata !"os_fd", metadata !1, i32 181, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!596 = metadata !{i32 589835, metadata !592, i32 181, i32 0, metadata !1, i32 86} ; [ DW_TAG_lexical_block ]
!597 = metadata !{i32 590081, metadata !263, metadata !"basefd", metadata !1, i32 201, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!598 = metadata !{i32 590081, metadata !263, metadata !"pathname", metadata !1, i32 201, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!599 = metadata !{i32 590081, metadata !263, metadata !"flags", metadata !1, i32 201, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!600 = metadata !{i32 590081, metadata !263, metadata !"mode", metadata !1, i32 201, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!601 = metadata !{i32 590080, metadata !602, metadata !"f", metadata !1, i32 202, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!602 = metadata !{i32 589835, metadata !263, i32 201, i32 0, metadata !1, i32 87} ; [ DW_TAG_lexical_block ]
!603 = metadata !{i32 590080, metadata !602, metadata !"fd", metadata !1, i32 203, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!604 = metadata !{i32 590080, metadata !602, metadata !"os_fd", metadata !1, i32 236, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!605 = metadata !{i32 590080, metadata !606, metadata !"bf", metadata !1, i32 205, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!606 = metadata !{i32 589835, metadata !602, i32 205, i32 0, metadata !1, i32 88} ; [ DW_TAG_lexical_block ]
!607 = metadata !{i32 73, i32 0, metadata !172, null}
!608 = metadata !{i32 39, i32 0, metadata !0, metadata !609}
!609 = metadata !{i32 74, i32 0, metadata !401, null}
!610 = metadata !{i32 40, i32 0, metadata !268, metadata !609}
!611 = metadata !{i32 43, i32 0, metadata !268, metadata !609}
!612 = metadata !{i32 46, i32 0, metadata !268, metadata !609}
!613 = metadata !{i32 47, i32 0, metadata !268, metadata !609}
!614 = metadata !{i32 48, i32 0, metadata !271, metadata !609}
!615 = metadata !{null}
!616 = metadata !{i32 49, i32 0, metadata !271, metadata !609}
!617 = metadata !{i32 76, i32 0, metadata !401, null}
!618 = metadata !{i32 1431, i32 0, metadata !147, metadata !619}
!619 = metadata !{i32 81, i32 0, metadata !403, null}
!620 = metadata !{i32 1418, i32 0, metadata !137, metadata !621}
!621 = metadata !{i32 1432, i32 0, metadata !355, metadata !619}
!622 = metadata !{i32 1420, i32 0, metadata !345, metadata !621}
!623 = metadata !{i32 1421, i32 0, metadata !345, metadata !621}
!624 = metadata !{i32 0}
!625 = metadata !{i32 1435, i32 0, metadata !355, metadata !619}
!626 = metadata !{i32 1436, i32 0, metadata !358, metadata !619}
!627 = metadata !{i32 1437, i32 0, metadata !358, metadata !619}
!628 = metadata !{i32 1439, i32 0, metadata !358, metadata !619}
!629 = metadata !{i32 1442, i32 0, metadata !358, metadata !619}
!630 = metadata !{i32 1445, i32 0, metadata !360, metadata !619}
!631 = metadata !{i32 1446, i32 0, metadata !360, metadata !619}
!632 = metadata !{i32 1447, i32 0, metadata !360, metadata !619}
!633 = metadata !{i32 1448, i32 0, metadata !360, metadata !619}
!634 = metadata !{i32 82, i32 0, metadata !403, null}
!635 = metadata !{i32 83, i32 0, metadata !403, null}
!636 = metadata !{i32 79, i32 0, metadata !401, null}
!637 = metadata !{i32 88, i32 0, metadata !72, null}
!638 = metadata !{i32 89, i32 0, metadata !278, null}
!639 = metadata !{i32 90, i32 0, metadata !278, null}
!640 = metadata !{i32 91, i32 0, metadata !278, null}
!641 = metadata !{i32 1460, i32 0, metadata !79, null}
!642 = metadata !{i32 1461, i32 0, metadata !643, null}
!643 = metadata !{i32 589835, metadata !79, i32 1460, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!644 = metadata !{i32 1462, i32 0, metadata !643, null}
!645 = metadata !{i32 1463, i32 0, metadata !643, null}
!646 = metadata !{i32 1466, i32 0, metadata !643, null}
!647 = metadata !{i32 1470, i32 0, metadata !643, null}
!648 = metadata !{i32 1471, i32 0, metadata !643, null}
!649 = metadata !{i32 1472, i32 0, metadata !643, null}
!650 = metadata !{i32 1242, i32 0, metadata !82, null}
!651 = metadata !{i32 39, i32 0, metadata !0, metadata !652}
!652 = metadata !{i32 1245, i32 0, metadata !290, null}
!653 = metadata !{i32 40, i32 0, metadata !268, metadata !652}
!654 = metadata !{i32 43, i32 0, metadata !268, metadata !652}
!655 = metadata !{i32 46, i32 0, metadata !268, metadata !652}
!656 = metadata !{i32 47, i32 0, metadata !268, metadata !652}
!657 = metadata !{i32 48, i32 0, metadata !271, metadata !652}
!658 = metadata !{i32 49, i32 0, metadata !271, metadata !652}
!659 = metadata !{i32 1246, i32 0, metadata !290, null}
!660 = metadata !{i32 1248, i32 0, metadata !290, null}
!661 = metadata !{i32 1249, i32 0, metadata !290, null}
!662 = metadata !{i32 1250, i32 0, metadata !290, null}
!663 = metadata !{i32 1251, i32 0, metadata !290, null}
!664 = metadata !{i32 1252, i32 0, metadata !290, null}
!665 = metadata !{i32 1253, i32 0, metadata !290, null}
!666 = metadata !{i32 1255, i32 0, metadata !290, null}
!667 = metadata !{i32 1256, i32 0, metadata !290, null}
!668 = metadata !{i32 1260, i32 0, metadata !290, null}
!669 = metadata !{i32 1261, i32 0, metadata !290, null}
!670 = metadata !{i32 1262, i32 0, metadata !290, null}
!671 = metadata !{i32 1221, i32 0, metadata !85, null}
!672 = metadata !{i32 39, i32 0, metadata !0, metadata !673}
!673 = metadata !{i32 1222, i32 0, metadata !293, null}
!674 = metadata !{i32 40, i32 0, metadata !268, metadata !673}
!675 = metadata !{i32 43, i32 0, metadata !268, metadata !673}
!676 = metadata !{i32 46, i32 0, metadata !268, metadata !673}
!677 = metadata !{i32 47, i32 0, metadata !268, metadata !673}
!678 = metadata !{i32 48, i32 0, metadata !271, metadata !673}
!679 = metadata !{i32 49, i32 0, metadata !271, metadata !673}
!680 = metadata !{i32 1223, i32 0, metadata !293, null}
!681 = metadata !{i32 1225, i32 0, metadata !293, null}
!682 = metadata !{i32 1226, i32 0, metadata !293, null}
!683 = metadata !{i32 1227, i32 0, metadata !293, null}
!684 = metadata !{i32 1228, i32 0, metadata !293, null}
!685 = metadata !{i32 1229, i32 0, metadata !293, null}
!686 = metadata !{i32 1230, i32 0, metadata !293, null}
!687 = metadata !{i32 1232, i32 0, metadata !293, null}
!688 = metadata !{i32 1233, i32 0, metadata !293, null}
!689 = metadata !{i32 1237, i32 0, metadata !293, null}
!690 = metadata !{i32 1238, i32 0, metadata !293, null}
!691 = metadata !{i32 1239, i32 0, metadata !293, null}
!692 = metadata !{i32 1203, i32 0, metadata !86, null}
!693 = metadata !{i32 39, i32 0, metadata !0, metadata !694}
!694 = metadata !{i32 1204, i32 0, metadata !296, null}
!695 = metadata !{i32 40, i32 0, metadata !268, metadata !694}
!696 = metadata !{i32 43, i32 0, metadata !268, metadata !694}
!697 = metadata !{i32 46, i32 0, metadata !268, metadata !694}
!698 = metadata !{i32 47, i32 0, metadata !268, metadata !694}
!699 = metadata !{i32 48, i32 0, metadata !271, metadata !694}
!700 = metadata !{i32 49, i32 0, metadata !271, metadata !694}
!701 = metadata !{i32 1205, i32 0, metadata !296, null}
!702 = metadata !{i32 1207, i32 0, metadata !296, null}
!703 = metadata !{i32 1208, i32 0, metadata !296, null}
!704 = metadata !{i32 1209, i32 0, metadata !296, null}
!705 = metadata !{i32 1211, i32 0, metadata !296, null}
!706 = metadata !{i32 1212, i32 0, metadata !296, null}
!707 = metadata !{i32 1216, i32 0, metadata !296, null}
!708 = metadata !{i32 1217, i32 0, metadata !296, null}
!709 = metadata !{i32 1218, i32 0, metadata !296, null}
!710 = metadata !{i32 1265, i32 0, metadata !92, null}
!711 = metadata !{i32 39, i32 0, metadata !0, metadata !712}
!712 = metadata !{i32 1266, i32 0, metadata !304, null}
!713 = metadata !{i32 40, i32 0, metadata !268, metadata !712}
!714 = metadata !{i32 43, i32 0, metadata !268, metadata !712}
!715 = metadata !{i32 46, i32 0, metadata !268, metadata !712}
!716 = metadata !{i32 47, i32 0, metadata !268, metadata !712}
!717 = metadata !{i32 48, i32 0, metadata !271, metadata !712}
!718 = metadata !{i32 49, i32 0, metadata !271, metadata !712}
!719 = metadata !{i32 1267, i32 0, metadata !304, null}
!720 = metadata !{i32 1270, i32 0, metadata !304, null}
!721 = metadata !{i32 1271, i32 0, metadata !304, null}
!722 = metadata !{i32 1272, i32 0, metadata !304, null}
!723 = metadata !{i32 1273, i32 0, metadata !304, null}
!724 = metadata !{i32 1274, i32 0, metadata !304, null}
!725 = metadata !{i32 1275, i32 0, metadata !304, null}
!726 = metadata !{i32 1276, i32 0, metadata !304, null}
!727 = metadata !{i32 1278, i32 0, metadata !304, null}
!728 = metadata !{i32 1279, i32 0, metadata !304, null}
!729 = metadata !{i32 1282, i32 0, metadata !306, null}
!730 = metadata !{i32 1283, i32 0, metadata !306, null}
!731 = metadata !{i32 1284, i32 0, metadata !306, null}
!732 = metadata !{i32 1285, i32 0, metadata !306, null}
!733 = metadata !{i32 1143, i32 0, metadata !97, null}
!734 = metadata !{i32 63, i32 0, metadata !59, metadata !735}
!735 = metadata !{i32 1144, i32 0, metadata !309, null}
!736 = metadata !{i32 64, i32 0, metadata !275, metadata !735}
!737 = metadata !{i32 65, i32 0, metadata !274, metadata !735}
!738 = metadata !{i32 66, i32 0, metadata !274, metadata !735}
!739 = metadata !{i32 1146, i32 0, metadata !309, null}
!740 = metadata !{i32 1147, i32 0, metadata !309, null}
!741 = metadata !{i32 1148, i32 0, metadata !309, null}
!742 = metadata !{i32 1149, i32 0, metadata !309, null}
!743 = metadata !{i32 1152, i32 0, metadata !311, null}
!744 = metadata !{i32 1153, i32 0, metadata !311, null}
!745 = metadata !{i32 1154, i32 0, metadata !311, null}
!746 = metadata !{i32 1123, i32 0, metadata !100, null}
!747 = metadata !{i32 63, i32 0, metadata !59, metadata !748}
!748 = metadata !{i32 1124, i32 0, metadata !315, null}
!749 = metadata !{i32 64, i32 0, metadata !275, metadata !748}
!750 = metadata !{i32 65, i32 0, metadata !274, metadata !748}
!751 = metadata !{i32 66, i32 0, metadata !274, metadata !748}
!752 = metadata !{i32 1126, i32 0, metadata !315, null}
!753 = metadata !{i32 1127, i32 0, metadata !315, null}
!754 = metadata !{i32 1128, i32 0, metadata !315, null}
!755 = metadata !{i32 1131, i32 0, metadata !315, null}
!756 = metadata !{i32 1132, i32 0, metadata !315, null}
!757 = metadata !{i32 1133, i32 0, metadata !315, null}
!758 = metadata !{i32 1134, i32 0, metadata !315, null}
!759 = metadata !{i32 1136, i32 0, metadata !317, null}
!760 = metadata !{i32 1137, i32 0, metadata !317, null}
!761 = metadata !{i32 1138, i32 0, metadata !317, null}
!762 = metadata !{i32 784, i32 0, metadata !130, null}
!763 = metadata !{i32 63, i32 0, metadata !59, metadata !764}
!764 = metadata !{i32 786, i32 0, metadata !321, null}
!765 = metadata !{i32 64, i32 0, metadata !275, metadata !764}
!766 = metadata !{i32 65, i32 0, metadata !274, metadata !764}
!767 = metadata !{i32 66, i32 0, metadata !274, metadata !764}
!768 = metadata !{i32 788, i32 0, metadata !321, null}
!769 = metadata !{i32 790, i32 0, metadata !321, null}
!770 = metadata !{i32 791, i32 0, metadata !321, null}
!771 = metadata !{i32 792, i32 0, metadata !321, null}
!772 = metadata !{i32 795, i32 0, metadata !321, null}
!773 = metadata !{i32 796, i32 0, metadata !321, null}
!774 = metadata !{i32 797, i32 0, metadata !321, null}
!775 = metadata !{i32 798, i32 0, metadata !321, null}
!776 = metadata !{i32 801, i32 0, metadata !321, null}
!777 = metadata !{i32 802, i32 0, metadata !321, null}
!778 = metadata !{i32 803, i32 0, metadata !321, null}
!779 = metadata !{i32 804, i32 0, metadata !321, null}
!780 = metadata !{i32 807, i32 0, metadata !323, null}
!781 = metadata !{i32 811, i32 0, metadata !323, null}
!782 = metadata !{i32 812, i32 0, metadata !323, null}
!783 = metadata !{i32 729, i32 0, metadata !133, null}
!784 = metadata !{i32 63, i32 0, metadata !59, metadata !785}
!785 = metadata !{i32 730, i32 0, metadata !335, null}
!786 = metadata !{i32 64, i32 0, metadata !275, metadata !785}
!787 = metadata !{i32 65, i32 0, metadata !274, metadata !785}
!788 = metadata !{i32 66, i32 0, metadata !274, metadata !785}
!789 = metadata !{i32 732, i32 0, metadata !335, null}
!790 = metadata !{i32 733, i32 0, metadata !335, null}
!791 = metadata !{i32 734, i32 0, metadata !335, null}
!792 = metadata !{i32 737, i32 0, metadata !335, null}
!793 = metadata !{%struct.exe_disk_file_t* null}
!794 = metadata !{i32 710, i32 0, metadata !87, metadata !795}
!795 = metadata !{i32 738, i32 0, metadata !335, null}
!796 = metadata !{i32 711, i32 0, metadata !797, metadata !795}
!797 = metadata !{i32 589835, metadata !87, i32 710, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!798 = metadata !{i32 712, i32 0, metadata !797, metadata !795}
!799 = metadata !{i32 740, i32 0, metadata !337, null}
!800 = metadata !{i32 741, i32 0, metadata !337, null}
!801 = metadata !{i32 742, i32 0, metadata !337, null}
!802 = metadata !{i32 627, i32 0, metadata !136, null}
!803 = metadata !{i32 63, i32 0, metadata !59, metadata !804}
!804 = metadata !{i32 628, i32 0, metadata !340, null}
!805 = metadata !{i32 64, i32 0, metadata !275, metadata !804}
!806 = metadata !{i32 65, i32 0, metadata !274, metadata !804}
!807 = metadata !{i32 66, i32 0, metadata !274, metadata !804}
!808 = metadata !{i32 630, i32 0, metadata !340, null}
!809 = metadata !{i32 631, i32 0, metadata !340, null}
!810 = metadata !{i32 632, i32 0, metadata !340, null}
!811 = metadata !{i32 635, i32 0, metadata !340, null}
!812 = metadata !{i32 636, i32 0, metadata !340, null}
!813 = metadata !{i32 637, i32 0, metadata !340, null}
!814 = metadata !{i32 638, i32 0, metadata !340, null}
!815 = metadata !{i32 640, i32 0, metadata !342, null}
!816 = metadata !{i32 641, i32 0, metadata !342, null}
!817 = metadata !{i32 642, i32 0, metadata !342, null}
!818 = metadata !{i32 1383, i32 0, metadata !144, null}
!819 = metadata !{i32 1387, i32 0, metadata !352, null}
!820 = metadata !{i32 1389, i32 0, metadata !352, null}
!821 = metadata !{i32 1390, i32 0, metadata !352, null}
!822 = metadata !{i32 1391, i32 0, metadata !352, null}
!823 = metadata !{i32 1392, i32 0, metadata !352, null}
!824 = metadata !{i32 1395, i32 0, metadata !352, null}
!825 = metadata !{i32 1396, i32 0, metadata !352, null}
!826 = metadata !{i64 1024}
!827 = metadata !{i32 1397, i32 0, metadata !352, null}
!828 = metadata !{i32 1398, i32 0, metadata !352, null}
!829 = metadata !{i32 1418, i32 0, metadata !137, metadata !830}
!830 = metadata !{i32 1401, i32 0, metadata !352, null}
!831 = metadata !{i32 1420, i32 0, metadata !345, metadata !830}
!832 = metadata !{i32 1421, i32 0, metadata !345, metadata !830}
!833 = metadata !{i32 1425, i32 0, metadata !141, metadata !834}
!834 = metadata !{i32 1402, i32 0, metadata !352, null}
!835 = metadata !{i32 1426, i32 0, metadata !348, metadata !834}
!836 = metadata !{i32 1427, i32 0, metadata !348, metadata !834}
!837 = metadata !{i32 1406, i32 0, metadata !352, null}
!838 = metadata !{i32 1407, i32 0, metadata !352, null}
!839 = metadata !{i32 1408, i32 0, metadata !352, null}
!840 = metadata !{i32 1409, i32 0, metadata !352, null}
!841 = metadata !{i32 1410, i32 0, metadata !352, null}
!842 = metadata !{i32 1106, i32 0, metadata !150, null}
!843 = metadata !{i32 39, i32 0, metadata !0, metadata !844}
!844 = metadata !{i32 1107, i32 0, metadata !364, null}
!845 = metadata !{i32 40, i32 0, metadata !268, metadata !844}
!846 = metadata !{i32 43, i32 0, metadata !268, metadata !844}
!847 = metadata !{i32 46, i32 0, metadata !268, metadata !844}
!848 = metadata !{i32 47, i32 0, metadata !268, metadata !844}
!849 = metadata !{i32 48, i32 0, metadata !271, metadata !844}
!850 = metadata !{i32 49, i32 0, metadata !271, metadata !844}
!851 = metadata !{i32 1108, i32 0, metadata !364, null}
!852 = metadata !{i32 1110, i32 0, metadata !364, null}
!853 = metadata !{i32 1111, i32 0, metadata !364, null}
!854 = metadata !{i32 1112, i32 0, metadata !364, null}
!855 = metadata !{i32 1431, i32 0, metadata !147, metadata !856}
!856 = metadata !{i32 1116, i32 0, metadata !366, null}
!857 = metadata !{i32 1418, i32 0, metadata !137, metadata !858}
!858 = metadata !{i32 1432, i32 0, metadata !355, metadata !856}
!859 = metadata !{i32 1420, i32 0, metadata !345, metadata !858}
!860 = metadata !{i32 1421, i32 0, metadata !345, metadata !858}
!861 = metadata !{i32 1435, i32 0, metadata !355, metadata !856}
!862 = metadata !{i32 1436, i32 0, metadata !358, metadata !856}
!863 = metadata !{i32 1437, i32 0, metadata !358, metadata !856}
!864 = metadata !{i32 1439, i32 0, metadata !358, metadata !856}
!865 = metadata !{i32 1442, i32 0, metadata !358, metadata !856}
!866 = metadata !{i32 1445, i32 0, metadata !360, metadata !856}
!867 = metadata !{i32 1446, i32 0, metadata !360, metadata !856}
!868 = metadata !{i32 1447, i32 0, metadata !360, metadata !856}
!869 = metadata !{i32 1448, i32 0, metadata !360, metadata !856}
!870 = metadata !{i32 1117, i32 0, metadata !366, null}
!871 = metadata !{i32 1118, i32 0, metadata !366, null}
!872 = metadata !{i32 747, i32 0, metadata !153, null}
!873 = metadata !{i32 39, i32 0, metadata !0, metadata !874}
!874 = metadata !{i32 749, i32 0, metadata !371, null}
!875 = metadata !{i32 40, i32 0, metadata !268, metadata !874}
!876 = metadata !{i32 43, i32 0, metadata !268, metadata !874}
!877 = metadata !{i32 46, i32 0, metadata !268, metadata !874}
!878 = metadata !{i32 47, i32 0, metadata !268, metadata !874}
!879 = metadata !{i32 48, i32 0, metadata !271, metadata !874}
!880 = metadata !{i32 49, i32 0, metadata !271, metadata !874}
!881 = metadata !{i32 751, i32 0, metadata !371, null}
!882 = metadata !{i32 710, i32 0, metadata !87, metadata !883}
!883 = metadata !{i32 752, i32 0, metadata !371, null}
!884 = metadata !{i32 711, i32 0, metadata !797, metadata !883}
!885 = metadata !{i32 712, i32 0, metadata !797, metadata !883}
!886 = metadata !{i32 1431, i32 0, metadata !147, metadata !887}
!887 = metadata !{i32 754, i32 0, metadata !373, null}
!888 = metadata !{i32 1418, i32 0, metadata !137, metadata !889}
!889 = metadata !{i32 1432, i32 0, metadata !355, metadata !887}
!890 = metadata !{i32 1420, i32 0, metadata !345, metadata !889}
!891 = metadata !{i32 1421, i32 0, metadata !345, metadata !889}
!892 = metadata !{i32 1435, i32 0, metadata !355, metadata !887}
!893 = metadata !{i32 1436, i32 0, metadata !358, metadata !887}
!894 = metadata !{i32 1437, i32 0, metadata !358, metadata !887}
!895 = metadata !{i32 1439, i32 0, metadata !358, metadata !887}
!896 = metadata !{i32 1442, i32 0, metadata !358, metadata !887}
!897 = metadata !{i32 1445, i32 0, metadata !360, metadata !887}
!898 = metadata !{i32 1446, i32 0, metadata !360, metadata !887}
!899 = metadata !{i32 1447, i32 0, metadata !360, metadata !887}
!900 = metadata !{i32 1448, i32 0, metadata !360, metadata !887}
!901 = metadata !{i32 755, i32 0, metadata !373, null}
!902 = metadata !{i32 756, i32 0, metadata !373, null}
!903 = metadata !{i32 716, i32 0, metadata !156, null}
!904 = metadata !{i32 39, i32 0, metadata !0, metadata !905}
!905 = metadata !{i32 717, i32 0, metadata !378, null}
!906 = metadata !{i32 40, i32 0, metadata !268, metadata !905}
!907 = metadata !{i32 43, i32 0, metadata !268, metadata !905}
!908 = metadata !{i32 46, i32 0, metadata !268, metadata !905}
!909 = metadata !{i32 47, i32 0, metadata !268, metadata !905}
!910 = metadata !{i32 48, i32 0, metadata !271, metadata !905}
!911 = metadata !{i32 49, i32 0, metadata !271, metadata !905}
!912 = metadata !{i32 719, i32 0, metadata !378, null}
!913 = metadata !{i32 710, i32 0, metadata !87, metadata !914}
!914 = metadata !{i32 720, i32 0, metadata !378, null}
!915 = metadata !{i32 711, i32 0, metadata !797, metadata !914}
!916 = metadata !{i32 712, i32 0, metadata !797, metadata !914}
!917 = metadata !{i32 1431, i32 0, metadata !147, metadata !918}
!918 = metadata !{i32 722, i32 0, metadata !380, null}
!919 = metadata !{i32 1418, i32 0, metadata !137, metadata !920}
!920 = metadata !{i32 1432, i32 0, metadata !355, metadata !918}
!921 = metadata !{i32 1420, i32 0, metadata !345, metadata !920}
!922 = metadata !{i32 1421, i32 0, metadata !345, metadata !920}
!923 = metadata !{i32 1435, i32 0, metadata !355, metadata !918}
!924 = metadata !{i32 1436, i32 0, metadata !358, metadata !918}
!925 = metadata !{i32 1437, i32 0, metadata !358, metadata !918}
!926 = metadata !{i32 1439, i32 0, metadata !358, metadata !918}
!927 = metadata !{i32 1442, i32 0, metadata !358, metadata !918}
!928 = metadata !{i32 1445, i32 0, metadata !360, metadata !918}
!929 = metadata !{i32 1446, i32 0, metadata !360, metadata !918}
!930 = metadata !{i32 1447, i32 0, metadata !360, metadata !918}
!931 = metadata !{i32 1448, i32 0, metadata !360, metadata !918}
!932 = metadata !{i32 723, i32 0, metadata !380, null}
!933 = metadata !{i32 724, i32 0, metadata !380, null}
!934 = metadata !{i32 609, i32 0, metadata !157, null}
!935 = metadata !{i32 39, i32 0, metadata !0, metadata !936}
!936 = metadata !{i32 610, i32 0, metadata !383, null}
!937 = metadata !{i32 40, i32 0, metadata !268, metadata !936}
!938 = metadata !{i32 43, i32 0, metadata !268, metadata !936}
!939 = metadata !{i32 46, i32 0, metadata !268, metadata !936}
!940 = metadata !{i32 47, i32 0, metadata !268, metadata !936}
!941 = metadata !{i32 48, i32 0, metadata !271, metadata !936}
!942 = metadata !{i32 49, i32 0, metadata !271, metadata !936}
!943 = metadata !{i32 612, i32 0, metadata !383, null}
!944 = metadata !{i32 614, i32 0, metadata !383, null}
!945 = metadata !{i32 615, i32 0, metadata !383, null}
!946 = metadata !{i32 616, i32 0, metadata !383, null}
!947 = metadata !{i32 1431, i32 0, metadata !147, metadata !948}
!948 = metadata !{i32 620, i32 0, metadata !385, null}
!949 = metadata !{i32 1418, i32 0, metadata !137, metadata !950}
!950 = metadata !{i32 1432, i32 0, metadata !355, metadata !948}
!951 = metadata !{i32 1420, i32 0, metadata !345, metadata !950}
!952 = metadata !{i32 1421, i32 0, metadata !345, metadata !950}
!953 = metadata !{i32 1435, i32 0, metadata !355, metadata !948}
!954 = metadata !{i32 1436, i32 0, metadata !358, metadata !948}
!955 = metadata !{i32 1437, i32 0, metadata !358, metadata !948}
!956 = metadata !{i32 1439, i32 0, metadata !358, metadata !948}
!957 = metadata !{i32 1442, i32 0, metadata !358, metadata !948}
!958 = metadata !{i32 1445, i32 0, metadata !360, metadata !948}
!959 = metadata !{i32 1446, i32 0, metadata !360, metadata !948}
!960 = metadata !{i32 1447, i32 0, metadata !360, metadata !948}
!961 = metadata !{i32 1448, i32 0, metadata !360, metadata !948}
!962 = metadata !{i32 621, i32 0, metadata !385, null}
!963 = metadata !{i32 622, i32 0, metadata !385, null}
!964 = metadata !{i32 256, i32 0, metadata !158, null}
!965 = metadata !{i32 39, i32 0, metadata !0, metadata !966}
!966 = metadata !{i32 257, i32 0, metadata !389, null}
!967 = metadata !{i32 40, i32 0, metadata !268, metadata !966}
!968 = metadata !{i32 43, i32 0, metadata !268, metadata !966}
!969 = metadata !{i32 46, i32 0, metadata !268, metadata !966}
!970 = metadata !{i32 47, i32 0, metadata !268, metadata !966}
!971 = metadata !{i32 48, i32 0, metadata !271, metadata !966}
!972 = metadata !{i32 49, i32 0, metadata !271, metadata !966}
!973 = metadata !{i32 259, i32 0, metadata !389, null}
!974 = metadata !{i32 261, i32 0, metadata !389, null}
!975 = metadata !{i32 262, i32 0, metadata !389, null}
!976 = metadata !{i32 264, i32 0, metadata !389, null}
!977 = metadata !{i32 265, i32 0, metadata !389, null}
!978 = metadata !{i32 267, i32 0, metadata !389, null}
!979 = metadata !{i32 1431, i32 0, metadata !147, metadata !980}
!980 = metadata !{i32 269, i32 0, metadata !389, null}
!981 = metadata !{i32 1418, i32 0, metadata !137, metadata !982}
!982 = metadata !{i32 1432, i32 0, metadata !355, metadata !980}
!983 = metadata !{i32 1420, i32 0, metadata !345, metadata !982}
!984 = metadata !{i32 1421, i32 0, metadata !345, metadata !982}
!985 = metadata !{i32 1435, i32 0, metadata !355, metadata !980}
!986 = metadata !{i32 1436, i32 0, metadata !358, metadata !980}
!987 = metadata !{i32 1437, i32 0, metadata !358, metadata !980}
!988 = metadata !{i32 1439, i32 0, metadata !358, metadata !980}
!989 = metadata !{i32 1442, i32 0, metadata !358, metadata !980}
!990 = metadata !{i32 1445, i32 0, metadata !360, metadata !980}
!991 = metadata !{i32 1446, i32 0, metadata !360, metadata !980}
!992 = metadata !{i32 1447, i32 0, metadata !360, metadata !980}
!993 = metadata !{i32 1448, i32 0, metadata !360, metadata !980}
!994 = metadata !{i32 270, i32 0, metadata !389, null}
!995 = metadata !{i32 271, i32 0, metadata !389, null}
!996 = metadata !{i32 277, i32 0, metadata !169, null}
!997 = metadata !{i32 278, i32 0, metadata !395, null}
!998 = metadata !{i32 63, i32 0, metadata !59, metadata !999}
!999 = metadata !{i32 279, i32 0, metadata !397, null}
!1000 = metadata !{i32 64, i32 0, metadata !275, metadata !999}
!1001 = metadata !{i32 65, i32 0, metadata !274, metadata !999}
!1002 = metadata !{i32 66, i32 0, metadata !274, metadata !999}
!1003 = metadata !{i32 281, i32 0, metadata !397, null}
!1004 = metadata !{i32 282, i32 0, metadata !397, null}
!1005 = metadata !{i32 283, i32 0, metadata !397, null}
!1006 = metadata !{i32 284, i32 0, metadata !397, null}
!1007 = metadata !{i32 285, i32 0, metadata !397, null}
!1008 = metadata !{i32 286, i32 0, metadata !397, null}
!1009 = metadata !{i32 287, i32 0, metadata !397, null}
!1010 = metadata !{i32 289, i32 0, metadata !397, null}
!1011 = metadata !{i32 39, i32 0, metadata !0, metadata !1012}
!1012 = metadata !{i32 291, i32 0, metadata !395, null}
!1013 = metadata !{i32 40, i32 0, metadata !268, metadata !1012}
!1014 = metadata !{i32 43, i32 0, metadata !268, metadata !1012}
!1015 = metadata !{i32 46, i32 0, metadata !268, metadata !1012}
!1016 = metadata !{i32 47, i32 0, metadata !268, metadata !1012}
!1017 = metadata !{i32 48, i32 0, metadata !271, metadata !1012}
!1018 = metadata !{i32 49, i32 0, metadata !271, metadata !1012}
!1019 = metadata !{i32 292, i32 0, metadata !395, null}
!1020 = metadata !{i32 297, i32 0, metadata !395, null}
!1021 = metadata !{i32 1431, i32 0, metadata !147, metadata !1020}
!1022 = metadata !{i32 1418, i32 0, metadata !137, metadata !1023}
!1023 = metadata !{i32 1432, i32 0, metadata !355, metadata !1020}
!1024 = metadata !{i32 1420, i32 0, metadata !345, metadata !1023}
!1025 = metadata !{i32 1421, i32 0, metadata !345, metadata !1023}
!1026 = metadata !{i32 1435, i32 0, metadata !355, metadata !1020}
!1027 = metadata !{i32 1436, i32 0, metadata !358, metadata !1020}
!1028 = metadata !{i32 1437, i32 0, metadata !358, metadata !1020}
!1029 = metadata !{i32 1439, i32 0, metadata !358, metadata !1020}
!1030 = metadata !{i32 1442, i32 0, metadata !358, metadata !1020}
!1031 = metadata !{i32 1445, i32 0, metadata !360, metadata !1020}
!1032 = metadata !{i32 1446, i32 0, metadata !360, metadata !1020}
!1033 = metadata !{i32 1447, i32 0, metadata !360, metadata !1020}
!1034 = metadata !{i32 1448, i32 0, metadata !360, metadata !1020}
!1035 = metadata !{i32 298, i32 0, metadata !395, null}
!1036 = metadata !{i32 299, i32 0, metadata !395, null}
!1037 = metadata !{i32 1297, i32 0, metadata !175, null}
!1038 = metadata !{i32 1298, i32 0, metadata !175, null}
!1039 = metadata !{i32 1299, i32 0, metadata !410, null}
!1040 = metadata !{i32 1300, i32 0, metadata !410, null}
!1041 = metadata !{i32 1302, i32 0, metadata !410, null}
!1042 = metadata !{i32 1306, i32 0, metadata !410, null}
!1043 = metadata !{i32 1303, i32 0, metadata !410, null}
!1044 = metadata !{i32 1304, i32 0, metadata !410, null}
!1045 = metadata !{i32 1309, i32 0, metadata !410, null}
!1046 = metadata !{i32 1313, i32 0, metadata !410, null}
!1047 = metadata !{i32 1310, i32 0, metadata !410, null}
!1048 = metadata !{i32 1311, i32 0, metadata !410, null}
!1049 = metadata !{i32 1316, i32 0, metadata !410, null}
!1050 = metadata !{i32 1320, i32 0, metadata !410, null}
!1051 = metadata !{i32 1317, i32 0, metadata !410, null}
!1052 = metadata !{i32 1318, i32 0, metadata !410, null}
!1053 = metadata !{i32 1323, i32 0, metadata !410, null}
!1054 = metadata !{i32 1324, i32 0, metadata !410, null}
!1055 = metadata !{i32 1325, i32 0, metadata !410, null}
!1056 = metadata !{i32 1328, i32 0, metadata !410, null}
!1057 = metadata !{i32 1329, i32 0, metadata !410, null}
!1058 = metadata !{i32 64, i32 0, metadata !275, metadata !1059}
!1059 = metadata !{i32 1330, i32 0, metadata !420, null}
!1060 = metadata !{i32 66, i32 0, metadata !274, metadata !1059}
!1061 = metadata !{i32 1331, i32 0, metadata !420, null}
!1062 = metadata !{i32 undef}
!1063 = metadata !{i32 63, i32 0, metadata !59, metadata !1059}
!1064 = metadata !{i32 1332, i32 0, metadata !420, null}
!1065 = metadata !{i32 1333, i32 0, metadata !420, null}
!1066 = metadata !{i32 1334, i32 0, metadata !420, null}
!1067 = metadata !{i32 1336, i32 0, metadata !420, null}
!1068 = metadata !{i32 1337, i32 0, metadata !420, null}
!1069 = metadata !{i32 1338, i32 0, metadata !420, null}
!1070 = metadata !{i32 1339, i32 0, metadata !420, null}
!1071 = metadata !{i32 1341, i32 0, metadata !420, null}
!1072 = metadata !{i32 1342, i32 0, metadata !420, null}
!1073 = metadata !{i32 1343, i32 0, metadata !420, null}
!1074 = metadata !{i32 1344, i32 0, metadata !420, null}
!1075 = metadata !{i32 1349, i32 0, metadata !410, null}
!1076 = metadata !{i32 1352, i32 0, metadata !422, null}
!1077 = metadata !{i32 1354, i32 0, metadata !422, null}
!1078 = metadata !{i32 1356, i32 0, metadata !422, null}
!1079 = metadata !{i32 1359, i32 0, metadata !422, null}
!1080 = metadata !{i32 1360, i32 0, metadata !422, null}
!1081 = metadata !{i32 1361, i32 0, metadata !422, null}
!1082 = metadata !{i32 1364, i32 0, metadata !422, null}
!1083 = metadata !{i32 1367, i32 0, metadata !422, null}
!1084 = metadata !{i32 64, i32 0, metadata !275, metadata !1085}
!1085 = metadata !{i32 1368, i32 0, metadata !425, null}
!1086 = metadata !{i32 66, i32 0, metadata !274, metadata !1085}
!1087 = metadata !{i32 1369, i32 0, metadata !425, null}
!1088 = metadata !{i32 1370, i32 0, metadata !425, null}
!1089 = metadata !{i32 1371, i32 0, metadata !425, null}
!1090 = metadata !{i32 1372, i32 0, metadata !425, null}
!1091 = metadata !{i32 303, i32 0, metadata !189, null}
!1092 = metadata !{i32 306, i32 0, metadata !428, null}
!1093 = metadata !{i32 308, i32 0, metadata !428, null}
!1094 = metadata !{i32 63, i32 0, metadata !59, metadata !1095}
!1095 = metadata !{i32 310, i32 0, metadata !428, null}
!1096 = metadata !{i32 64, i32 0, metadata !275, metadata !1095}
!1097 = metadata !{i32 65, i32 0, metadata !274, metadata !1095}
!1098 = metadata !{i32 66, i32 0, metadata !274, metadata !1095}
!1099 = metadata !{i32 311, i32 0, metadata !428, null}
!1100 = metadata !{i32 312, i32 0, metadata !428, null}
!1101 = metadata !{i32 313, i32 0, metadata !428, null}
!1102 = metadata !{i32 316, i32 0, metadata !428, null}
!1103 = metadata !{i32 317, i32 0, metadata !428, null}
!1104 = metadata !{i32 318, i32 0, metadata !428, null}
!1105 = metadata !{i32 319, i32 0, metadata !428, null}
!1106 = metadata !{i32 330, i32 0, metadata !428, null}
!1107 = metadata !{i32 332, i32 0, metadata !428, null}
!1108 = metadata !{i32 1159, i32 0, metadata !190, null}
!1109 = metadata !{i32 63, i32 0, metadata !59, metadata !1110}
!1110 = metadata !{i32 1160, i32 0, metadata !433, null}
!1111 = metadata !{i32 64, i32 0, metadata !275, metadata !1110}
!1112 = metadata !{i32 65, i32 0, metadata !274, metadata !1110}
!1113 = metadata !{i32 66, i32 0, metadata !274, metadata !1110}
!1114 = metadata !{i32 1162, i32 0, metadata !433, null}
!1115 = metadata !{i32 1163, i32 0, metadata !433, null}
!1116 = metadata !{i32 1164, i32 0, metadata !433, null}
!1117 = metadata !{i32 1166, i32 0, metadata !435, null}
!1118 = metadata !{i32 1167, i32 0, metadata !435, null}
!1119 = metadata !{i32 303, i32 0, metadata !189, metadata !1118}
!1120 = metadata !{i32 306, i32 0, metadata !428, metadata !1118}
!1121 = metadata !{i32 308, i32 0, metadata !428, metadata !1118}
!1122 = metadata !{i32 63, i32 0, metadata !59, metadata !1123}
!1123 = metadata !{i32 310, i32 0, metadata !428, metadata !1118}
!1124 = metadata !{i32 64, i32 0, metadata !275, metadata !1123}
!1125 = metadata !{i32 65, i32 0, metadata !274, metadata !1123}
!1126 = metadata !{i32 311, i32 0, metadata !428, metadata !1118}
!1127 = metadata !{i32 312, i32 0, metadata !428, metadata !1118}
!1128 = metadata !{i32 313, i32 0, metadata !428, metadata !1118}
!1129 = metadata !{i32 316, i32 0, metadata !428, metadata !1118}
!1130 = metadata !{i32 317, i32 0, metadata !428, metadata !1118}
!1131 = metadata !{i32 318, i32 0, metadata !428, metadata !1118}
!1132 = metadata !{i32 319, i32 0, metadata !428, metadata !1118}
!1133 = metadata !{i32 330, i32 0, metadata !428, metadata !1118}
!1134 = metadata !{i32 332, i32 0, metadata !428, metadata !1118}
!1135 = metadata !{i32 1171, i32 0, metadata !435, null}
!1136 = metadata !{i32 1173, i32 0, metadata !435, null}
!1137 = metadata !{i32 1180, i32 0, metadata !435, null}
!1138 = metadata !{i32 1184, i32 0, metadata !193, null}
!1139 = metadata !{i32 63, i32 0, metadata !59, metadata !1140}
!1140 = metadata !{i32 1185, i32 0, metadata !438, null}
!1141 = metadata !{i32 64, i32 0, metadata !275, metadata !1140}
!1142 = metadata !{i32 65, i32 0, metadata !274, metadata !1140}
!1143 = metadata !{i32 66, i32 0, metadata !274, metadata !1140}
!1144 = metadata !{i32 1186, i32 0, metadata !438, null}
!1145 = metadata !{i32 1187, i32 0, metadata !438, null}
!1146 = metadata !{i32 1188, i32 0, metadata !438, null}
!1147 = metadata !{i32 1192, i32 0, metadata !440, null}
!1148 = metadata !{i32 1191, i32 0, metadata !440, null}
!1149 = metadata !{i32 1194, i32 0, metadata !440, null}
!1150 = metadata !{i32 1195, i32 0, metadata !440, null}
!1151 = metadata !{i32 1196, i32 0, metadata !440, null}
!1152 = metadata !{i32 1198, i32 0, metadata !440, null}
!1153 = metadata !{i32 1051, i32 0, metadata !194, null}
!1154 = metadata !{i32 1053, i32 0, metadata !444, null}
!1155 = metadata !{i32 63, i32 0, metadata !59, metadata !1156}
!1156 = metadata !{i32 1052, i32 0, metadata !444, null}
!1157 = metadata !{i32 64, i32 0, metadata !275, metadata !1156}
!1158 = metadata !{i32 65, i32 0, metadata !274, metadata !1156}
!1159 = metadata !{i32 66, i32 0, metadata !274, metadata !1156}
!1160 = metadata !{i32 1056, i32 0, metadata !444, null}
!1161 = metadata !{i32 1057, i32 0, metadata !444, null}
!1162 = metadata !{i32 1058, i32 0, metadata !444, null}
!1163 = metadata !{i32 1061, i32 0, metadata !444, null}
!1164 = metadata !{i32 1065, i32 0, metadata !444, null}
!1165 = metadata !{i32 1066, i32 0, metadata !444, null}
!1166 = metadata !{i32 1067, i32 0, metadata !444, null}
!1167 = metadata !{i32 1070, i32 0, metadata !444, null}
!1168 = metadata !{i32 1071, i32 0, metadata !444, null}
!1169 = metadata !{i32 1073, i32 0, metadata !460, null}
!1170 = metadata !{i32 1074, i32 0, metadata !460, null}
!1171 = metadata !{i32 1}
!1172 = metadata !{i32 1075, i32 0, metadata !460, null}
!1173 = metadata !{i32 1079, i32 0, metadata !444, null}
!1174 = metadata !{i32 1080, i32 0, metadata !444, null}
!1175 = metadata !{i32 1081, i32 0, metadata !444, null}
!1176 = metadata !{i32 1094, i32 0, metadata !444, null}
!1177 = metadata !{i32 1095, i32 0, metadata !444, null}
!1178 = metadata !{i32 1096, i32 0, metadata !444, null}
!1179 = metadata !{i32 1099, i32 0, metadata !462, null}
!1180 = metadata !{i32 1100, i32 0, metadata !462, null}
!1181 = metadata !{i32 1101, i32 0, metadata !462, null}
!1182 = metadata !{i32 901, i32 0, metadata !195, null}
!1183 = metadata !{i32 906, i32 0, metadata !466, null}
!1184 = metadata !{i32 63, i32 0, metadata !59, metadata !1185}
!1185 = metadata !{i32 905, i32 0, metadata !466, null}
!1186 = metadata !{i32 64, i32 0, metadata !275, metadata !1185}
!1187 = metadata !{i32 65, i32 0, metadata !274, metadata !1185}
!1188 = metadata !{i32 66, i32 0, metadata !274, metadata !1185}
!1189 = metadata !{i32 913, i32 0, metadata !466, null}
!1190 = metadata !{i32 914, i32 0, metadata !466, null}
!1191 = metadata !{i32 915, i32 0, metadata !466, null}
!1192 = metadata !{i32 918, i32 0, metadata !466, null}
!1193 = metadata !{i32 919, i32 0, metadata !466, null}
!1194 = metadata !{i32 920, i32 0, metadata !466, null}
!1195 = metadata !{i32 922, i32 0, metadata !466, null}
!1196 = metadata !{i32 923, i32 0, metadata !470, null}
!1197 = metadata !{i32 925, i32 0, metadata !470, null}
!1198 = metadata !{i32 927, i32 0, metadata !472, null}
!1199 = metadata !{i32 929, i32 0, metadata !472, null}
!1200 = metadata !{i32 932, i32 0, metadata !472, null}
!1201 = metadata !{i32 935, i32 0, metadata !472, null}
!1202 = metadata !{i32 936, i32 0, metadata !472, null}
!1203 = metadata !{i32 937, i32 0, metadata !472, null}
!1204 = metadata !{i32 938, i32 0, metadata !472, null}
!1205 = metadata !{i32 939, i32 0, metadata !472, null}
!1206 = metadata !{i32 940, i32 0, metadata !472, null}
!1207 = metadata !{i32 941, i32 0, metadata !472, null}
!1208 = metadata !{i32 942, i32 0, metadata !472, null}
!1209 = metadata !{i32 943, i32 0, metadata !472, null}
!1210 = metadata !{i32 944, i32 0, metadata !472, null}
!1211 = metadata !{i32 945, i32 0, metadata !472, null}
!1212 = metadata !{i32 946, i32 0, metadata !472, null}
!1213 = metadata !{i32 947, i32 0, metadata !472, null}
!1214 = metadata !{i32 948, i32 0, metadata !472, null}
!1215 = metadata !{i32 949, i32 0, metadata !472, null}
!1216 = metadata !{i32 950, i32 0, metadata !472, null}
!1217 = metadata !{i32 951, i32 0, metadata !472, null}
!1218 = metadata !{i32 952, i32 0, metadata !472, null}
!1219 = metadata !{i32 953, i32 0, metadata !472, null}
!1220 = metadata !{i32 954, i32 0, metadata !472, null}
!1221 = metadata !{i32 955, i32 0, metadata !472, null}
!1222 = metadata !{i32 956, i32 0, metadata !472, null}
!1223 = metadata !{i32 957, i32 0, metadata !472, null}
!1224 = metadata !{i32 958, i32 0, metadata !472, null}
!1225 = metadata !{i32 959, i32 0, metadata !472, null}
!1226 = metadata !{i32 961, i32 0, metadata !472, null}
!1227 = metadata !{i32 962, i32 0, metadata !472, null}
!1228 = metadata !{i32 967, i32 0, metadata !470, null}
!1229 = metadata !{i32 968, i32 0, metadata !470, null}
!1230 = metadata !{i32 971, i32 0, metadata !470, null}
!1231 = metadata !{i32 972, i32 0, metadata !470, null}
!1232 = metadata !{i32 977, i32 0, metadata !470, null}
!1233 = metadata !{i32 978, i32 0, metadata !470, null}
!1234 = metadata !{i32 981, i32 0, metadata !470, null}
!1235 = metadata !{i32 982, i32 0, metadata !470, null}
!1236 = metadata !{i32 987, i32 0, metadata !470, null}
!1237 = metadata !{i32 988, i32 0, metadata !470, null}
!1238 = metadata !{i32 991, i32 0, metadata !470, null}
!1239 = metadata !{i32 992, i32 0, metadata !470, null}
!1240 = metadata !{i32 996, i32 0, metadata !492, null}
!1241 = metadata !{i32 997, i32 0, metadata !492, null}
!1242 = metadata !{i32 998, i32 0, metadata !492, null}
!1243 = metadata !{i32 999, i32 0, metadata !492, null}
!1244 = metadata !{i32 1000, i32 0, metadata !492, null}
!1245 = metadata !{i32 1003, i32 0, metadata !492, null}
!1246 = metadata !{i32 1004, i32 0, metadata !492, null}
!1247 = metadata !{i32 1009, i32 0, metadata !470, null}
!1248 = metadata !{i32 1010, i32 0, metadata !470, null}
!1249 = metadata !{i32 1011, i32 0, metadata !470, null}
!1250 = metadata !{i32 1012, i32 0, metadata !470, null}
!1251 = metadata !{i32 1014, i32 0, metadata !470, null}
!1252 = metadata !{i32 1015, i32 0, metadata !470, null}
!1253 = metadata !{i32 1019, i32 0, metadata !502, null}
!1254 = metadata !{i32 1020, i32 0, metadata !502, null}
!1255 = metadata !{i32 1021, i32 0, metadata !502, null}
!1256 = metadata !{i32 1022, i32 0, metadata !502, null}
!1257 = metadata !{i32 1023, i32 0, metadata !502, null}
!1258 = metadata !{i32 1027, i32 0, metadata !502, null}
!1259 = metadata !{i32 1029, i32 0, metadata !502, null}
!1260 = metadata !{i32 1030, i32 0, metadata !502, null}
!1261 = metadata !{i32 1034, i32 0, metadata !470, null}
!1262 = metadata !{i32 1035, i32 0, metadata !470, null}
!1263 = metadata !{i32 1036, i32 0, metadata !470, null}
!1264 = metadata !{i32 1039, i32 0, metadata !470, null}
!1265 = metadata !{i32 1040, i32 0, metadata !470, null}
!1266 = metadata !{i32 1041, i32 0, metadata !470, null}
!1267 = metadata !{i32 1044, i32 0, metadata !505, null}
!1268 = metadata !{i32 1045, i32 0, metadata !505, null}
!1269 = metadata !{i32 1046, i32 0, metadata !505, null}
!1270 = metadata !{i32 817, i32 0, metadata !198, null}
!1271 = metadata !{i32 63, i32 0, metadata !59, metadata !1272}
!1272 = metadata !{i32 818, i32 0, metadata !510, null}
!1273 = metadata !{i32 64, i32 0, metadata !275, metadata !1272}
!1274 = metadata !{i32 65, i32 0, metadata !274, metadata !1272}
!1275 = metadata !{i32 66, i32 0, metadata !274, metadata !1272}
!1276 = metadata !{i32 820, i32 0, metadata !510, null}
!1277 = metadata !{i32 821, i32 0, metadata !510, null}
!1278 = metadata !{i32 822, i32 0, metadata !510, null}
!1279 = metadata !{i32 825, i32 0, metadata !510, null}
!1280 = metadata !{i32 826, i32 0, metadata !510, null}
!1281 = metadata !{i32 827, i32 0, metadata !510, null}
!1282 = metadata !{i32 828, i32 0, metadata !510, null}
!1283 = metadata !{i32 830, i32 0, metadata !510, null}
!1284 = metadata !{i64 0}
!1285 = metadata !{i32 832, i32 0, metadata !512, null}
!1286 = metadata !{i32 835, i32 0, metadata !512, null}
!1287 = metadata !{i32 836, i32 0, metadata !512, null}
!1288 = metadata !{i32 841, i32 0, metadata !512, null}
!1289 = metadata !{i32 838, i32 0, metadata !512, null}
!1290 = metadata !{i32 839, i32 0, metadata !512, null}
!1291 = metadata !{i32 842, i32 0, metadata !516, null}
!1292 = metadata !{i32 843, i32 0, metadata !516, null}
!1293 = metadata !{i32 844, i32 0, metadata !516, null}
!1294 = metadata !{i32 845, i32 0, metadata !516, null}
!1295 = metadata !{i32 846, i32 0, metadata !516, null}
!1296 = metadata !{i32 847, i32 0, metadata !516, null}
!1297 = metadata !{i32 848, i32 0, metadata !516, null}
!1298 = metadata !{i32 849, i32 0, metadata !516, null}
!1299 = metadata !{i32 850, i32 0, metadata !516, null}
!1300 = metadata !{i32 854, i32 0, metadata !512, null}
!1301 = metadata !{i32 855, i32 0, metadata !512, null}
!1302 = metadata !{i32 856, i32 0, metadata !512, null}
!1303 = metadata !{i32 857, i32 0, metadata !512, null}
!1304 = metadata !{i32 858, i32 0, metadata !512, null}
!1305 = metadata !{i32 859, i32 0, metadata !512, null}
!1306 = metadata !{i32 860, i32 0, metadata !512, null}
!1307 = metadata !{i32 861, i32 0, metadata !512, null}
!1308 = metadata !{i32 863, i32 0, metadata !512, null}
!1309 = metadata !{i32 865, i32 0, metadata !518, null}
!1310 = metadata !{i32 867, i32 0, metadata !518, null}
!1311 = metadata !{i32 876, i32 0, metadata !518, null}
!1312 = metadata !{i32 877, i32 0, metadata !518, null}
!1313 = metadata !{i32 878, i32 0, metadata !518, null}
!1314 = metadata !{i32 879, i32 0, metadata !518, null}
!1315 = metadata !{i32 880, i32 0, metadata !518, null}
!1316 = metadata !{i32 881, i32 0, metadata !518, null}
!1317 = metadata !{i32 883, i32 0, metadata !522, null}
!1318 = metadata !{i32 884, i32 0, metadata !522, null}
!1319 = metadata !{i32 888, i32 0, metadata !522, null}
!1320 = metadata !{i32 889, i32 0, metadata !524, null}
!1321 = metadata !{i32 890, i32 0, metadata !524, null}
!1322 = metadata !{i32 891, i32 0, metadata !524, null}
!1323 = metadata !{i32 475, i32 0, metadata !216, null}
!1324 = metadata !{i32 63, i32 0, metadata !59, metadata !1325}
!1325 = metadata !{i32 477, i32 0, metadata !529, null}
!1326 = metadata !{i32 64, i32 0, metadata !275, metadata !1325}
!1327 = metadata !{i32 65, i32 0, metadata !274, metadata !1325}
!1328 = metadata !{i32 66, i32 0, metadata !274, metadata !1325}
!1329 = metadata !{i32 482, i32 0, metadata !529, null}
!1330 = metadata !{i32 483, i32 0, metadata !529, null}
!1331 = metadata !{i32 484, i32 0, metadata !529, null}
!1332 = metadata !{i32 487, i32 0, metadata !529, null}
!1333 = metadata !{i32 494, i32 0, metadata !529, null}
!1334 = metadata !{i32 495, i32 0, metadata !529, null}
!1335 = metadata !{i32 497, i32 0, metadata !529, null}
!1336 = metadata !{i32 501, i32 0, metadata !529, null}
!1337 = metadata !{i32 502, i32 0, metadata !529, null}
!1338 = metadata !{i32 503, i32 0, metadata !529, null}
!1339 = metadata !{i32 507, i32 0, metadata !529, null}
!1340 = metadata !{i32 508, i32 0, metadata !529, null}
!1341 = metadata !{i32 509, i32 0, metadata !529, null}
!1342 = metadata !{i32 512, i32 0, metadata !529, null}
!1343 = metadata !{i32 513, i32 0, metadata !529, null}
!1344 = metadata !{i32 516, i32 0, metadata !529, null}
!1345 = metadata !{i32 518, i32 0, metadata !529, null}
!1346 = metadata !{i32 519, i32 0, metadata !529, null}
!1347 = metadata !{i32 521, i32 0, metadata !529, null}
!1348 = metadata !{i32 522, i32 0, metadata !529, null}
!1349 = metadata !{i32 526, i32 0, metadata !529, null}
!1350 = metadata !{i32 527, i32 0, metadata !529, null}
!1351 = metadata !{i32 528, i32 0, metadata !529, null}
!1352 = metadata !{i32 531, i32 0, metadata !529, null}
!1353 = metadata !{i32 532, i32 0, metadata !529, null}
!1354 = metadata !{i32 761, i32 0, metadata !219, null}
!1355 = metadata !{i32 63, i32 0, metadata !59, metadata !1356}
!1356 = metadata !{i32 762, i32 0, metadata !534, null}
!1357 = metadata !{i32 64, i32 0, metadata !275, metadata !1356}
!1358 = metadata !{i32 65, i32 0, metadata !274, metadata !1356}
!1359 = metadata !{i32 66, i32 0, metadata !274, metadata !1356}
!1360 = metadata !{i32 764, i32 0, metadata !534, null}
!1361 = metadata !{i32 765, i32 0, metadata !534, null}
!1362 = metadata !{i32 766, i32 0, metadata !534, null}
!1363 = metadata !{i32 769, i32 0, metadata !534, null}
!1364 = metadata !{i32 771, i32 0, metadata !536, null}
!1365 = metadata !{i32 775, i32 0, metadata !536, null}
!1366 = metadata !{i32 776, i32 0, metadata !536, null}
!1367 = metadata !{i32 780, i32 0, metadata !534, null}
!1368 = metadata !{i32 781, i32 0, metadata !534, null}
!1369 = metadata !{i32 590, i32 0, metadata !220, null}
!1370 = metadata !{i32 39, i32 0, metadata !0, metadata !1371}
!1371 = metadata !{i32 591, i32 0, metadata !540, null}
!1372 = metadata !{i32 40, i32 0, metadata !268, metadata !1371}
!1373 = metadata !{i32 43, i32 0, metadata !268, metadata !1371}
!1374 = metadata !{i32 46, i32 0, metadata !268, metadata !1371}
!1375 = metadata !{i32 47, i32 0, metadata !268, metadata !1371}
!1376 = metadata !{i32 48, i32 0, metadata !271, metadata !1371}
!1377 = metadata !{i32 49, i32 0, metadata !271, metadata !1371}
!1378 = metadata !{i32 592, i32 0, metadata !540, null}
!1379 = metadata !{i32 593, i32 0, metadata !540, null}
!1380 = metadata !{i32 594, i32 0, metadata !540, null}
!1381 = metadata !{i32 1431, i32 0, metadata !147, metadata !1382}
!1382 = metadata !{i32 599, i32 0, metadata !542, null}
!1383 = metadata !{i32 1418, i32 0, metadata !137, metadata !1384}
!1384 = metadata !{i32 1432, i32 0, metadata !355, metadata !1382}
!1385 = metadata !{i32 1420, i32 0, metadata !345, metadata !1384}
!1386 = metadata !{i32 1421, i32 0, metadata !345, metadata !1384}
!1387 = metadata !{i32 1435, i32 0, metadata !355, metadata !1382}
!1388 = metadata !{i32 1436, i32 0, metadata !358, metadata !1382}
!1389 = metadata !{i32 1437, i32 0, metadata !358, metadata !1382}
!1390 = metadata !{i32 1439, i32 0, metadata !358, metadata !1382}
!1391 = metadata !{i32 1442, i32 0, metadata !358, metadata !1382}
!1392 = metadata !{i32 1445, i32 0, metadata !360, metadata !1382}
!1393 = metadata !{i32 1446, i32 0, metadata !360, metadata !1382}
!1394 = metadata !{i32 1447, i32 0, metadata !360, metadata !1382}
!1395 = metadata !{i32 1448, i32 0, metadata !360, metadata !1382}
!1396 = metadata !{i32 603, i32 0, metadata !542, null}
!1397 = metadata !{i32 604, i32 0, metadata !542, null}
!1398 = metadata !{i32 554, i32 0, metadata !223, null}
!1399 = metadata !{i32 555, i32 0, metadata !548, null}
!1400 = metadata !{i32 63, i32 0, metadata !59, metadata !1401}
!1401 = metadata !{i32 556, i32 0, metadata !551, null}
!1402 = metadata !{i32 64, i32 0, metadata !275, metadata !1401}
!1403 = metadata !{i32 65, i32 0, metadata !274, metadata !1401}
!1404 = metadata !{i32 66, i32 0, metadata !274, metadata !1401}
!1405 = metadata !{i32 558, i32 0, metadata !551, null}
!1406 = metadata !{i32 559, i32 0, metadata !551, null}
!1407 = metadata !{i32 560, i32 0, metadata !551, null}
!1408 = metadata !{i32 561, i32 0, metadata !551, null}
!1409 = metadata !{i32 562, i32 0, metadata !551, null}
!1410 = metadata !{i32 563, i32 0, metadata !551, null}
!1411 = metadata !{i32 564, i32 0, metadata !551, null}
!1412 = metadata !{i32 566, i32 0, metadata !551, null}
!1413 = metadata !{i32 39, i32 0, metadata !0, metadata !1414}
!1414 = metadata !{i32 568, i32 0, metadata !548, null}
!1415 = metadata !{i32 40, i32 0, metadata !268, metadata !1414}
!1416 = metadata !{i32 43, i32 0, metadata !268, metadata !1414}
!1417 = metadata !{i32 46, i32 0, metadata !268, metadata !1414}
!1418 = metadata !{i32 47, i32 0, metadata !268, metadata !1414}
!1419 = metadata !{i32 48, i32 0, metadata !271, metadata !1414}
!1420 = metadata !{i32 49, i32 0, metadata !271, metadata !1414}
!1421 = metadata !{i32 569, i32 0, metadata !548, null}
!1422 = metadata !{i32 570, i32 0, metadata !548, null}
!1423 = metadata !{i32 571, i32 0, metadata !548, null}
!1424 = metadata !{i32 577, i32 0, metadata !548, null}
!1425 = metadata !{i32 1431, i32 0, metadata !147, metadata !1424}
!1426 = metadata !{i32 1418, i32 0, metadata !137, metadata !1427}
!1427 = metadata !{i32 1432, i32 0, metadata !355, metadata !1424}
!1428 = metadata !{i32 1420, i32 0, metadata !345, metadata !1427}
!1429 = metadata !{i32 1421, i32 0, metadata !345, metadata !1427}
!1430 = metadata !{i32 1435, i32 0, metadata !355, metadata !1424}
!1431 = metadata !{i32 1436, i32 0, metadata !358, metadata !1424}
!1432 = metadata !{i32 1437, i32 0, metadata !358, metadata !1424}
!1433 = metadata !{i32 1439, i32 0, metadata !358, metadata !1424}
!1434 = metadata !{i32 1442, i32 0, metadata !358, metadata !1424}
!1435 = metadata !{i32 1445, i32 0, metadata !360, metadata !1424}
!1436 = metadata !{i32 1446, i32 0, metadata !360, metadata !1424}
!1437 = metadata !{i32 1447, i32 0, metadata !360, metadata !1424}
!1438 = metadata !{i32 1448, i32 0, metadata !360, metadata !1424}
!1439 = metadata !{i32 584, i32 0, metadata !548, null}
!1440 = metadata !{i32 585, i32 0, metadata !548, null}
!1441 = metadata !{i32 535, i32 0, metadata !246, null}
!1442 = metadata !{i32 39, i32 0, metadata !0, metadata !1443}
!1443 = metadata !{i32 536, i32 0, metadata !555, null}
!1444 = metadata !{i32 40, i32 0, metadata !268, metadata !1443}
!1445 = metadata !{i32 43, i32 0, metadata !268, metadata !1443}
!1446 = metadata !{i32 46, i32 0, metadata !268, metadata !1443}
!1447 = metadata !{i32 47, i32 0, metadata !268, metadata !1443}
!1448 = metadata !{i32 48, i32 0, metadata !271, metadata !1443}
!1449 = metadata !{i32 49, i32 0, metadata !271, metadata !1443}
!1450 = metadata !{i32 537, i32 0, metadata !555, null}
!1451 = metadata !{i32 538, i32 0, metadata !555, null}
!1452 = metadata !{i32 539, i32 0, metadata !555, null}
!1453 = metadata !{i32 1431, i32 0, metadata !147, metadata !1454}
!1454 = metadata !{i32 544, i32 0, metadata !557, null}
!1455 = metadata !{i32 1418, i32 0, metadata !137, metadata !1456}
!1456 = metadata !{i32 1432, i32 0, metadata !355, metadata !1454}
!1457 = metadata !{i32 1420, i32 0, metadata !345, metadata !1456}
!1458 = metadata !{i32 1421, i32 0, metadata !345, metadata !1456}
!1459 = metadata !{i32 1435, i32 0, metadata !355, metadata !1454}
!1460 = metadata !{i32 1436, i32 0, metadata !358, metadata !1454}
!1461 = metadata !{i32 1437, i32 0, metadata !358, metadata !1454}
!1462 = metadata !{i32 1439, i32 0, metadata !358, metadata !1454}
!1463 = metadata !{i32 1442, i32 0, metadata !358, metadata !1454}
!1464 = metadata !{i32 1445, i32 0, metadata !360, metadata !1454}
!1465 = metadata !{i32 1446, i32 0, metadata !360, metadata !1454}
!1466 = metadata !{i32 1447, i32 0, metadata !360, metadata !1454}
!1467 = metadata !{i32 1448, i32 0, metadata !360, metadata !1454}
!1468 = metadata !{i32 548, i32 0, metadata !557, null}
!1469 = metadata !{i32 549, i32 0, metadata !557, null}
!1470 = metadata !{i32 335, i32 0, metadata !247, null}
!1471 = metadata !{i32 339, i32 0, metadata !562, null}
!1472 = metadata !{i32 341, i32 0, metadata !562, null}
!1473 = metadata !{i32 344, i32 0, metadata !562, null}
!1474 = metadata !{i32 345, i32 0, metadata !562, null}
!1475 = metadata !{i32 346, i32 0, metadata !562, null}
!1476 = metadata !{i32 63, i32 0, metadata !59, metadata !1477}
!1477 = metadata !{i32 349, i32 0, metadata !562, null}
!1478 = metadata !{i32 64, i32 0, metadata !275, metadata !1477}
!1479 = metadata !{i32 65, i32 0, metadata !274, metadata !1477}
!1480 = metadata !{i32 66, i32 0, metadata !274, metadata !1477}
!1481 = metadata !{i32 351, i32 0, metadata !562, null}
!1482 = metadata !{i32 352, i32 0, metadata !562, null}
!1483 = metadata !{i32 353, i32 0, metadata !562, null}
!1484 = metadata !{i32 356, i32 0, metadata !562, null}
!1485 = metadata !{i32 357, i32 0, metadata !562, null}
!1486 = metadata !{i32 358, i32 0, metadata !562, null}
!1487 = metadata !{i32 359, i32 0, metadata !562, null}
!1488 = metadata !{i32 362, i32 0, metadata !562, null}
!1489 = metadata !{i32 1418, i32 0, metadata !137, metadata !1490}
!1490 = metadata !{i32 365, i32 0, metadata !564, null}
!1491 = metadata !{i32 1420, i32 0, metadata !345, metadata !1490}
!1492 = metadata !{i32 1421, i32 0, metadata !345, metadata !1490}
!1493 = metadata !{i32 1425, i32 0, metadata !141, metadata !1494}
!1494 = metadata !{i32 366, i32 0, metadata !564, null}
!1495 = metadata !{i32 1426, i32 0, metadata !348, metadata !1494}
!1496 = metadata !{i32 1427, i32 0, metadata !348, metadata !1494}
!1497 = metadata !{i32 370, i32 0, metadata !564, null}
!1498 = metadata !{i32 371, i32 0, metadata !564, null}
!1499 = metadata !{i32 372, i32 0, metadata !564, null}
!1500 = metadata !{i32 374, i32 0, metadata !564, null}
!1501 = metadata !{i32 376, i32 0, metadata !564, null}
!1502 = metadata !{i32 377, i32 0, metadata !564, null}
!1503 = metadata !{i32 378, i32 0, metadata !564, null}
!1504 = metadata !{i32 381, i32 0, metadata !564, null}
!1505 = metadata !{i32 383, i32 0, metadata !564, null}
!1506 = metadata !{i32 382, i32 0, metadata !564, null}
!1507 = metadata !{i32 386, i32 0, metadata !562, null}
!1508 = metadata !{i32 387, i32 0, metadata !562, null}
!1509 = metadata !{i32 391, i32 0, metadata !562, null}
!1510 = metadata !{i32 392, i32 0, metadata !562, null}
!1511 = metadata !{i32 395, i32 0, metadata !562, null}
!1512 = metadata !{i32 396, i32 0, metadata !562, null}
!1513 = metadata !{i32 398, i32 0, metadata !562, null}
!1514 = metadata !{i32 342, i32 0, metadata !562, null}
!1515 = metadata !{i32 683, i32 0, metadata !253, null}
!1516 = metadata !{i32 63, i32 0, metadata !59, metadata !1517}
!1517 = metadata !{i32 686, i32 0, metadata !570, null}
!1518 = metadata !{i32 64, i32 0, metadata !275, metadata !1517}
!1519 = metadata !{i32 65, i32 0, metadata !274, metadata !1517}
!1520 = metadata !{i32 66, i32 0, metadata !274, metadata !1517}
!1521 = metadata !{i32 688, i32 0, metadata !570, null}
!1522 = metadata !{i32 689, i32 0, metadata !570, null}
!1523 = metadata !{i32 690, i32 0, metadata !570, null}
!1524 = metadata !{i32 693, i32 0, metadata !570, null}
!1525 = metadata !{i32 694, i32 0, metadata !570, null}
!1526 = metadata !{i32 695, i32 0, metadata !570, null}
!1527 = metadata !{i32 696, i32 0, metadata !570, null}
!1528 = metadata !{i32 697, i32 0, metadata !570, null}
!1529 = metadata !{i32 700, i32 0, metadata !570, null}
!1530 = metadata !{i32 648, i32 0, metadata !250, metadata !1531}
!1531 = metadata !{i32 701, i32 0, metadata !570, null}
!1532 = metadata !{i32 649, i32 0, metadata !1533, metadata !1531}
!1533 = metadata !{i32 589835, metadata !250, i32 648, i32 0, metadata !1, i32 77} ; [ DW_TAG_lexical_block ]
!1534 = metadata !{i32 650, i32 0, metadata !1533, metadata !1531}
!1535 = metadata !{i32 651, i32 0, metadata !1533, metadata !1531}
!1536 = metadata !{i32 652, i32 0, metadata !1533, metadata !1531}
!1537 = metadata !{i32 654, i32 0, metadata !1533, metadata !1531}
!1538 = metadata !{i32 656, i32 0, metadata !1533, metadata !1531}
!1539 = metadata !{i32 657, i32 0, metadata !1533, metadata !1531}
!1540 = metadata !{i32 703, i32 0, metadata !572, null}
!1541 = metadata !{i32 704, i32 0, metadata !572, null}
!1542 = metadata !{i32 705, i32 0, metadata !572, null}
!1543 = metadata !{i32 661, i32 0, metadata !256, null}
!1544 = metadata !{i32 39, i32 0, metadata !0, metadata !1545}
!1545 = metadata !{i32 664, i32 0, metadata !576, null}
!1546 = metadata !{i32 40, i32 0, metadata !268, metadata !1545}
!1547 = metadata !{i32 43, i32 0, metadata !268, metadata !1545}
!1548 = metadata !{i32 46, i32 0, metadata !268, metadata !1545}
!1549 = metadata !{i32 47, i32 0, metadata !268, metadata !1545}
!1550 = metadata !{i32 48, i32 0, metadata !271, metadata !1545}
!1551 = metadata !{i32 49, i32 0, metadata !271, metadata !1545}
!1552 = metadata !{i32 51, i32 0, metadata !271, metadata !1545}
!1553 = metadata !{i32 666, i32 0, metadata !576, null}
!1554 = metadata !{i32 667, i32 0, metadata !576, null}
!1555 = metadata !{i32 668, i32 0, metadata !576, null}
!1556 = metadata !{i32 669, i32 0, metadata !576, null}
!1557 = metadata !{i32 670, i32 0, metadata !576, null}
!1558 = metadata !{i32 673, i32 0, metadata !576, null}
!1559 = metadata !{i32 648, i32 0, metadata !250, metadata !1560}
!1560 = metadata !{i32 674, i32 0, metadata !576, null}
!1561 = metadata !{i32 649, i32 0, metadata !1533, metadata !1560}
!1562 = metadata !{i32 650, i32 0, metadata !1533, metadata !1560}
!1563 = metadata !{i32 651, i32 0, metadata !1533, metadata !1560}
!1564 = metadata !{i32 652, i32 0, metadata !1533, metadata !1560}
!1565 = metadata !{i32 654, i32 0, metadata !1533, metadata !1560}
!1566 = metadata !{i32 656, i32 0, metadata !1533, metadata !1560}
!1567 = metadata !{i32 657, i32 0, metadata !1533, metadata !1560}
!1568 = metadata !{i32 1431, i32 0, metadata !147, metadata !1569}
!1569 = metadata !{i32 676, i32 0, metadata !578, null}
!1570 = metadata !{i32 1418, i32 0, metadata !137, metadata !1571}
!1571 = metadata !{i32 1432, i32 0, metadata !355, metadata !1569}
!1572 = metadata !{i32 1420, i32 0, metadata !345, metadata !1571}
!1573 = metadata !{i32 1421, i32 0, metadata !345, metadata !1571}
!1574 = metadata !{i32 1435, i32 0, metadata !355, metadata !1569}
!1575 = metadata !{i32 1436, i32 0, metadata !358, metadata !1569}
!1576 = metadata !{i32 1437, i32 0, metadata !358, metadata !1569}
!1577 = metadata !{i32 1439, i32 0, metadata !358, metadata !1569}
!1578 = metadata !{i32 1442, i32 0, metadata !358, metadata !1569}
!1579 = metadata !{i32 1445, i32 0, metadata !360, metadata !1569}
!1580 = metadata !{i32 1446, i32 0, metadata !360, metadata !1569}
!1581 = metadata !{i32 1447, i32 0, metadata !360, metadata !1569}
!1582 = metadata !{i32 1448, i32 0, metadata !360, metadata !1569}
!1583 = metadata !{i32 677, i32 0, metadata !578, null}
!1584 = metadata !{i32 678, i32 0, metadata !578, null}
!1585 = metadata !{i32 403, i32 0, metadata !259, null}
!1586 = metadata !{i32 407, i32 0, metadata !583, null}
!1587 = metadata !{i32 63, i32 0, metadata !59, metadata !1588}
!1588 = metadata !{i32 409, i32 0, metadata !583, null}
!1589 = metadata !{i32 64, i32 0, metadata !275, metadata !1588}
!1590 = metadata !{i32 65, i32 0, metadata !274, metadata !1588}
!1591 = metadata !{i32 66, i32 0, metadata !274, metadata !1588}
!1592 = metadata !{i32 411, i32 0, metadata !583, null}
!1593 = metadata !{i32 412, i32 0, metadata !583, null}
!1594 = metadata !{i32 413, i32 0, metadata !583, null}
!1595 = metadata !{i32 416, i32 0, metadata !583, null}
!1596 = metadata !{i32 417, i32 0, metadata !583, null}
!1597 = metadata !{i32 418, i32 0, metadata !583, null}
!1598 = metadata !{i32 419, i32 0, metadata !583, null}
!1599 = metadata !{i32 422, i32 0, metadata !583, null}
!1600 = metadata !{i32 1418, i32 0, metadata !137, metadata !1601}
!1601 = metadata !{i32 425, i32 0, metadata !585, null}
!1602 = metadata !{i32 1420, i32 0, metadata !345, metadata !1601}
!1603 = metadata !{i32 1421, i32 0, metadata !345, metadata !1601}
!1604 = metadata !{i32 1425, i32 0, metadata !141, metadata !1605}
!1605 = metadata !{i32 426, i32 0, metadata !585, null}
!1606 = metadata !{i32 1426, i32 0, metadata !348, metadata !1605}
!1607 = metadata !{i32 1427, i32 0, metadata !348, metadata !1605}
!1608 = metadata !{i32 430, i32 0, metadata !585, null}
!1609 = metadata !{i32 431, i32 0, metadata !585, null}
!1610 = metadata !{i32 432, i32 0, metadata !585, null}
!1611 = metadata !{i32 433, i32 0, metadata !585, null}
!1612 = metadata !{i32 435, i32 0, metadata !585, null}
!1613 = metadata !{i32 436, i32 0, metadata !585, null}
!1614 = metadata !{i32 437, i32 0, metadata !585, null}
!1615 = metadata !{i32 440, i32 0, metadata !585, null}
!1616 = metadata !{i32 441, i32 0, metadata !585, null}
!1617 = metadata !{i32 444, i32 0, metadata !585, null}
!1618 = metadata !{i32 442, i32 0, metadata !585, null}
!1619 = metadata !{i32 448, i32 0, metadata !587, null}
!1620 = metadata !{i32 449, i32 0, metadata !587, null}
!1621 = metadata !{i32 452, i32 0, metadata !587, null}
!1622 = metadata !{i32 453, i32 0, metadata !587, null}
!1623 = metadata !{i32 455, i32 0, metadata !587, null}
!1624 = metadata !{i32 456, i32 0, metadata !587, null}
!1625 = metadata !{i32 460, i32 0, metadata !587, null}
!1626 = metadata !{i32 461, i32 0, metadata !587, null}
!1627 = metadata !{i32 463, i32 0, metadata !587, null}
!1628 = metadata !{i32 464, i32 0, metadata !587, null}
!1629 = metadata !{i32 466, i32 0, metadata !587, null}
!1630 = metadata !{i32 467, i32 0, metadata !587, null}
!1631 = metadata !{i32 469, i32 0, metadata !587, null}
!1632 = metadata !{i32 470, i32 0, metadata !587, null}
!1633 = metadata !{i32 128, i32 0, metadata !260, null}
!1634 = metadata !{i32 133, i32 0, metadata !592, null}
!1635 = metadata !{i32 134, i32 0, metadata !592, null}
!1636 = metadata !{i32 136, i32 0, metadata !592, null}
!1637 = metadata !{i32 137, i32 0, metadata !592, null}
!1638 = metadata !{i32 138, i32 0, metadata !592, null}
!1639 = metadata !{i32 141, i32 0, metadata !592, null}
!1640 = metadata !{i32 144, i32 0, metadata !592, null}
!1641 = metadata !{i32 39, i32 0, metadata !0, metadata !1642}
!1642 = metadata !{i32 146, i32 0, metadata !592, null}
!1643 = metadata !{i32 40, i32 0, metadata !268, metadata !1642}
!1644 = metadata !{i32 43, i32 0, metadata !268, metadata !1642}
!1645 = metadata !{i32 46, i32 0, metadata !268, metadata !1642}
!1646 = metadata !{i32 47, i32 0, metadata !268, metadata !1642}
!1647 = metadata !{i32 48, i32 0, metadata !271, metadata !1642}
!1648 = metadata !{i32 49, i32 0, metadata !271, metadata !1642}
!1649 = metadata !{i32 147, i32 0, metadata !592, null}
!1650 = metadata !{i32 150, i32 0, metadata !592, null}
!1651 = metadata !{i32 153, i32 0, metadata !592, null}
!1652 = metadata !{i32 154, i32 0, metadata !592, null}
!1653 = metadata !{i32 168, i32 0, metadata !592, null}
!1654 = metadata !{i32 169, i32 0, metadata !592, null}
!1655 = metadata !{i32 170, i32 0, metadata !592, null}
!1656 = metadata !{i32 173, i32 0, metadata !592, null}
!1657 = metadata !{i32 97, i32 0, metadata !76, metadata !1656}
!1658 = metadata !{i32 99, i32 0, metadata !282, metadata !1656}
!1659 = metadata !{i32 101, i32 0, metadata !282, metadata !1656}
!1660 = metadata !{i32 107, i32 0, metadata !282, metadata !1656}
!1661 = metadata !{i32 118, i32 0, metadata !282, metadata !1656}
!1662 = metadata !{i32 121, i32 0, metadata !282, metadata !1656}
!1663 = metadata !{i32 174, i32 0, metadata !592, null}
!1664 = metadata !{i32 175, i32 0, metadata !592, null}
!1665 = metadata !{i32 178, i32 0, metadata !592, null}
!1666 = metadata !{i32 1431, i32 0, metadata !147, metadata !1667}
!1667 = metadata !{i32 181, i32 0, metadata !596, null}
!1668 = metadata !{i32 1418, i32 0, metadata !137, metadata !1669}
!1669 = metadata !{i32 1432, i32 0, metadata !355, metadata !1667}
!1670 = metadata !{i32 1420, i32 0, metadata !345, metadata !1669}
!1671 = metadata !{i32 1421, i32 0, metadata !345, metadata !1669}
!1672 = metadata !{i32 1435, i32 0, metadata !355, metadata !1667}
!1673 = metadata !{i32 1436, i32 0, metadata !358, metadata !1667}
!1674 = metadata !{i32 1437, i32 0, metadata !358, metadata !1667}
!1675 = metadata !{i32 1439, i32 0, metadata !358, metadata !1667}
!1676 = metadata !{i32 1442, i32 0, metadata !358, metadata !1667}
!1677 = metadata !{i32 1445, i32 0, metadata !360, metadata !1667}
!1678 = metadata !{i32 1446, i32 0, metadata !360, metadata !1667}
!1679 = metadata !{i32 1447, i32 0, metadata !360, metadata !1667}
!1680 = metadata !{i32 1448, i32 0, metadata !360, metadata !1667}
!1681 = metadata !{i32 182, i32 0, metadata !596, null}
!1682 = metadata !{i32 183, i32 0, metadata !596, null}
!1683 = metadata !{i32 184, i32 0, metadata !596, null}
!1684 = metadata !{i32 186, i32 0, metadata !596, null}
!1685 = metadata !{i32 190, i32 0, metadata !592, null}
!1686 = metadata !{i32 189, i32 0, metadata !592, null}
!1687 = metadata !{i32 191, i32 0, metadata !592, null}
!1688 = metadata !{i32 193, i32 0, metadata !592, null}
!1689 = metadata !{i32 195, i32 0, metadata !592, null}
!1690 = metadata !{i32 201, i32 0, metadata !263, null}
!1691 = metadata !{i32 204, i32 0, metadata !602, null}
!1692 = metadata !{i32 63, i32 0, metadata !59, metadata !1693}
!1693 = metadata !{i32 205, i32 0, metadata !606, null}
!1694 = metadata !{i32 64, i32 0, metadata !275, metadata !1693}
!1695 = metadata !{i32 65, i32 0, metadata !274, metadata !1693}
!1696 = metadata !{i32 66, i32 0, metadata !274, metadata !1693}
!1697 = metadata !{i32 207, i32 0, metadata !606, null}
!1698 = metadata !{i32 208, i32 0, metadata !606, null}
!1699 = metadata !{i32 209, i32 0, metadata !606, null}
!1700 = metadata !{i32 210, i32 0, metadata !606, null}
!1701 = metadata !{i32 211, i32 0, metadata !606, null}
!1702 = metadata !{i32 212, i32 0, metadata !606, null}
!1703 = metadata !{i32 213, i32 0, metadata !606, null}
!1704 = metadata !{i32 215, i32 0, metadata !606, null}
!1705 = metadata !{i32 39, i32 0, metadata !0, metadata !1706}
!1706 = metadata !{i32 218, i32 0, metadata !602, null}
!1707 = metadata !{i32 40, i32 0, metadata !268, metadata !1706}
!1708 = metadata !{i32 43, i32 0, metadata !268, metadata !1706}
!1709 = metadata !{i32 46, i32 0, metadata !268, metadata !1706}
!1710 = metadata !{i32 47, i32 0, metadata !268, metadata !1706}
!1711 = metadata !{i32 48, i32 0, metadata !271, metadata !1706}
!1712 = metadata !{i32 49, i32 0, metadata !271, metadata !1706}
!1713 = metadata !{i32 220, i32 0, metadata !602, null}
!1714 = metadata !{i32 224, i32 0, metadata !602, null}
!1715 = metadata !{i32 223, i32 0, metadata !602, null}
!1716 = metadata !{i32 226, i32 0, metadata !602, null}
!1717 = metadata !{i32 227, i32 0, metadata !602, null}
!1718 = metadata !{i32 228, i32 0, metadata !602, null}
!1719 = metadata !{i32 231, i32 0, metadata !602, null}
!1720 = metadata !{i32 234, i32 0, metadata !602, null}
!1721 = metadata !{i32 236, i32 0, metadata !602, null}
!1722 = metadata !{i32 1431, i32 0, metadata !147, metadata !1721}
!1723 = metadata !{i32 1418, i32 0, metadata !137, metadata !1724}
!1724 = metadata !{i32 1432, i32 0, metadata !355, metadata !1721}
!1725 = metadata !{i32 1420, i32 0, metadata !345, metadata !1724}
!1726 = metadata !{i32 1421, i32 0, metadata !345, metadata !1724}
!1727 = metadata !{i32 1435, i32 0, metadata !355, metadata !1721}
!1728 = metadata !{i32 1436, i32 0, metadata !358, metadata !1721}
!1729 = metadata !{i32 1437, i32 0, metadata !358, metadata !1721}
!1730 = metadata !{i32 1439, i32 0, metadata !358, metadata !1721}
!1731 = metadata !{i32 1442, i32 0, metadata !358, metadata !1721}
!1732 = metadata !{i32 1445, i32 0, metadata !360, metadata !1721}
!1733 = metadata !{i32 1446, i32 0, metadata !360, metadata !1721}
!1734 = metadata !{i32 1447, i32 0, metadata !360, metadata !1721}
!1735 = metadata !{i32 1448, i32 0, metadata !360, metadata !1721}
!1736 = metadata !{i32 237, i32 0, metadata !602, null}
!1737 = metadata !{i32 238, i32 0, metadata !602, null}
!1738 = metadata !{i32 239, i32 0, metadata !602, null}
!1739 = metadata !{i32 242, i32 0, metadata !602, null}
!1740 = metadata !{i32 243, i32 0, metadata !602, null}
!1741 = metadata !{i32 244, i32 0, metadata !602, null}
!1742 = metadata !{i32 245, i32 0, metadata !602, null}
!1743 = metadata !{i32 247, i32 0, metadata !602, null}
!1744 = metadata !{i32 249, i32 0, metadata !602, null}
