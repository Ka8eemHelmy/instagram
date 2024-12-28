import 'package:flutter/material.dart';
import 'package:instagram2/view/screens/layout/layout_screen.dart';
import 'package:instagram2/view_model/theme/dark_theme.dart';
import 'package:instagram2/view_model/theme/light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: LayoutScreen(),
    );
  }
}
