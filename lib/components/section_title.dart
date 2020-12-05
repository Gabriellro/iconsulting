import 'package:flutter/material.dart';

import '../style_guide.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kStyleTitle,
        ),
        GestureDetector(
          onTap: press,
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward_rounded,
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
