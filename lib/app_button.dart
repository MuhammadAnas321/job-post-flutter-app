import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final GestureTapCallback onPress;

  const AppButton({required this.label, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xff5D5D67), width: 1)),
            child: GestureDetector(
              onTap: onPress,
              child: Text(
                label,
                style: const TextStyle(
                    color: Color(0xff191720),
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
