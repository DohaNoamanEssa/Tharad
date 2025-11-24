import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/logic/helper_methods.dart';
import 'package:tharad/views/auth/create_new_account.dart';
import 'package:tharad/views/auth/login.dart';

class AppLoginOrRegister extends StatefulWidget {
  final bool isLogin;

  const AppLoginOrRegister({super.key, this.isLogin = true});

  @override
  State<AppLoginOrRegister> createState() => _AppLoginOrRegisterState();
}

class _AppLoginOrRegisterState extends State<AppLoginOrRegister> {
  _AppLoginOrRegisterState();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [

            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: TextButton(
                onPressed: widget.isLogin
                    ? () => goTo(CreateAccountView())
                    : () => goTo(LoginView()),
                child: Text(
                  widget.isLogin ? "إنشاء حساب جديد" : "تسجيل الدخول",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff42867B),
                    color: Color(0xff42867B),
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: widget.isLogin ? "ليس لديك حساب؟ " : "لديك حساب؟ ",
              style: TextStyle(
                color: Color(0xff0D1D1E),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
