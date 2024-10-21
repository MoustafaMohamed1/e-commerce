import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_text_styles.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(
          isChecked: true,
        ),
        const SizedBox(
          width: 16,
        ),
        SizedBox(
          width:
              MediaQuery.sizeOf(context).width - (kHorizintalPadding * 2) - 48,
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                text: 'من خلال إنشاء حساب ، فإنك توافق علي',
                style: TextStyles.semiBold13.copyWith(
                  color: const Color(0xFF949D9E),
                ),
              ),
              TextSpan(
                text: 'الشروط والأحكام',
                style: TextStyles.semiBold13
                    .copyWith(color: AppColors.lightPrimaryColor),
              ),
              const TextSpan(text: '', style: TextStyles.semiBold13),
              TextSpan(
                text: 'الخاصه',
                style: TextStyles.semiBold13
                    .copyWith(color: AppColors.lightPrimaryColor),
              ),
              TextSpan(
                text: 'بنا',
                style: TextStyles.semiBold13
                    .copyWith(color: AppColors.lightPrimaryColor),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
