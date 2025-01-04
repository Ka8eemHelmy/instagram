import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram2/view/screens/food_prohect/register/register_screen.dart';
import 'package:instagram2/view/screens/layout/layout_screen.dart';
import 'package:instagram2/view_model/theme/dark_theme.dart';
import 'package:instagram2/view_model/theme/light_theme.dart';
import 'package:instagram2/view_model/theme/light_theme_food.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: lightThemeFoodApp,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          // home: LayoutScreen(),
          home: child,
        );
      },
      child: const RegisterScreen(),
    );
  }
}
