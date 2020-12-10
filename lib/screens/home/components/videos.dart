import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../size_config.dart';
import '../../../style_guide.dart';

class Videos extends StatelessWidget {
  const Videos({Key key}) : super(key: key);

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
                url: "https://www.youtube.com/embed/UbAINENoixI",
                category: "Como sair da NEGAÇÃO! Desligando o Pi...",
                numOfBrands: "Gestão Empresarial",
                press: () {},
              ),
              TopVideosList(
                url: "https://www.youtube.com/embed/8S1wVS8Zzdg",
                category: "10 Dicas infalíveis para a gestão fi",
                numOfBrands: "Primo Rico",
                press: () {},
              ),
              TopVideosList(
                url: "https://www.youtube.com/embed/m4OkPp18K-M",
                category: "10 Dicas infalíveis para a gestão fi",
                numOfBrands: "Primo Rico",
                press: () {},
              ),
              TopVideosList(
                url: "https://www.youtube.com/embed/GZZBey8bhnc",
                category: "10 Dicas infalíveis para a gestão fi",
                numOfBrands: "Jogos",
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
    @required this.url,
    @required this.category,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, url, numOfBrands;
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
              width: getProportionateScreenWidth(266),
              height: getProportionateScreenWidth(150),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Container(
                      width: getProportionateScreenWidth(269),
                      height: getProportionateScreenWidth(160),
                      child: WebView(
                        initialUrl: url,
                        javascriptMode: JavascriptMode.unrestricted,
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
