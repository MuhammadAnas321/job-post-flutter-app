import 'package:flutter/material.dart';
import 'package:hello_app/app_button.dart';
import 'package:hello_app/app_text_field.dart';
import 'package:hello_app/screens/sign_in.dart';

class SignUp extends StatelessWidget {
  TextEditingController addJob = TextEditingController();
  TextEditingController addDescribe = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff191720),
      body: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 110, left: 27, right: 27, bottom: 59),
          child: Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Let’s sign you up',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    'Welcome \nJoin the community!',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 47,
                  ),
                  Expanded(
                    child: AppTextField(
                      placeHolder: 'Enter your full name',
                      textName: addJob,
                    ),
                  ),
                  Expanded(
                    child: AppTextField(
                      placeHolder: 'Enter your email address',
                      textName: addJob,
                    ),
                  ),
                  Expanded(
                    child: AppTextField(
                      placeHolder: 'Enter your password',
                      textName: addJob,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account ?',
                          style:
                              TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  AppButton(label: 'Sign Up', onPress: onSignUpPress)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onSignUpPress() {}
}
