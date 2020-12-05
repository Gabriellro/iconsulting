import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';
import 'header.dart';
import 'top_cosultores.dart';
import 'top_videos.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(5)),
            Header(),
            SizedBox(height: getProportionateScreenHeight(10)),
            Stack(
              children: [
                Container(
                  height: 970,
                  decoration: BoxDecoration(
                    color: kSofBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TopVideos(),
                    SizedBox(height: getProportionateScreenHeight(15)),
                    TopCosultores(),
                    SizedBox(height: getProportionateScreenHeight(15)),
                    SizedBox(height: getProportionateScreenHeight(15)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
