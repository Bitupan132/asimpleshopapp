import 'package:flutter/material.dart';
import 'app_body.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), //buildAppBar function returns the appbar
      body: AppBody(), //AppBody class builds app body
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.keyboard_backspace_rounded,
        size: kIconSize,
      ),
      onPressed: null,
    ),
    title: Text(
      'SHOPP',
      style: TextStyle(color: kTextColor, fontWeight: FontWeight.w300),
    ),
    centerTitle: true,
    actions: [
      IconButton(
          icon: Icon(
            Icons.search_rounded,
            size: kIconSize,
            color: kTextColor,
          ),
          onPressed: null),
      IconButton(
          icon: Icon(
            Icons.shopping_bag_sharp,
            size: kIconSize,
            color: kTextColor,
          ),
          onPressed: null),
      SizedBox(
        width: kDefaultPadding / 2,
      ),
    ],
  );
}
