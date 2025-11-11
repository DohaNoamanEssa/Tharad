
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppInput extends StatefulWidget {
  final TextInputType? keyboardType;
  final bool isPassword;
  final VoidCallback? onPressed;
  final String? prefixIcon;
  final String? hintText;
  final double? bottomSpace;
  final double? topSpace;

  const AppInput({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.onPressed,
    this.keyboardType,
    this.isPassword = false,
    this.bottomSpace = 0,
    this.topSpace=0,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden=true;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bottomSpace ?? 0,top:widget.topSpace ?? 0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              width: 350,
              child: TextFormField(

                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Color(0xff265355),
                ),


                keyboardType: widget.keyboardType,
                obscureText: widget.isPassword && isHidden,
                obscuringCharacter: "*",
                decoration: InputDecoration(

                  filled: true,
                  fillColor: Color(0xffF4F7F6),


                  hintText: widget.hintText,
                  hintStyle: TextStyle(

                    color: Color(0xff265355),
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                      color: Color(0xffF0E6DE),
                    ),

                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffF0E6DE),
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffF0E6DE),
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),

                  prefixIcon: widget.isPassword
                      ? IconButton(
                    icon: AppImage(
                      imageURL:isHidden
                          ? "visability_off.svg"
                          : "visability_on.svg",
                      width: 22.w,
                      height: 20.h,
                      bottomSpace: 0,
                    ),
                    onPressed: () {
                      isHidden = !isHidden;

                      setState(() {});
                    },
                  )
                      : widget.prefixIcon != null
                      ? AppImage(
                    imageURL: widget.prefixIcon!,
                    width: 18,
                    height: 18,
                  )
                      : null,

                  prefixIconColor: Color(0xff265355),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
