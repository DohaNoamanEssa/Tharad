import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tharad/core/ui/app_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AppProfileImage extends StatefulWidget {
  const AppProfileImage({super.key});

  @override
  State<AppProfileImage> createState() => _AppProfileImageState();
}

class _AppProfileImageState extends State<AppProfileImage> {
  File? _image;

  Future<void> pickImageFromCamera() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Text(
            'الصورة الشخصية',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
          ),
        ),
        SizedBox(height: 6.h),
        _image == null
            ? SizedBox(

              child: DottedBorder(
                  options: RoundedRectDottedBorderOptions(
                    padding: EdgeInsets.all(0.r),
                    color: Color(0xff42867B),
                    strokeWidth: 3.w,
                    dashPattern: [10, 10],
                    radius: Radius.circular(8.r),
                  ),
                  child: Container(
                    width: 350.w,
                    color: Color(0xffF4F7F6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 18.h),
                        InkWell(
                          onTap: pickImageFromCamera,
                          child: AppImage(
                            imageURL: "camera.svg",
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            children: [
                              TextSpan(
                                text: " الملفات المسموح بيها:  JPEG , PNG \n  ",
                                style: TextStyle(
                                  fontFamily: "Alexandria",
                                  fontSize: 8.sp,
                                  color: Color(0xff998C8C),
                                ),
                              ),
                              TextSpan(
                                text: "الحد الاقصي : 5MB",
                                style: TextStyle(
                                  fontFamily: "Alexandria",
              
                                  color: Color(0xff998C8C),
                                  fontSize: 6.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18.h),
                      ],
                    ),
                  ),
                ),
            )
            : SingleChildScrollView(
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(16.w, 18.h, 16.w, 18.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0.r),
                          color: Color(0xffffffff),
                        ),
                        child: Image.file(
                          _image!,
                          height: 90.h,
                          width: 170.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Color(0xff42867B),
                        child: Padding(
                          padding: EdgeInsets.all(3.0.r),
                          child: AppImage(
                            imageURL: "camera.svg",
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
