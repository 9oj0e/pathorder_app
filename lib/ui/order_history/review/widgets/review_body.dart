import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/utils/validator_util.dart';
import 'package:pathorder_app/ui/order_history/review/widgets/review_text_form_field.dart';

class ReviewBody extends StatelessWidget {
  final storeName;
  final storeAddress;
  final _formKey = GlobalKey<FormState>();
  final _review = TextEditingController();

  ReviewBody({required this.storeName, required this.storeAddress});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${storeName} ${storeAddress}\n후기를 작성해 주세요",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[300],
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
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
