import 'package:flutter/material.dart';
import 'package:route_task/core/utils/app_colors.dart';

Widget unDefinedRoute() {
  return const Scaffold(
    body: Center(
      child: Text('Route Name Not Found'),
    ),
  );
}

Widget customTextFormField(
    {String? hintText,
    TextStyle? hintStyle,
    required Color borderColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
    TextEditingController? controller,
    required double height,
    double radius = 0,
    bool isPassword = false,
    TextStyle? textStyle,
    EdgeInsetsGeometry? contentPadding,
    String? Function(String?)? onValidate}) {
  return SizedBox(
    height: height,
    child: TextFormField(
      validator: onValidate,
      style: textStyle,
      obscureText: isPassword,
      obscuringCharacter: '*',
      cursorColor: AppColor.primaryColor,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
        hintStyle: hintStyle,
        filled: true,
        fillColor: AppColor.whiteColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    ),
  );
}
