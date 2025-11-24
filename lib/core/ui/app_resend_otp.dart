import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppResendOTP extends StatefulWidget {
  const AppResendOTP({super.key});

  @override
  State<AppResendOTP> createState() => _AppResendOTPState();
}

class _AppResendOTPState extends State<AppResendOTP> {
  bool isSent=true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          TextButton(
            onPressed: isSent? null: () {
              isSent=true;
              setState(() {

              });
            },
            child: Text(
              "إعادة ارسال",
              style: TextStyle(
                color: isSent? Colors.grey:Color(0XFF42867B),
                fontSize: 10,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
          ),

          Text(
            "لم يصلك رمز ؟",
            style: TextStyle(
              color: Color(0XFF0D1D1E),
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),

          Spacer(),
          if(isSent)
          CircularCountDownTimer(
            width: 50,
            height: 40,
            duration: 5,
            fillColor: Colors.transparent,
            ringColor: Colors.transparent,
            isReverse: true,
            textFormat: CountdownTextFormat.MM_SS,
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xff8E8EA9),
              fontSize: 12.sp,
            ),
            onComplete: (){
              isSent=false;
              setState(() {

              });
            },
          ),

        ],
      ),
    );
  }
}
