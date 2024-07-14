import 'package:flutter/material.dart';
import 'package:newsapp_task7/models/Cardsmodel.dart';
import 'package:newsapp_task7/widgets/Card.dart';

class Cardlistview extends StatelessWidget {
  Cardlistview({super.key});
  final List<CardModel> cardslist = [
    CardModel(image: 'assets/images/news.png', title: 'creypto investors should be prepared to lose all thier money'),
    CardModel(image: 'assets/images/news.png', title: 'business'),
    CardModel(image: 'assets/images/news.png', title: 'business'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          itemCount: cardslist.length,
          itemBuilder: (context, index) {
            return ImageCard(aspectRaito: 3 / 2, card: cardslist[index]);
          }),
    );
  }
}
