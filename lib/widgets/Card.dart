import 'package:flutter/material.dart';
import 'package:newsapp_task7/models/Cardsmodel.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.card, required this.aspectRaito});
  final CardModel card;
  final double aspectRaito;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: AspectRatio(
        aspectRatio: aspectRaito,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(card.image), fit: BoxFit.fill)),
            child: Center(
                child: Text(
              card.title,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ))),
      ),
    );
  }
}
