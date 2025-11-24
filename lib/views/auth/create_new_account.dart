import 'package:flutter/material.dart';
import 'package:tharad/core/logic/helper_methods.dart';
import 'package:tharad/core/ui/app_button.dart';
import 'package:tharad/core/ui/app_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/ui/app_input.dart';
import 'package:tharad/core/ui/app_login_or_register.dart';
import 'package:tharad/core/ui/app_profile_image.dart';
import 'package:tharad/views/auth/profile.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80.h,),
              AppImage(
                imageURL: "logo.png",
                bottomSpace: 40.h,
              ),
              Text(
                "إنشاء حساب جديد",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              SizedBox(height: 24.h),

              AppProfileImage(),

              SizedBox(height: 12.h),

              AppInput(title: 'اسم المستخدم', bottomSpace: 12.h),


              AppInput(bottomSpace: 12.h, title: 'البريد الإلكتروني',),


              AppInput( isPassword: true, bottomSpace: 12.h, title: 'كلمة المرور',),


              AppInput( isPassword: true, bottomSpace: 40.h, title: 'تأكيد كلمة المرور',),

              AppButton(
                buttonTitle: "إنشاء حساب جديد",
                bottomSpace: 12.h,
                onPressed: (){
                  goTo(ProfileView());

                },
              ),
            ],
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
