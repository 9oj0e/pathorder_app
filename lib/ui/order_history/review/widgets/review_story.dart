import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewStory extends StatelessWidget {
  const ReviewStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      width: 115,
      height: 25,
      child: Center(
        child: Text(
          "스토리가 뭔가요?",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black87),
        ),
      ),
    );
  }
}