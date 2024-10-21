import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_images.dart';
import 'package:ecommerceapp/core/utils/app_text_styles.dart';
import 'package:ecommerceapp/core/widgets/custom_button.dart';
import 'package:ecommerceapp/core/widgets/custom_text_field.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xFFC9CECF),
              ),
              hintText: 'كلمه المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمه المرور',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(onPressed: () {}, text: 'نسجيل دخول'),
            const SizedBox(
              height: 32,
            ),
            const DontHaveAnAccountWidget(),
            const SizedBox(
              height: 16,
            ),
            const OrDivider(),
            SocialLoginButton(
                image: Assets.imagesGoogleIcon,
                title: 'نسجيل بواسطه جوجل',
                onPressed: () {}),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
                image: Assets.imagesAppIcon,
                title: 'نسجيل بواسطه ابل',
                onPressed: () {}),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
                image: Assets.imagesFacebookIcon,
                title: 'نسجيل بواسطه فيسبوك',
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
