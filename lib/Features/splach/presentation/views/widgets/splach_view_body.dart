import 'package:booklyapp/Features/home/data/presentation/views/home_view.dart';
import 'package:booklyapp/Features/splach/presentation/views/widgets/slide_text_animation.dart';
import 'package:booklyapp/core/utlti/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeWithDuration();
  }

  void navigateToHomeWithDuration() {
      Future.delayed(const Duration(seconds: 4), () {
      Get.to(() =>const  HomeView(),transition: Transition.fade,duration: const Duration(microseconds: 250));
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingText = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    slidingText.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingTextAnimation(slidingText: slidingText)
      ],
    );
  }
}
