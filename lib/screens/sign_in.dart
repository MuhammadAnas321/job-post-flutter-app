import 'package:flutter/material.dart';
import 'package:hello_app/app_button.dart';
import 'package:hello_app/app_text_field.dart';
import 'package:hello_app/screens/jobs.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191720),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 110, left: 27, right: 27, bottom: 59),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Let’s sign you in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 14,
            ),
            Text('Welcome back\nyou’ve been missed !',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 47,
            ),
            AppTextField(placeHolder: 'Enter your email address'),
            AppTextField(placeHolder: 'Enter your password'),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account ?',
                    style: TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(' Register',
                      style: TextStyle(color: Colors.white, fontSize: 15))
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            AppButton(
                label: 'Sign In',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JobScreen()));
                })
          ],
        ),
      ),
    );
  }
}
