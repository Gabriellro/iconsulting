import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsulting/components/no_account_text.dart';
import 'package:iconsulting/components/social_card.dart';

import '../../../size_config.dart';
import 'Header.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Header(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SvgPicture.asset(
                "assets/icons/sign_in.svg",
                width: getProportionateScreenWidth(200),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.09),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              NoAccountText(),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
