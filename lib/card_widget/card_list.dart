import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/dataset.dart';
import 'card_design.dart';

class CardList extends StatelessWidget {
const CardList({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  // return CardDesign(
  //   card: cards[0],
  // );
  return CarouselSlider.builder(
    itemCount: cards.length,
    itemBuilder: (BuildContext context, int i, int itemIndex) {
      return CardDesign(
        card: cards[itemIndex],
      );
    },
    options: CarouselOptions(
      initialPage: 0,
      enableInfiniteScroll: false,
      enlargeCenterPage: true,
    ),
  );
}
}
