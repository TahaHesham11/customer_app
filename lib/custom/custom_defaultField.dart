import 'package:customer_app/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDefaultField extends StatelessWidget {

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
final int maxLines;
 final void Function(String)? onSubmitted;
 final void Function(String)? onChanged;
 final Color? borderColor;

   const CustomDefaultField({
    this.textAlign,
    super.key,
   required this.controller,
     this.borderColor,
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
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0.r,horizontal: 10.r),
      child: Container(
        width: 300.w,
        height: 50.h,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.r),
            color: Colors.white,

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
          style: TextStyle(
            color: fontColor ?? Colors.black,
                fontSize: 13.sp,
          ),
          controller: controller,
          enabled:enable ,


          keyboardType: type,
          onChanged: onChanged,
          obscureText: isPassword??false,
          textInputAction: textInputAction,
          validator: validate,
          onTap: onTap,
          onFieldSubmitted: onSubmitted,
        maxLines: maxLines,
          textAlign: textAlign??TextAlign.start,

          decoration:  InputDecoration(
            fillColor:fillColor?? Colors.white,

            filled: filled??true,
             prefixIcon: prefix,

              suffixIcon:  suffixImage,
              hintText: label,
              hintStyle: TextStyle(
                  color:fontColor?? Colors.grey[400],
                  fontSize:fontSize?? 15.sp,
                fontWeight: FontWeight.w400
              ),

            border: showBorder ? OutlineInputBorder(
              borderSide:  BorderSide(
                  color: borderColor?? Mycolor,
              ),
              borderRadius: BorderRadius.circular(40.r),

            ) : OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(40.0.r),
            ),
          ),
          ),
      ),


    );
  }
}
