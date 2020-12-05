import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

class TopVideos extends StatelessWidget {
  const TopVideos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              TopVideosList(
                image: "assets/images/Thumb_Californication.png",
                category: "Californication (Aula de violão co...",
                numOfBrands: "Red Hot Chili Peppers",
                press: () {},
              ),
              TopVideosList(
                image: "assets/images/Thumb_Wake_me_up.png",
                category: "Wake Me Up (Aula de violão simp...",
                numOfBrands: "Avicii",
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(16)),
            ],
          ),
        ),
      ],
    );
  }
}

class TopVideosList extends StatelessWidget {
  const TopVideosList({
    Key key,
    @required this.image,
    @required this.category,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image, numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: press,
            child: SizedBox(
              width: getProportionateScreenWidth(269),
              height: getProportionateScreenWidth(160),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Container(
                      width: getProportionateScreenWidth(269),
                      height: getProportionateScreenWidth(160),
                      child: Image.asset(
                        image,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF343434).withOpacity(0.4),
                            Color(0xFF343434).withOpacity(0.15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "$category\n",
                    style: kStyleSubTitle,
                  ),
                  TextSpan(
                    text: "$numOfBrands",
                    style: kStyleCaption,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
