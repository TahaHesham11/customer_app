import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_text.dart';


class CustomAppBar extends StatelessWidget implements  PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
 this.image,
    this.text,
    this.imageBack,
    this.backColor,
    this.height,
    this.width,
    this.backgroundColor,
    this.isAction=false,
    this.isBack = true,
    this.elevation=0.0,
    this.isImage=true
  }) ;

  final Widget? imageBack;
  final bool isAction;
  final String title;
  final bool isBack;
  final Color? backColor;
  final Widget? image;
  final Widget? text;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final double elevation;
  final bool isImage ;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: MyText(
          text: title,
          color: Color(0xff707070),
          fontSize: 15.sp,
          fontWeight: FontWeight.w700,
        ),
        actions:[
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:isBack ? Icon( Icons.arrow_forward_ios_rounded,size: 17.sp,):Container(),
          ),
        ],
        leading: image,


    );
  }
}
