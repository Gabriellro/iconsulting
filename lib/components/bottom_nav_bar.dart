import 'package:flutter/material.dart';

import '../style_guide.dart';

class BottomNavBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;
  BottomNavBar({
    this.defaultSelectedIndex = 0,
    @required this.iconList,
    @required this.onChange,
  });

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width / _iconList.length - 20,
        decoration: index == _selectedIndex
            ? BoxDecoration(color: Colors.transparent)
            : BoxDecoration(color: Colors.transparent),
        child: Icon(
          icon,
          color: index == _selectedIndex ? kPrimaryColor : kSecondyColor20,
        ),
      ),
    );
  }
}
