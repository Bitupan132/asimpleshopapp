import 'package:flutter/material.dart';
import 'package:new_shop_app/category.dart';
import 'package:new_shop_app/constants.dart';
import 'package:new_shop_app/product.dart';
import 'itemCard.dart';

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          //Women text
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 3),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Category(),
        Expanded(
            //gridview
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
              //ItemCard for each item.
              product: products[index],
              onpress: () => Navigator.push(
                  //go to details page
                  context,
                  MaterialPageRoute(builder: (context) => null)),
            ),
          ),
        ))
      ],
    );
  }
}
