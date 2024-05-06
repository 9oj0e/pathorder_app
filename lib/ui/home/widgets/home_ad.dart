import 'package:flutter/material.dart';

class HomeAd extends StatelessWidget {
  const HomeAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 125,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            'https://www.sisa-news.com/data/photos/20210205/art_161214153595_ed5d5e.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
