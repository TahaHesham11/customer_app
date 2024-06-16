import 'package:customer_app/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController?  controller;
  final      String? label;
  final      TextInputType type;
  final     IconData? suffix;
  final     Color? backGround;
  final     double? fontSize;
  final     double? width;
  final void Function()? onTap;
  final void Function()? suffixPressed;
  final  Color? fontColor;
  final  bool enable ;
  final  TextAlign? textAlign;
  final  bool? isPassword ;
  final  Widget? suffixImage;
  final   String? Function (String? value)? validate;
  final  Widget? prefix;
  final  TextInputAction? textInputAction;
  final  InputDecoration? decoration;
  final  Color? fillColor;
  final  bool? filled;
  final  BorderSide? borderSide;
  final  bool showBorder;
  final int? maxLines;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? margin;
 final InputBorder? border;
 final int? maxLength;
 final double? height;
  const CustomFormField({
    super.key,
    this.textAlign,
    this.height,
    this.maxLength,
    this.border,
    required this.controller,
    this.margin,
    this.suffixImage,
    this.prefix,
    this.maxLines = 1,
    this.isPassword= false,
    this.showBorder=false,
    this.onTap,
    this.borderSide,
    this.suffixPressed,
    this.fontColor,
    this.fontSize,
    this.decoration,
    this.width,
    this.label,
    required this.type,
    this.backGround,
    this.enable=true,
    this.suffix,
    this.validate,
    this.textInputAction,
    this.fillColor,
    this.filled,
    this.onSubmitted,
    this.onChanged,

  });

  @override
  Widget build(BuildContext context) {
    return             Container(
      width: 314.w,
      height: height??40,
      margin: margin,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: backGround??Mycolor,

          boxShadow:  [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 3),
            )

          ]
      ),
      child: TextFormField(
        controller: controller,
        enabled: enable,
        keyboardType: type,
        onChanged: onChanged,
        obscureText: isPassword ?? false,
        textInputAction: textInputAction,
        validator: validate,
        onTap: onTap,
        onFieldSubmitted: onSubmitted,
        maxLength: maxLength ,
        maxLines: maxLines,
        textAlign: textAlign ?? TextAlign.start,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0), // تعديل الهامش الداخلي هنا

          fillColor: fillColor ?? const Color(0xffBEE6FF),
          filled: filled ?? true,
          prefixIcon: prefix,
          suffixIcon: suffixImage,
          hintText: label,
          hintStyle: const TextStyle(
            color: Color(0xffB6B6B6),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          border: border?? const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red, // تغيير لون الحدود هنا
            ),
          ),
        ),
      )

    );
  }
}
