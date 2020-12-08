import 'package:flutter/material.dart';
import 'package:iconsulting/style_guide.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        Icon(
          Icons.report_problem_rounded,
          color: Colors.red,
          size: 14,
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(
          error,
          style: kStyleSubCaption.copyWith(color: kSecondyColor),
        ),
      ],
    );
  }
}
