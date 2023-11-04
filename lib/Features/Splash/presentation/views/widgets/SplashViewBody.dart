import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin /*معدل تغيير القيم*/ {
  late AnimationController animationController; //0:1
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    initSlidingAnimation();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    //replaced with animatedbuilder
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
    navigateToHomePage();
  }

//to avoid memory leak
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  void navigateToHomePage() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(
        //   () => HomeView(),
        //   transition: Transition.fade,
        //   duration: Duration(milliseconds: 200),
        // );
        GoRouter.of(context).push('/homeview');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.Logo),
        const SizedBox(
          height: 4,
        ),
        //to rebuild this widget only , not all ui
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
