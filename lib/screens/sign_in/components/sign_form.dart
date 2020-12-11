import 'package:flutter/material.dart';
import 'package:iconsulting/components/form_error.dart';
import 'package:iconsulting/screens/home/home_screen.dart';

import '../../../components/default_button.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            buildPasswordFormField(),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  // onTap: () => Navigator.pushNamed(
                  //     context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "Esqueceu a senha?",
                    style: kStyleSubTitle.copyWith(
                      color: kPrimaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            DefaultButton(
              text: "Entrar",
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      style: kStyleSubTitle,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_rounded, color: kPrimaryColor),
        hintText: "Coloque sua senha",
        hintStyle: kStyleSubTitle.copyWith(
          color: kSecondyColor.withOpacity(0.20),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15),
        fillColor: kSofBackgroundColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: kStyleSubTitle,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_rounded, color: kPrimaryColor),
        hintText: "Digite seu e-mail",
        hintStyle: kStyleSubTitle.copyWith(
          color: kSecondyColor.withOpacity(0.20),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15),
        fillColor: kSofBackgroundColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
