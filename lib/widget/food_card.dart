import 'package:flutter/material.dart';

import '../constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String caloies;
  final String description;

  const FoodCard({
    Key key,
    this.title,
    this.ingredient,
    this.image,
    this.price,
    this.caloies,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 400,
      width: 270,
      child: Stack(
        // ghi de view tu trong ra ngoai
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              // view do bong
              height: 380,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: kPrimaryColor.withOpacity(0.06),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              // view tron hinh anh
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor.withOpacity(0.15),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: -50,
            child: Container(
              height: 180,
              width: 270,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
          ),
          Positioned(
            top: 80,
            right: 20,
            child: Container(
              child: Text(
                // gia
                "\$ $price",
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: kPrimaryColor),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 40,
            child: Container(
              width: 201,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "With $ingredient",
                    style: TextStyle(color: kTextColor.withOpacity(0.4)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    description,
                    maxLines: 3,
                    style: TextStyle(color: kTextColor.withOpacity(0.7)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(caloies)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}