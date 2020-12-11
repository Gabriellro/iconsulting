import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
    this.text1,
  }) : super(key: key);
  final String text1, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(text1, style: kStyleDisplay.copyWith(color: kPrimaryColor)),
        Spacer(flex: 1),
        SvgPicture.asset(
          image,
          width: getProportionateScreenWidth(300),
        ),
        Spacer(flex: 1),
        Text(
          text,
          style: kStyleSubTitle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
