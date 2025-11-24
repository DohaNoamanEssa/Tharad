import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/core/ui/app_otp.dart';
import 'package:tharad_task/core/ui/app_resend_otp.dart';
import 'package:tharad_task/views/auth/profile.dart';
import '../../core/ui/app_button.dart';
import '../../core/ui/app_image.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120.h,),

              AppImage(
                imageURL: "logo.png",
                bottomSpace: 116.h,
              ),
              Text(
                "رمز التحقق",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              SizedBox(height: 8.h),
              Text(
                " لاستكمال فتح حسابك ادخل رمز التحقق المرسل عبر البريد\n الإلكتروني",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
            AppVerifyCode(),
            AppResendOTP(),
              SizedBox(height: 40.h),

              AppButton(
                buttonTitle: "المتابعة",
                onPressed: () {
                  goTo(ProfileView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
