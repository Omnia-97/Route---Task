import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_task/core/utils/app_colors.dart';

class AppStyles {
  static TextStyle bodyL = GoogleFonts.poppins(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor,
      letterSpacing: -.17);
  static TextStyle bodyM = GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor,
      letterSpacing: -.17);
  static TextStyle bodyS = GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w300,
      color: AppColor.blackHintColor,
      letterSpacing: -.17);
  static TextStyle textButton = GoogleFonts.poppins(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor,
      letterSpacing: -.17);
  static TextStyle generalText = GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.textColor,
      letterSpacing: -.17);
}
