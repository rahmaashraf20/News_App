import 'package:flutter/material.dart';
import 'package:newsapp_task7/models/Cardsmodel.dart';
import 'package:newsapp_task7/widgets/Card.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key});
  final List<CardModel> cardslist = [
    CardModel(image: 'assets/images/news.png', title: 'business'),
    CardModel(image: 'assets/images/news.png', title: 'business'),
    CardModel(image: 'assets/images/news.png', title: 'business'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        itemCount: cardslist.length,
        itemBuilder: (context, index) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.21,
              child: ImageCard(
                aspectRaito: 5 / 3,
                card: cardslist[index],
              ));
        });
  }
}
