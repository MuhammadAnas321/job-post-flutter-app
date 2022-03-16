import 'package:flutter/material.dart';
import 'package:hello_app/app_button.dart';
import 'package:hello_app/app_text_field.dart';
import 'package:hello_app/utils.dart';

class EditJob extends StatelessWidget {
  TextEditingController editJob = TextEditingController();
  TextEditingController editDescribe = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 89, left: 27, right: 27, bottom: 59),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Edit Job',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            AppTextField(
              placeHolder: 'Flutter Developer',
              textName: editJob,
            ),
            SizedBox(
              height: 28,
            ),
            Container(
                height: 200,
                child: AppTextField(
                  placeHolder:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Quis eget in lectus sit amet pellentesque eleifend tellus neque.\n Praesent sagittis ultricies volutpat turpis hendrerit nulla ultricies massa elementum.\n Convallis gravida enim erat enim commodo praesent malesuada facilisis. Potenti orci amet, dui nunc aliquet pellentesque sit nibh scelerisque.',
                  textName: editDescribe,
                )),
            Spacer(),
            AppButton(label: 'Update Job', onPress: () {})
          ],
        ),
      ),
    );
  }
}
