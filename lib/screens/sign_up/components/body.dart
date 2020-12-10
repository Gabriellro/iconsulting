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
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SvgPicture.asset("assets/icons/Grupo 3.svg"),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  'Ao continuar, você confirma que concorda \n com nosso Termo e Condição',
                  textAlign: TextAlign.center,
                  style: kStyleCaption.copyWith(color: kSecondyColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
