import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_text_styles.dart';
import 'package:ecommerceapp/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: 'ليس لديك حساب',
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xFF949D9E),
          ),
        ),
        TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pushNamed(context, SignUpView.routeName);
            },
          text: ' قم بانشاء حساب ',
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        TextSpan(
          text: '',
          style: TextStyles.semiBold16.copyWith(color: const Color(0xFF616A6B)),
        ),
      ]),
    );
  }
}
