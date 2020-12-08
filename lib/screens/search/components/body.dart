import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

import 'Header.dart';
import 'categorias.dart';
import 'popular.dart';

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
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Encontre o seu consultor!",
                style: kStyleTitle.copyWith(color: kPrimaryColor),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: buildSearchField(),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Popular(),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Categorias(),
            ],
          ),
        ),
      ),
    );
  }

  TextField buildSearchField() {
    return TextField(
      style: kStyleSubTitle,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_rounded, color: kPrimaryColor),
        hintText: "Pesquise...",
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
