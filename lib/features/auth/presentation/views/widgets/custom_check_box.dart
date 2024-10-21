import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked});
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 24,
      height: 24,
      duration: const Duration(
        milliseconds: 300,
      ),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1.5,
              color: Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
