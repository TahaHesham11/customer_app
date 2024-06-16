import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
 const  CustomDivider({super.key,this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 10.r,bottom: 30.r),
      child: Divider(

        height: 1,
        thickness: 1,
        indent: 10,
        endIndent: 10,
        color: color,
        ),
    );
    }
}

