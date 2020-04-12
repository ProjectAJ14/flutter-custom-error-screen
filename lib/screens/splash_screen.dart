import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/components/logo_widget.dart';
import 'package:flutter_custom_error_screen/screens/login/login_screen.dart';
import 'package:flutter_custom_error_screen/utils/constants.dart';
import 'package:flutter_custom_error_screen/utils/routes.dart';
import 'package:flutter_custom_error_screen/utils/sizes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AfterLayoutMixin<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirectUser();
  }

  _redirectUser() {
    Future.delayed(Duration(milliseconds: Constants.delayMilliseconds), () {
      AppRoutes.makeFirst(context, LoginScreen());
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Sizes.setScreenAwareConstant(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: AppLogoWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
