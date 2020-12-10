import 'package:flutter/material.dart';
import 'package:iconsulting/screens/sign_up/sign_up_screen.dart';

import '../style_guide.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Não tem uma conta? ",
          style: kStyleSubTitle.copyWith(color: kSecondyColor),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Inscrever-se",
            style: kStyleSubTitle.copyWith(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
