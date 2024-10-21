import 'package:ecommerceapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.image,
      required this.title,
      required this.onPressed});
  final String image;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color(0xFFDCDEDE),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: onPressed,
          child: ListTile(
            visualDensity:
                const VisualDensity(vertical: VisualDensity.minimumDensity),
            leading: SvgPicture.asset(image),
            title: Text(
              textAlign: TextAlign.center,
              title,
              style: TextStyles.semiBold16,
            ),
          )),
    );
  }
}
