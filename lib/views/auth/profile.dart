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

  bool saveData=false;

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
              colors: [Color(0xff5CC7A3), Color(0xff265355)],
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topEnd,
            ),
          ),
        ),
        title: Text("الملف الشخصي"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.w, 32.h, 20.w, 32.h),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.horizontal(
                start: Radius.circular(16.r),
                end: Radius.circular(16.r),

              ),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                AppInput(title: 'اسم المستخدم', bottomSpace: 12.h),


                AppInput(bottomSpace: 12.h, title: 'البريد الإلكتروني', ),

                SizedBox(height: 6.h),
                AppProfileImage(),

                SizedBox(height: 12.h),


                AppInput(title: 'كلمة المرور القديمة', isPassword: true, bottomSpace: 12.h),

                AppInput(title: 'كلمة المرور الجديدة', isPassword: true, bottomSpace: 12.h),

                AppInput(title: 'تأكيد كلمة المرور الجديدة', isPassword: true, bottomSpace: 54.h),

                AppButton(
                  buttonTitle: "حفظ التغيرات",
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

                  },


                ),
              ],
            ),
          ),
        ),

      ),
      bottomNavigationBar:saveData? Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: EdgeInsets.all(20.r),
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
