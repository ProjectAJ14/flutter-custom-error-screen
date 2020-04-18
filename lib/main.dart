import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/screens/splash_screen.dart';
import 'package:flutter_custom_error_screen/utils/colors.dart';

import 'components/app_error_widget.dart';

void main() {
  // In dev mode, show error details
  // In release builds, show a only custom error message
  bool isDev = true;

  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return AppErrorWidget(
      errorDetails: errorDetails,
      isDev: isDev,
    );
  };

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Error Screen',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(primaryColor: AppColors.primary),
    );
  }
}
