import 'package:flutter/material.dart';

class AppSearchTextField extends StatelessWidget {
  final placeHolder;

  const AppSearchTextField({Key? key, required this.placeHolder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff5D5D67)),
          color: Color(0xff1E1C24),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
            hintText: placeHolder,
            hintStyle: TextStyle(
              color: Color(0xff8F8F9E),
              fontSize: 15,
            ),
            icon: Icon(
              Icons.search,
              color: Color(0xff5D5D67),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
