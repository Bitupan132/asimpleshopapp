import 'package:flutter/material.dart';
import 'package:new_shop_app/constants.dart';

// we need stateful widget for our category list widget
class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> categories = [
    'Hand Bags',
    'Jewellery',
    'Footwear',
    'Watches',
    'Dresses'
  ];
  int selectedIndex = 0; //by default bags selected.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: kcategoryBoxSize,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index
                      ? Colors.teal.shade900
                      : kTextLightColor),
            ),
            Container(
              decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(40)),
              height: 2.4,
              width: 30.0,
              margin: EdgeInsets.only(top: kDefaultPadding / 5),
            )
          ],
        ),
      ),
    );
  }
}
