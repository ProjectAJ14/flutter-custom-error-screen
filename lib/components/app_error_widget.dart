import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/screens/splash_screen.dart';
import 'package:flutter_custom_error_screen/utils/assets.dart';
import 'package:flutter_custom_error_screen/utils/routes.dart';
import 'package:flutter_custom_error_screen/utils/sizes.dart';
import 'package:flutter_custom_error_screen/utils/strings.dart';
import 'package:flutter_custom_error_screen/utils/text_styles.dart';

import 'app_button.dart';

class AppErrorWidget extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  final bool isDev;

  const AppErrorWidget({
    Key key,
    @required this.errorDetails,
    this.isDev = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          padding: EdgeInsets.symmetric(horizontal: Sizes.s30),
          constraints: BoxConstraints(maxHeight: screenWidth / Sizes.s2),
          child: ListView(
            children: <Widget>[
              Container(
                height: Sizes.s20,
              ),
              Container(
                child: Image.asset(
                  Assets.logo,
                  fit: BoxFit.contain,
                ),
                height: Sizes.s100,
                width: Sizes.s100,
              ),
              Container(
                height: Sizes.s20,
              ),
              Text(
                Strings.crashFinalTitle,
                style: TextStyles.defaultBold.copyWith(
                  fontSize: FontSize.s20,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: Sizes.s10,
              ),
              Text(
                Strings.crashFinalMessage,
                style: TextStyles.defaultRegular.copyWith(
                  fontSize: FontSize.s18,
                ),
                textAlign: TextAlign.justify,
              ),
              Container(
                height: Sizes.s10,
              ),
              if (isDev)
                Text(
                  '${errorDetails.summary.toString()}',
                  style: TextStyles.defaultBold.copyWith(
                    fontSize: FontSize.s18,
                    color: Colors.red,
                  ),
                ),
              Container(
                height: Sizes.s10,
              ),
              if (isDev)
                Text(
                  "$errorDetails",
                  style: TextStyles.defaultRegular.copyWith(
                    fontSize: FontSize.s13,
                    color: Colors.red,
                  ),
                ),
              AppButton(
                text: Strings.restartApp,
                onTap: () {
                  AppRoutes.makeFirst(context, SplashScreen());
                },
              ),
              Container(
                height: Sizes.s50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
