import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportItem extends StatefulWidget {
  bool isExpanded ;

  int index ;
  final String text;
  final Widget image;

   ReportItem({super.key,this.isExpanded = false,required this.index,required this.text,required this.image});

  @override
  State<ReportItem> createState() => _ReportItemState();
}

class _ReportItemState extends State<ReportItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              setState(() {
                widget.isExpanded = !widget.isExpanded;

              });
            });
          },
          child: Container(
            width: 300.w,
            height: 32.h,
            margin: EdgeInsetsDirectional.symmetric(vertical: 10.r),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.r),
            ),

            child: Row(
              children: [
                Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0.r,),
                    child: widget.image
                ),
                MyText(text: widget.text,fontSize: 11.sp,)
                // Image.asset('assets/images/enterprise.png'),
              ],
            ),
          ),
        ),
        if (widget.isExpanded)
          Container(
            width: 300.w,
            height: 148.h,
            decoration: BoxDecoration(
              color: Mycolor.withOpacity(0.1),
              border: Border.all(color: Mycolor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.all(5.0.r),
                  child: Row(
                    children: [
                      Image.asset('assets/images/check2.png'),
                      MyText(text: 'اسم الشركة التابع لها',fontSize: 11.sp,margin: EdgeInsetsDirectional.only(start: 10.r),),
                      Spacer(),
                      MyText(text: 'اسم الشركة',fontSize: 11.sp,color: Mycolor,),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(5.0.r),
                  child: Row(
                    children: [
                      Image.asset('assets/images/check2.png'),
                      MyText(text: 'اسم الشركة التابع لها',fontSize: 11.sp,margin: EdgeInsetsDirectional.only(start: 10.r),),
                      Spacer(),
                      MyText(text: 'اسم الشركة',fontSize: 11.sp,color: Mycolor,),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(5.0.r),
                  child: Row(
                    children: [
                      Image.asset('assets/images/check2.png'),
                      MyText(text: 'اسم الشركة التابع لها',fontSize: 11.sp,margin: EdgeInsetsDirectional.only(start: 10.r),),
                      Spacer(),
                      MyText(text: 'اسم الشركة',fontSize: 11.sp,color: Mycolor,),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(5.0.r),
                  child: Row(
                    children: [
                      Image.asset('assets/images/check2.png'),
                      MyText(text: 'اسم الشركة التابع لها',fontSize: 11.sp,margin: EdgeInsetsDirectional.only(start: 10.r),),
                      Spacer(),
                      MyText(text: 'اسم الشركة',fontSize: 11.sp,color: Mycolor,),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(5.0.r),
                  child: Row(
                    children: [
                      Image.asset('assets/images/check2.png'),
                      MyText(text: 'اسم الشركة التابع لها',fontSize: 11.sp,margin: EdgeInsetsDirectional.only(start: 10.r),),
                      Spacer(),
                      MyText(text: 'اسم الشركة',fontSize: 11.sp,color: Mycolor,),

                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
