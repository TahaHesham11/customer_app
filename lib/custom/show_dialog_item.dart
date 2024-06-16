import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/custom_title_text.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class ShowDialogItem extends StatefulWidget {
  final String initialText;
  final String initialTitle;
  final Widget initialImage;
  final void Function()? onPressed;
  final bool? isCustomer;

  const ShowDialogItem({
    Key? key,
    this.isCustomer,
    required this.initialText,
    required this.initialTitle,
    required this.onPressed,
    required this.initialImage,
  }) : super(key: key);

  @override
  _ShowDialogItemState createState() => _ShowDialogItemState();
}

class _ShowDialogItemState extends State<ShowDialogItem> {
  late String text;
  late String title;
  late Widget image;
  late bool isNotificationDialog;

  @override
  void initState() {
    super.initState();
    text = widget.initialText;
    title = widget.initialTitle;
    image = widget.initialImage;
    isNotificationDialog = title == 'Notifications'.tr();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 250.h,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                image,
              ],
            ),
            CustomTitleText(text: title.tr()),
            MyText(
              text: text.tr(),
              color: Colors.grey[400],
              textAlign: TextAlign.center,
              margin: EdgeInsetsDirectional.only(top: 20.r),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Center(
          child: Column(
            children: [
              MyButton(
                onPressed: () {
                  setState(() {
                    if (isNotificationDialog) {
                      Navigator.pop(context); // Close the current AlertDialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return ShowDialogItem(
                            initialText: 'Allow your location to be determined',
                            initialTitle: 'Location',
                            initialImage: Image.asset('assets/images/location_dialog.png'),
                            onPressed: () {
                              Navigator.pop(context); // Close the Location AlertDialog
                            },
                          );
                        },
                      );
                    } else {
                      Navigator.pop(context); // Close the current AlertDialog
                    }
                  });
                },
                text: isNotificationDialog ? 'Allow'.tr() : 'Allow'.tr(),
                margin: EdgeInsetsDirectional.only(bottom: 20.r),
              ),
              MyButton(
                text: 'Skip'.tr(),
                border: Border.all(color: Mycolor),
                background: Colors.white,
                textColor: Mycolor,
                onPressed: () {
                  Navigator.pop(context); // Close the current AlertDialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ShowDialogItem(
                        initialText: 'Allow your location to be determined',
                        initialTitle: 'Location',
                        initialImage: Image.asset('assets/images/location_dialog.png'),
                        onPressed: () {
                          Navigator.pop(context); // Close the Location AlertDialog
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}