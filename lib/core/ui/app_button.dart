import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback? onPressed;
  final double bottomSpace;
  final double topSpace;

  AppButton({super.key, required this.buttonTitle, this.onPressed,this.bottomSpace=0,this.topSpace=0});

  final linearGradientColors = [Color(0xff5CC7A3), Color(0xff265355)];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topSpace ,bottom: bottomSpace),
      child: Container(
        height: 48.h,
        width: 350.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: linearGradientColors,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(8.r),

        ),
        child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            )

          ),
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),

        ),
      ),
    );
  }
}