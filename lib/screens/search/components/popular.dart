import 'package:flutter/material.dart';

import '../../../components/section_title.dart';

import '../../../size_config.dart';

class Popular extends StatelessWidget {
  const Popular({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(16),
          ),
          child: SectionTitle(title: "Categorias", press: () {}),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              PopularItem(
                image: "assets/images/avicii.jpg",
                position: "1",
                name: 'Jorge',
                category: "finanças",
                press: () {},
              ),
              PopularItem(
                image: "assets/images/avicii.jpg",
                position: "2",
                name: 'Jorge',
                category: "finanças",
                press: () {},
              ),
              PopularItem(
                image: "assets/images/avicii.jpg",
                position: "3",
                name: 'Jorge',
                category: "finanças",
                press: () {},
              ),
              PopularItem(
                image: "assets/images/avicii.jpg",
                position: "4",
                name: 'Jorge',
                category: "finanças",
                press: () {},
              ),
              PopularItem(
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

class PopularItem extends StatelessWidget {
  const PopularItem({
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
        children: [
          GestureDetector(
            onTap: press,
            child: SizedBox(
              width: 150,
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 250,
                      child: Image.asset(
                        image,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
