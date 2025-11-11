import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/views/auth/create_new_account.dart';
import '../../core/ui/app_button.dart';
import '../../core/ui/app_image.dart';
import '../../core/ui/app_input.dart';
import '../../core/ui/app_profile_image.dart';

class ProfileView extends StatefulWidget {

  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final linearGradientColors = [Color(0xff5CC7A3), Color(0xff265355)];

  var saveData=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 112.h,
        centerTitle: true,
        leading: Padding(
          padding:  EdgeInsets.all(8.0.r),
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: Color(0xffE9EEEE).withValues(alpha: .2),
            child: AppImage(
              imageURL: "notification.svg",
              color: Color(0xffFFFFFF),

            ),
          ),
        ),
        flexibleSpace: Container(
          width: double.infinity,
          height: 300.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: linearGradientColors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
        title: Text("الملف الشخصي"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 32.h, 20.w, 32.h),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.r),
                  topLeft: Radius.circular(16.r),
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "اسم المستخدم",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
                  ),
                  AppInput(topSpace: 6.h, bottomSpace: 12.h),

                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "البريد الإلكتروني",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
                  ),
                  AppInput(bottomSpace: 12.h, topSpace: 6.h),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "الصورة الشخصية",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  AppProfileImage(),

                  SizedBox(height: 12.h),

                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "كلمة المرور القديمة",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
                  ),
                  AppInput(topSpace: 6.h, isPassword: true, bottomSpace: 12.h),

                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "كلمة المرور الجديدة",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
                  ),
                  AppInput(topSpace: 6.h, isPassword: true, bottomSpace: 40.h),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "تأكيد كلمة المرور الجديدة",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
                  ),
                  AppInput(topSpace: 6.h, isPassword: true, bottomSpace: 54.h),

                  AppButton(
                    buttonTitle: "حفظ التغيرات",
                    topSpace: 40.h,
                    bottomSpace: 12.h,
                    onPressed: (){
                      setState(() {
                        saveData=true;
                      });
                    },
                  ),
                  TextButton(
                    child: Text( "تسجيل الخروج",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: Color(0xffFF1020),
                      ),),
                    onPressed: () {
                      goTo(CreateAccountView());
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
      bottomNavigationBar:saveData? Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: EdgeInsets.fromLTRB(25, 25,25, 25),
        width: double.infinity,
        height: 65.h,
        color: Color(0xff42867B),
        child: Text("تم حفظ التغيرات بنجاح",style: TextStyle(
          color: Color(0xffFFFFFF),
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),),
      ): null,
    );
  }
}
