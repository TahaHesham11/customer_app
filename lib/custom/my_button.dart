import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/my_color.dart';


class MyButton extends StatefulWidget {

 final String? text;
  final void Function()? onPressed;
final  Color? background ;
final  Color? textColor ;
final  double? width;
final  double? fontSize;
final  double? height;
final  bool isImage;
final  EdgeInsetsGeometry? margin;
final  BoxBorder? border;
final  EdgeInsetsGeometry? padding;
//final  bool isLoading;
final BorderRadiusGeometry? borderRadius;
 final List<BoxShadow>? boxShadow;
final Gradient? gradient;
final TextAlign? textAlign;

  const MyButton({
     super.key,
     this.fontSize,
    this.gradient,
    this.textAlign,
    this.borderRadius,
    this.boxShadow,
     required this.onPressed,
     required this.text,
     this.width,
     this.height,
     this.background,
     this.textColor,
     this.margin,
     this.isImage=false,
     this.border,
     this.padding,
    CircularProgressIndicator? child,
   //  this.isLoading = false,
   });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      height: widget.height??50.h ,
      width: widget.width??300.h ,


      decoration: BoxDecoration(
        gradient: widget.gradient ,

          borderRadius:widget.borderRadius ?? BorderRadius.circular(40.r),
          color: widget.background??Mycolor,
          border: widget.border??Border.all(color: Colors.transparent),
          // boxShadow: widget.boxShadow ??const [
          //   BoxShadow(
          //     color: Colors.black12,
          //     spreadRadius: 4,
          //     blurRadius: 5,
          //     offset: Offset(0, 3),
          //   )
          // ]
      ),

      child:  MaterialButton(
            padding: widget.padding,
            onPressed: widget.onPressed,


            child: Text(
              widget.text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: widget.fontSize??15.sp,
                  color: widget.textColor??Colors.white,

              ),


                      ),
      )

    );

  }
}
