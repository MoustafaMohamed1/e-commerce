import 'package:ecommerceapp/core/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'نسجيل الدخول'),
      body: const LoginViewBody(),
    );
  }
}
