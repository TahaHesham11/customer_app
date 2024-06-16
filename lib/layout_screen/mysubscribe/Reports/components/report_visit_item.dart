import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class ReportVisitItem extends StatefulWidget {

  ReportVisitItem({super.key,});

  @override
  State<ReportVisitItem> createState() => _ReportVisitItemState();
}

class _ReportVisitItemState extends State<ReportVisitItem> {
  bool isShowCheckBox = false;
  bool checkBox = false;
  late List<bool> checkBoxValues;

  @override
  void initState() {
    super.initState();
    checkBoxValues = List<bool>.filled(3, false); // قائمة من 3 عنصر بقيم افتراضية false
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          // استخدام double.infinity لضمان أن الـ Container يأخذ العرض الكامل المتاح
          margin: EdgeInsets.symmetric(horizontal: 20.w),

          decoration: BoxDecoration(
            color: Color(0xffECEFF1),
          ),
          child: Row(
            children: [
              Text('Number of visits'.tr()),
              Spacer(),
              IconButton(
                onPressed: (){
    setState(() {
    isShowCheckBox = !isShowCheckBox;
    });
    },
                icon: Icon(isShowCheckBox ? Icons.remove : Icons.add),
              ),
            ],
          ),
        ),
        if (isShowCheckBox)
          Visibility(
            visible: isShowCheckBox,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3, // عدد العناصر التي تريد إظهارها
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Checkbox(
                      value:  checkBoxValues[index] ,
                      activeColor: Mycolor,
                      onChanged: (value) {
                        setState(() {
                        //  checkBox[index] = value![index]!;
                          checkBoxValues[index] = value!;

                        });
                      },
                    ),
                    title: Text('Visits ${index + 1}'),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
