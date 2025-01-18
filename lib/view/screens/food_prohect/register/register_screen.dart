import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram2/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:instagram2/view_model/cubit/auth_cubit/auth_state.dart';
import 'package:instagram2/view_model/translations/locale_keys.g.dart';
import 'package:instagram2/view_model/utils/app_assets.dart';
import 'package:instagram2/view_model/utils/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Register Screen');
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            SvgPicture.asset(
              AppAssets.sun,
              // colorFilter: ColorFilter.mode(
              //   Colors.cyanAccent,
              //   BlendMode.srcIn,
              // ),
            ),
            PositionedDirectional(
              top: 0,
              end: 0,
              child: SvgPicture.asset(
                AppAssets.pattern,
                // colorFilter: ColorFilter.mode(
                //   Colors.white,
                //   BlendMode.srcIn,
                // ),
              ),
            ),
            SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Padding(
                          padding: EdgeInsets.all(24.sp),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20.r,
                            child: Icon(Icons.arrow_back_ios_new_rounded),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          print(context.locale.toString());
                          if (context.locale.toString() == 'ar') {
                            context.setLocale(Locale('en'));
                          } else {
                            context.setLocale(Locale('ar'));
                          }
                          // context.setLocale(Locale('ar'));
                        },
                        icon: Icon(
                          Icons.language,
                          size: 30.r,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    LocaleKeys.signUp.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    LocaleKeys.pleaseSignUpToGetStarted.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(24.sp),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24.r),
                        ),
                      ),
                      child: ListView(
                        children: [
                          Text(
                            LocaleKeys.name.tr(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xFF32343E),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          TextFormField(
                            controller: AuthCubit.get(context).userName,
                            decoration: InputDecoration(
                              hintText: 'John Doe',
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            LocaleKeys.email.tr(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xFF32343E),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            controller: AuthCubit.get(context).email,
                            decoration: InputDecoration(
                              hintText: 'Example@gmail.com',
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            LocaleKeys.password.tr(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xFF32343E),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          BlocBuilder<AuthCubit, AuthState>(
                            builder: (context, state) {
                              print('Text Form Field');
                              return TextFormField(
                                obscureText: AuthCubit.get(context).hidePassword,
                                decoration: InputDecoration(
                                  hintText: '*' * 10,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      AuthCubit.get(context).toggleHidePassword();
                                    },
                                    icon: SvgPicture.asset(
                                      AppAssets.eyeOff,
                                      height: 20.h,
                                      width: 20.w,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            LocaleKeys.retypePassword.tr(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xFF32343E),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
                            return TextFormField(
                              obscureText: AuthCubit.get(context).hideConfirmPassword,
                              decoration: InputDecoration(
                                hintText: '*' * 10,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    AuthCubit.get(context).toggleHideConfirmPassword();
                                  },
                                  icon: SvgPicture.asset(
                                    AppAssets.eyeOff,
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                ),
                              ),
                            );
                          },),
                          SizedBox(
                            height: 12.h,
                          ),
                          TextFormField(
                            minLines: 5,
                            maxLines: 10,
                            controller: AuthCubit.get(context).note,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 62.h,
                            child: ElevatedButton(
                              onPressed: () {
                                print('Hello ${AuthCubit.get(context).userName.text}');
                              },
                              child: Text(
                                LocaleKeys.signUp.tr().toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
