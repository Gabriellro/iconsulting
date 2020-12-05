import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'iConsulting',
              style: kStyleDisplay,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none_rounded,
              color: kSecondyColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
