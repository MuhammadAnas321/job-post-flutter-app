import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String placeHolder;
  final TextEditingController textName;

  const AppTextField(
      {Key? key, required this.placeHolder, required this.textName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color(0xff5D5D67), width: 1)),
      child: TextField(
        controller: textName,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: placeHolder,
            hintStyle: const TextStyle(
                color: Color(0xff8F8F9E),
                fontSize: 15,
                fontWeight: FontWeight.w400),
            border: InputBorder.none),
      ),
    );
  }
}
