import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/utils/validator_util.dart';
import 'package:pathorder_app/ui/order_history/review/widgets/review_text_form_field.dart';

import 'grey_blank.dart';

class ReviewBody extends StatelessWidget {
  final storeName;
  final storeAddress;
  final _formKey = GlobalKey<FormState>();
  final _review = TextEditingController();

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
                Text(
                  "${storeName} ${storeAddress}\n후기를 작성해 주세요",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
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
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "사진 등록이 필요해요",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[300] ?? Colors.transparent,
                      width: 1,
                    ),
                  ),
                  width: 80,
                  height: 80,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.camera_fill,
                        color: Colors.grey[400],
                        size: 20,
                      ),
                    ],
                  ),
                ),
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
                  child: Stack(
                    children: [
                      Form(
                        key: _formKey,
                        child: ReviewTextFormField(
                          // 리뷰입력창
                          controller: _review,
                          validator: validateReview(),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 7, // 조정하여 원하는 위치에 텍스트를 배치합니다.
                        child: Text(
                          '패써님의 리뷰가 다른 패써님의 음료선택에\n큰 도움이 되어요.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ],
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '"작성하기"를 누르기 전 한 번 더 확인해 주세요❗️',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '- 다른 매장에서 찍었던 음료사진이 첨부되는 않았나요?',
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
                Text(
                  '- 오늘 구매한 음료나 매장과 전혀 관련 없는 내용으로 작성되지 않았나요?',
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
                Text(
                  '- 패써님들이 작성해 주신 내용을 매일 사장님들이 확인하고 있어요.',
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
                Text(
                  ' 근거 없는 악성 비방글은 삼가 부탁드립니다.',
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
