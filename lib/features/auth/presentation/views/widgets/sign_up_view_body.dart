import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/core/widgets/custom_text_field.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
              hintText: 'الأسم الكامل', textInputType: TextInputType.name),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
              hintText: 'البريد الألكتروني',
              textInputType: TextInputType.emailAddress),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
              hintText: 'كلمه المرور',
              textInputType: TextInputType.visiblePassword),
          SizedBox(
            height: 16,
          ),
          TermsAndConditions(),
        ],
      )),
    );
  }
}
