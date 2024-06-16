import 'package:customer_app/custom/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomVisitScreen extends StatelessWidget {
  final String text;
  final String title;

  const CustomVisitScreen({
    super.key,
    required this.text,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: MyText(
                text: text,
                fontSize: 12.sp,
                maxLine: 1,
                overflow: TextOverflow.ellipsis,
                margin: EdgeInsetsDirectional.only(end:20.r)
              ),
            ),
            Expanded(
              flex: 3,
              child: MyText(
                text: title,
                fontSize: 12.sp,
                color: const Color(0xff707070),
                maxLine: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
