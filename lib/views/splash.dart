import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/core/ui/app_image.dart';
import 'package:tharad_task/views/auth/create_new_account.dart';
import 'package:animate_do/animate_do.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool showFinalLogo = false;

  @override
  initState() {
    super.initState();
    goTo(CreateAccountView(), delayInSeconds: 2);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(child:  Stack(
        alignment: Alignment.center,
        children: [
          if (!showFinalLogo) ...[
            FadeInDown(
              duration: const Duration(milliseconds: 800),
              child: AppImage(imageURL: "tharad_logo.png"),
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 800),
              child: AppImage(imageURL: "tharad_logo.png"),
            ),
            FadeInLeft(
              duration: const Duration(milliseconds: 800),
              child: AppImage(imageURL: "tharad_logo.png"),
            ),
            FadeInRight(
              duration: const Duration(milliseconds: 800),
              child: AppImage(imageURL: "tharad_logo.png"),
            ),
          ],

          if (showFinalLogo)
            ZoomIn(
              duration: const Duration(milliseconds: 700),
              child: AppImage(
                imageURL: "tharad_logo.png",
                width: 300.w,
                height: 300.h,
              ),
            ),
        ],
      ),),
    );
  }
}
