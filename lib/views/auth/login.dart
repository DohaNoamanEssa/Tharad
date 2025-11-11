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
  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppImage(
                    imageURL: "tharad.png",
                    topSpace: 100.h,
                    bottomSpace: 100.h,
                  ),
                  Text(
                    "تسجيل الدخول",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(height: 24.h),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "البريد الإلكتروني",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  AppInput(topSpace: 6.h, bottomSpace: 12.h),

                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "كلمة المرور",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  AppInput(topSpace: 6.h, isPassword: true),
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
                  AppButton(
                    buttonTitle: "تسجيل الدخول",
                    topSpace: 40.h,
                    bottomSpace: 12.h,
                    onPressed: () {
                      setState(() {
                        goTo(VerifyPage());
                      });
                    },
                  ),
                ],
              ),
            ),
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
