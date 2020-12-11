import 'package:flutter/material.dart';
import 'package:iconsulting/screens/sign_in/sing_in_screen.dart';

// This is the best practice
import '../../../size_config.dart';
import '../../../style_guide.dart';
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text1": "Bem-vindo ao iConsulting!",
      "image": "assets/icons/Wellcome.svg",
      "text": "Vamos fazer consutorias!"
    },
    {
      "text1": "Procure Consultores!",
      "image": "assets/icons/Pesquisar.svg",
      "text":
          "Use a guia Pesquisar e procure \nconsultutores de acordo com \nseus filtros"
    },
    {
      "text1": "Assista videos!",
      "image": "assets/icons/videos.svg",
      "text": "Assista cursos de seus consultores \ndiretamente no celular."
    },
    {
      "text1": "Tire duvidas!",
      "image": "assets/icons/chat.svg",
      "text": "Troque mensagens com seus consultores \nde forma rapida."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                  text1: splashData[index]['text1'],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(flex: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 2),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
