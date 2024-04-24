import 'package:flutter/material.dart';

import 'menu_count.dart';

class CountingButton extends StatelessWidget {
  const CountingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[100],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "수량",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              MenuCount(),
            ],
          ),
        )
    );
  }
}