import 'package:customer_app/layout_screen/mysubscribe/Reports/components/report_item.dart';
import 'package:customer_app/layout_screen/mysubscribe/Reports/components/report_visit_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/my_color.dart';
import '../../../../custom/my_button.dart';
import '../../../../custom/my_text.dart';
import 'package:easy_localization/easy_localization.dart';


class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {



  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset('assets/images/Union.png')),




          Padding(
            padding:  EdgeInsetsDirectional.only(top: 30.0.r,start: 20.r,end: 20.r),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_outlined,size: 17.sp,

                        ),
                      ),

                      MyText(text: 'My subscribe'.tr(),margin: EdgeInsetsDirectional.only(start: 100.r),),
                    ],
                  ),
                  Container(
                    width: 315.w,
                    height: 70.h,
                    margin: EdgeInsetsDirectional.only(bottom: 20.r),
                    decoration: BoxDecoration(
                      color: Mycolor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0.r),
                          child: Image.asset('assets/images/documents.png'),
                        ),
                        MyText(text: 'Reports'.tr()),
                        Spacer(),
                        IconButton(
                          onPressed: () {

                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                  builder: (context, setState) {
                                    return Container(
                                      height: 771.h,
                                      width: 375.w, // عرض BottomSheet
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                MyText(text: 'View reports by'.tr(), margin: EdgeInsetsDirectional.only(end: 150.r)),
                                                IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: Icon(Icons.close),
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    ListView.builder(
                                                      shrinkWrap: true,
                                                      physics: const NeverScrollableScrollPhysics(),
                                                      itemBuilder: (context, index) {
                                                        return  ReportVisitItem();
                                                      },
                                                      itemCount: 10,
                                                    ),
                                                    SizedBox(height: 16.h), // تباعد بين قائمة العناصر والزر
                                                    MyButton(
                                                      onPressed: () {},
                                                      text: 'Follow up'.tr(),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          icon: Image.asset('assets/images/filter.png'),
                        )
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClick=true;
                          });
                        },
                        child: Container(
                          height: 170.h,
                          width: 143.w,
                          decoration: BoxDecoration(
                            color: isClick ? Mycolor : Colors.white,
                            borderRadius: BorderRadius.circular(24.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/teamwork.png'),
                              MyText(text: 'Employee'.tr(),color: isClick ? Colors.white : Mycolor,margin: EdgeInsetsDirectional.only(top: 15.r),),
                            ],
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                       setState(() {
                         isClick=false;
                       });
                        },
                        child: Container(
                          height: 170.h,
                          width: 143.w,
                          decoration: BoxDecoration(
                            color: isClick ? Colors.white : Mycolor,
                            borderRadius: BorderRadius.circular(24.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/building.png'),
                              MyText(text: 'Company'.tr(),color: isClick  ? Mycolor : Colors.white,margin: EdgeInsetsDirectional.only(top: 15.r)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (isClick )
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        if(isClick )

                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                            return ReportItem(index: index, text: 'احمد محمد احمد', image: Icon(Icons.person),);
                          },
                            itemCount: 10,
                          ),


                      ],
                    ),



                  if (!isClick )
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ReportItem(index: index, text: 'اسم الشركة', image: Image.asset('assets/images/enterprise.png'));
                      },
                      itemCount: 10,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
