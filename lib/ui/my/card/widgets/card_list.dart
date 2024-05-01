import 'package:flutter/material.dart';
import 'package:pathorder_app/models/card_menu.dart';

class CardList extends StatelessWidget {
  final List<CardMenu> cardMenuList;

  CardList({required this.cardMenuList});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: List.generate(
            cardMenuList.length,
            (index) => _buildRowCardItem(
              cardMenuList[index].title,
              cardMenuList[index].imageUrl,
              index,
              context,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRowCardItem(
      String title, String imageUrl, int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        height: 50,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
