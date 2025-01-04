import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram2/my_app.dart';
import 'package:instagram2/view_model/utils/app_assets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      path: AppAssets.translations,
      // <-- change the path of the translation files
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

/// Use This Line To Run Code Generation for Easy Localization
/// flutter pub run easy_localization:generate -S asset/translations -O lib/view_model/translations -o locale_keys.g.dart -f keys