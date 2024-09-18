import 'package:chat_charm_website/src/core/theme/app_theme.dart';
import 'package:chat_charm_website/src/core/utils/constants.dart';
import 'package:chat_charm_website/src/features/dashboard/dashboard.dart';
import 'package:chat_charm_website/src/features/mobile/view/page/mobile_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.websiteName,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: lightTheme,
        darkTheme: darkTheme,

      home: Dashboard()
    );
  }
}

