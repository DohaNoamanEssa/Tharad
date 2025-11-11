import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/views/auth/profile.dart';
import '../../core/ui/app_button.dart';
import '../../core/ui/app_image.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  bool isResend=false;
  bool timerVisible=true;
  int timerSeconds=5;
  late DateTime startTimer=  DateTime.now().add(Duration(seconds: timerSeconds));

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
                  OtpTextField(
                    margin: EdgeInsets.only(right: 12.0.w),
                    numberOfFields: 4,
                    borderColor: Color(0XFFF0E6DE),
                    focusedBorderColor: Color(0XFFF0E6DE),
                    showFieldAsBox: true,
                    borderRadius: BorderRadius.circular(8.0.r),
                    borderWidth: 1.0.w,
                    fieldWidth: 49.w,
                    fieldHeight: 49.h,
                    autoFocus: true,
                    textStyle: TextStyle(
                      color: Color(0xff0D1D1E),
                      fontSize: 14.sp,
                    ),
                    // end onSubmit
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.w,
                      top: 12.h,
                      right: 30.w,
                      bottom: 40.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: isResend? () {
                            setState(() {
                              timerVisible=true;
                              startTimer;
                              isResend=false;
                            });
                          }:null,
                          child: Text(
                            "إعادة ارسال",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: isResend? Color(0xff42867B):  Color(0xff0D1D1E),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                        ),
                        Text(
                          "لم يصلك رمز ؟",
                          style: TextStyle(
                            color: Color(0xff0D1D1E),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        if(timerVisible)
                        TimerCountdown(
                          format: CountDownTimerFormat.secondsOnly,
                          endTime: startTimer,
                          onEnd: () {
                            setState(() {
                              isResend=true;
                              timerVisible=false;

                            });
                          },

                        ),
                      ],
                    ),
                  ),

                  AppButton(
                    buttonTitle: "المتابعة",
                    onPressed: () {
                      goTo(ProfileView());
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
