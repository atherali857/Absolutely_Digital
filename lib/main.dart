import 'package:absolutely_digital_test/utils/screen_utils.dart';
import 'package:absolutely_digital_test/utils/size_config.dart';
import 'package:absolutely_digital_test/views/list_of_users.dart';
import 'package:absolutely_digital_test/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.getInstance()..init(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return BottomNav(index: 0);
          },
        );
      },
    );
  }
}
