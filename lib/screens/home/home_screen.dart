import 'package:flutter/material.dart';
import 'package:iconsulting/components/bottom_nav_bar.dart';
import 'package:iconsulting/screens/search/search_screen.dart';
import 'package:iconsulting/style_guide.dart';

import '../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: unused_field
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(
        iconList: [
          Icons.explore_rounded,
          Icons.forum_rounded,
          Icons.account_circle_rounded,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.person_search_rounded,
          size: 28,
        ),
        onPressed: () => Navigator.pushNamed(context, SearchScreen.routeName),
        backgroundColor: kPrimaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
