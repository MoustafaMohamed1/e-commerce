import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/core/services/shared_prefrences_singleton.dart';
import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/widgets/custom_button.dart';
import 'package:ecommerceapp/features/auth/presentation/views/login_view.dart';
import 'package:ecommerceapp/features/on_boarding/prsentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: CustomButton(
                onPressed: () {
                  prefs.setBool(kIsOnBoardingViewSeen, true);
                  Navigator.of(context)
                      .pushReplacementNamed(LoginView.routeName);
                },
                text: 'ابدأ الأن'),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
