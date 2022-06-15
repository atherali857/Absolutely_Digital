import 'package:absolutely_digital_test/utils/image_utils.dart';
import 'package:absolutely_digital_test/utils/size_config.dart';
import 'package:absolutely_digital_test/views/list_of_users.dart';
import 'package:absolutely_digital_test/views/users_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

import '../views/favorite_list.dart';
import 'my_curved_nav_bar.dart';

class BottomNav extends StatefulWidget {
  int index;
  BottomNav({required this.index, Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentIndex = 0;
  Widget body = ListOfUsers();//MapScreen();

  @override
  void initState() {
    currentIndex = widget.index;
    onClick(currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(child: body),
            ),
            MyCurvedNavBar(
              barIconColor: Colors.red,
              selectedIconColor: Colors.white,
              color: Colors.white,
              buttonBackgroundColor: Colors.red,
              index: currentIndex,
              animationCurve: Curves.ease,
              animationDuration: Duration(milliseconds: 300),
              height: SizeConfig.heightMultiplier * 8,
              //backgroundColor: Colors.redAccent,
              parentDecoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color(0xFFefefef),
                    blurRadius: 3 * SizeConfig.imageSizeMultiplier,
                    offset: Offset(0, -10))
              ]),
              items: <String>[
                ImageUtils.home,
                ImageUtils.profileIcon,

              ],
              onTap: (index) {
                currentIndex = index;
                //MainView(index: 3,);
                onClick(currentIndex);
                setState(() {});
              },
            ),
            /*CurvedNavigationBar(
            backgroundColor: ColorUtils.transparent,
            buttonBackgroundColor: ColorUtils.text_red,
            items: <Widget>[
              SvgPicture.asset(ImageUtils.homeIcon),
              SvgPicture.asset(ImageUtils.chatIcon),
              SvgPicture.asset(ImageUtils.swipeIcon, color: ColorUtils.black),
              SvgPicture.asset(ImageUtils.mapIcon),
              SvgPicture.asset(ImageUtils.profileIcon),
            ],
            onTap: (index) {
              //Handle button tap
              onClick(index);
            },
          ),*/
            //BottomBar(index: currentIndex, onClick: onClick)
          ],
        ),
      ),
    );
  }

  onClick(int selectedIndex) {
    setState(() {
      currentIndex = selectedIndex;
      switch (currentIndex) {
        case 0:
          body = ListOfUsers();
          break;
        case 1:
          body = FavoriteList();
          break;
      }
    });
  }
}
