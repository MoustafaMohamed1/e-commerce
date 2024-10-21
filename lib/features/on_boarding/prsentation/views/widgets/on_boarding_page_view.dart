import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_images.dart';
import 'package:ecommerceapp/core/utils/app_text_styles.dart';
import 'package:ecommerceapp/features/on_boarding/prsentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              'اكنشف تجربه تسوق فريده مع FruitHUB. اسنكشف مجموعتنا الواسعه من الفواكه الطازجه الممتازه واجصل علي افضل العروض ة الجوده العاليه',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'مرحبا بك في ',
                style: TextStyles.bold23,
              ),
              Text(
                'HUB',
                style:
                    TextStyles.bold23.copyWith(color: AppColors.SeondaryColor),
              ),
              Text(
                'Fruit',
                style:
                    TextStyles.bold23.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        const PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle:
              'نقدم افضل الفواكه المختاره بعنايه.اطلع علي التفاصيل و الصور و التقييمات للتاكد من اختيار الفاكهه المثاليه',
          title: Text(
            'ابحث و تسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.w700,
                height: 0),
          ),
        )
      ],
    );
  }
}
