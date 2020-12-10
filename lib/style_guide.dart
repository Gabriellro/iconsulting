import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// Cores //
const kPrimaryColor = Color(0xFF00368F);
const kSecondyColor = Color(0xFF000000);
const kBackgroundColor = Color(0xFFFAFAFA);
const kSofBackgroundColor = Color(0xFFF4F4F4);

// Estilos de caracteres
const kStyleDisplay2 = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: 29,
  fontWeight: FontWeight.w700,
  color: kPrimaryColor,
);

const kStyleDisplay = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: 26,
  fontWeight: FontWeight.w700,
  color: kPrimaryColor,
);

const kStyleTitle = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: 21,
  fontWeight: FontWeight.w700,
  color: kSecondyColor,
);

const kStyleSubTitle = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: kSecondyColor,
);

const kStyleCaption = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: kPrimaryColor,
);

const kStyleSubCaption = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: kSecondyColor,
);

// animações
const kAnimationDuration = Duration(milliseconds: 200);

const defaultDuration = Duration(milliseconds: 250);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Digite o seu e-mail";
const String kInvalidEmailError = "Digite um e-mail válido";
const String kPassNullError = "Por favor, insira sua senha";
const String kShortPassError = "A senha é muito curta";
const String kMatchPassError = "As senhas não coincidem";
