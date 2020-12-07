import 'package:flutter/material.dart';

import '../../../components/section_title.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

class TopCosultores extends StatelessWidget {
  const TopCosultores({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(16),
          ),
          child: SectionTitle(title: "Top Consultores", press: () {}),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              TopCosultoresItem(
                image: "assets/images/avicii.jpg",
                position: "1",
                name: 'Jorge',
                category: "finanças",
                press: () {},
              ),
              TopCosultoresItem(
                image: "assets/images/avicii.jpg",
                position: "2",
                name: 'Jorge',
                category: "finanças",
                press: () {},
              ),
              TopCosultoresItem(
                image: "assets/images/avicii.jpg",
                position: "3",
                name: 'Jorge',
                category: "finanças",
                press: () {},
              ),
              TopCosultoresItem(
                image: "assets/images/avicii.jpg",
                position: "4",
                name: 'Jorge',
                category: "finanças",
                press: () {},
              ),
              TopCosultoresItem(
                image: "assets/images/avicii.jpg",
                position: "5",
                name: 'Jorge',
                category: "finanças",
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

class TopCosultoresItem extends StatelessWidget {
  const TopCosultoresItem({
    Key key,
    @required this.image,
    @required this.category,
    @required this.name,
    @required this.press,
    @required this.position,
  }) : super(key: key);

  final String name, category, image, position;
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
              width: 110,
              height: 110,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(100),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      child: Image.asset(
                        image,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      left: getProportionateScreenWidth(8),
                      bottom: getProportionateScreenWidth(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(100),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              color: kPrimaryColor,
                              child: Center(
                                child: Text(
                                  position,
                                  style: kStyleSubTitle.copyWith(
                                      color: kSofBackgroundColor),
                                ),
                              ),
                            ),
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
            padding: EdgeInsets.only(top: getProportionateScreenHeight(10)),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "$name\n",
                    style: kStyleSubTitle,
                  ),
                  TextSpan(
                    text: "$category",
                    style: kStyleSubCaption.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
