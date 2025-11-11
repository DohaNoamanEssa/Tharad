import 'package:flutter/material.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/core/ui/app_button.dart';
import 'package:tharad_task/core/ui/app_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/ui/app_input.dart';
import 'package:tharad_task/core/ui/app_login_or_register.dart';
import 'package:tharad_task/core/ui/app_profile_image.dart';
import 'package:tharad_task/views/auth/profile.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
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
                    topSpace: 80.h,
                    bottomSpace: 40.h,
                  ),
                  Text(
                    "إنشاء حساب جديد",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(height: 24.h),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "الصورة الشخصية",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  AppProfileImage(),

                  SizedBox(height: 12.h),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "اسم المستخدم",
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
                      "البريد الإلكتروني",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  AppInput(bottomSpace: 12.h, topSpace: 6.h),

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
                  AppInput(topSpace: 6.h, isPassword: true, bottomSpace: 12.h),

                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "تأكيد كلمة المرور",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  AppInput(topSpace: 6.h, isPassword: true, bottomSpace: 40.h),

                  AppButton(
                    buttonTitle: "إنشاء حساب جديد",
                    topSpace: 40.h,
                    bottomSpace: 12.h,
                    onPressed: (){
                      goTo(ProfileView());
                      setState(() {

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
        child: AppLoginOrRegister(isLogin: false),
      ),
    );
  }
}
