import 'package:flutter/material.dart';

import '../../../components/section_title.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

class TopConsultores extends StatelessWidget {
  const TopConsultores({Key key}) : super(key: key);

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
              TopConsultoresItem(
                image: "assets/images/image.jpg",
                position: "1",
                name: 'Claudio Jr.',
                category: "Construção",
                press: () {},
              ),
              TopConsultoresItem(
                image: "assets/images/image (1).jpg",
                position: "2",
                name: 'Jorge Rod...',
                category: "finanças",
                press: () {},
              ),
              TopConsultoresItem(
                image: "assets/images/image (2).jpg",
                position: "3",
                name: 'Roberto Rod...',
                category: "Tecnologia da Infor...",
                press: () {},
              ),
              TopConsultoresItem(
                image: "assets/images/image (3).jpg",
                position: "4",
                name: 'Judith Claudin...',
                category: "Fotografa",
                press: () {},
              ),
              TopConsultoresItem(
                image: "assets/images/image (4).jpg",
                position: "5",
                name: 'Audira Atira',
                category: "Segurança",
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

class TopConsultoresItem extends StatelessWidget {
  const TopConsultoresItem({
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
