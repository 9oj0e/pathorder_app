import 'package:flutter/material.dart';

class StoreDetailTitle extends StatelessWidget {
  final String name;

  StoreDetailTitle(this.name);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '${name}',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
