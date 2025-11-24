import 'package:flutter/material.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/core/ui/app_button.dart';
import 'package:tharad_task/core/ui/app_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/ui/app_input.dart';
import 'package:tharad_task/core/ui/app_login_or_register.dart';
import 'package:tharad_task/views/auth/verify.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isChecked = false;

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
                bottomSpace: 100.h,
              ),
              Text(
                "تسجيل الدخول",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              SizedBox(height: 24.h),

              AppInput( bottomSpace: 12.h, title: 'البريد الإلكتروني',),



              AppInput( isPassword: true, title: 'كلمة المرور',bottomSpace: 8.h,),
              Row(
                children: [
                  Text(
                    "هل نسيت كلمة المرور؟",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff42867B),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff42867B),
                    ),
                  ),
                  Spacer(),
                  Text("تذكرني", style: TextStyle(fontSize: 10.sp)),
                  Checkbox(
                    value: isChecked,
                    activeColor: Color(0xff42867B),
                    side: BorderSide(
                      color: Color(0xff0D1D1E),
                      width: 1.5.w,
                    ),

                    onChanged: (bool? newVal) {
                      isChecked = newVal!;
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(height: 40,),
              AppButton(
                buttonTitle: "تسجيل الدخول",
                bottomSpace: 12.h,
                onPressed: () {
                  goTo(VerifyPage());

                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: AppLoginOrRegister(isLogin: true),
      ),
    );
  }
}
