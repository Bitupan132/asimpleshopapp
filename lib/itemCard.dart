import 'package:flutter/material.dart';
import 'package:new_shop_app/constants.dart';
import 'package:new_shop_app/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function onpress;

  ItemCard({this.product, this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(15),
              ),
              child:
                  Hero(tag: "${product.id}", child: Image.asset(product.image)),
              //hero widget for animation, need a tag okay
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 5)),
          Text(
            '${product.title}',
            style: TextStyle(color: kTextLightColor),
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(color: kTextColor),
          ),
        ],
      ),
    );
  }
}
