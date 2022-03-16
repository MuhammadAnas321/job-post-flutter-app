import 'package:flutter/material.dart';
import 'package:hello_app/app_button.dart';
import 'package:hello_app/app_text_field.dart';
import 'package:hello_app/utils.dart';

class AddNewJob extends StatefulWidget {
  const AddNewJob({Key? key}) : super(key: key);

  @override
  State<AddNewJob> createState() => _AddNewJobState();
}

class _AddNewJobState extends State<AddNewJob> {
  TextEditingController addJob = TextEditingController();
  TextEditingController addDescribe = TextEditingController();

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
                    'Add New Job',
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
              placeHolder: 'Enter position name',
              textName: addJob,
            ),
            SizedBox(
              height: 28,
            ),
            Container(
                height: 200,
                child: AppTextField(
                  placeHolder: 'Describe Requirement...',
                  textName: addDescribe,
                )),
            Spacer(),
            AppButton(
                label: 'Submit Job',
                onPress: () {
                  saveNewJob();
                })
          ],
        ),
      ),
    );
  }

  saveNewJob() {
    var job = Jobs(postionName: addJob.text, jobDescribe: addDescribe.text);
    Navigator.pop(context, job);
  }
}

class Jobs {
  String postionName;
  String jobDescribe;
  Jobs({required this.postionName, required this.jobDescribe});
}
