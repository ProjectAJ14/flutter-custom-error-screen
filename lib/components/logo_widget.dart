import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/utils/assets.dart';
import 'package:flutter_custom_error_screen/utils/sizes.dart';
import 'package:flutter_custom_error_screen/utils/strings.dart';

class AppLogoWidget extends StatelessWidget {
  final double size;
  final String image;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const AppLogoWidget(
      {Key key, this.margin, this.padding, this.size, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: AppStrings.appName,
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        padding: padding ?? EdgeInsets.all(Sizes.s10),
        child: Image(
          image: AssetImage(image ?? Assets.logo),
          height: size ?? Sizes.defaultImageHeight,
          width: size ?? Sizes.defaultImageHeight,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
