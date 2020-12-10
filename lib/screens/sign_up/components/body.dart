import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsulting/style_guide.dart';

import '../../../size_config.dart';
import 'Header.dart';
import 'sign_up_form.dart';

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
              SvgPicture.asset("assets/icons/Grupo 3.svg"),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Ao clicar em continuar, você confirma que \n  ',
                      style: kStyleCaption.copyWith(
                        color: kSecondyColor,
                      ),
                    ),
                    TextSpan(
                      text: ' concorda com nosso ',
                      style: kStyleCaption.copyWith(
                        color: kSecondyColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Termo e Condição',
                      style: kStyleCaption.copyWith(
                        color: kSecondyColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
