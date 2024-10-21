import 'package:ecommerceapp/features/on_boarding/prsentation/views/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'OnBoardingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnBoardingViewBody(),
      ),
    );
  }
}
