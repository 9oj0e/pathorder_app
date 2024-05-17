import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/utils/validator_util.dart';
import 'package:pathorder_app/ui/order_history/review/widgets/review_pic.dart';
import 'package:pathorder_app/ui/order_history/review/widgets/review_text_form_field.dart';

import 'grey_blank.dart';
import 'review_bottom.dart';
import 'review_store_name.dart';
import 'review_story.dart';

class ReviewBody extends StatelessWidget {
  final storeName;
  final storeAddress;

  ReviewBody({required this.storeName, required this.storeAddress});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReviewStoreName(storeName: storeName, storeAddress: storeAddress),
                SizedBox(
                  height: 8,
                ),
                ReviewStory(),
                SizedBox(
                  height: 30,
                ),
                ReviewPic(), // 리뷰 사진
                SizedBox(
                  height: 30,
                ),
                Text.rich(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  TextSpan(
                    text: 'Q ',
                    style: TextStyle(color: Colors.deepOrangeAccent),
                    children: <TextSpan>[
                      TextSpan(
                        text: '해당 지점의 서비스가 마음에 드셨나요?',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[300] ?? Colors.transparent,
                      width: 1,
                    ),
                  ),
                  width: double.infinity,
                  height: 150,
                    child: ReviewTextFormField(
                      // 리뷰입력창
                      validator: validateReview(),
                    ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          GreyBlank(),
          SizedBox(
            height: 25,
          ),
          review_bottom()
        ],
      ),
    );
  }
}





