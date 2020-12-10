import 'package:flutter/material.dart';

import '../../../components/section_title.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

class Categorias extends StatelessWidget {
  const Categorias({Key key}) : super(key: key);

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
              CategoriasItem(
                image: "assets/images/semana-de-financas.png",
                position: "1",
                category: "Finanças",
                press: () {},
              ),
              CategoriasItem(
                image: "assets/images/avicii.jpg",
                position: "2",
                category: "finanças",
                press: () {},
              ),
              CategoriasItem(
                image: "assets/images/avicii.jpg",
                position: "3",
                category: "finanças",
                press: () {},
              ),
              CategoriasItem(
                image: "assets/images/avicii.jpg",
                position: "4",
                category: "finanças",
                press: () {},
              ),
              CategoriasItem(
                image: "assets/images/avicii.jpg",
                position: "5",
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

class CategoriasItem extends StatelessWidget {
  const CategoriasItem({
    Key key,
    @required this.image,
    @required this.category,
    @required this.press,
    @required this.position,
  }) : super(key: key);

  final String category, image, position;
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
              width: 90,
              height: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Stack(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
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
          SizedBox(height: getProportionateScreenHeight(5)),
          Text(
            category,
            style: kStyleSubCaption,
          ),
          SizedBox(height: getProportionateScreenHeight(5)),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: position == '1' ? kPrimaryColor : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
