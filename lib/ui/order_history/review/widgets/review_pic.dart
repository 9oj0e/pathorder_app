import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/store/review_store.dart';
import 'package:pathorder_app/ui/order_history/review/review_page_view_model.dart';

class ReviewPic extends ConsumerWidget {
  ReviewPic({this.selectedImage});

  File? selectedImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ReviewStore reviewStore = ref.watch(ReviewStoreProvider);
    // ReviewModel? model = ref.watch(ReviewProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "사진 등록이 필요해요",
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        SizedBox(
          height: 17,
        ),
        GestureDetector(
          onTap: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('프로필 사진 수정'),
                message: const Text('사진을 선택하거나 새로 촬영하세요'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    onPressed: () async {
                      // 갤러리에서 사진 선택 기능

                      final pickedImage = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (pickedImage != null) {
                        selectedImage = File(pickedImage.path);
                        print("경로 : ${pickedImage.path}");

                        // 선택한 파일을 바이트로 읽어옴
                        List<int> imageBytes =
                            await selectedImage!.readAsBytes();
                        // 바이트를 base64로 인코딩
                        String base64Image = base64Encode(imageBytes);
                        reviewStore.setImgFilename(base64Image);


                      }

                      Navigator.pop(context);
                    },
                    child: const Text(
                      '사진 선택하기',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () async {
                      // 카메라로 사진 촬영 기능 구현
                      final pickedImage = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      if (pickedImage != null) {
                        // 촬영한 이미지 파일을 File 객체로 가져옴
                        File selectedImage = File(pickedImage.path);
                        print("저장경로 : ${pickedImage.path}");

                        // 선택한 파일을 바이트로 읽어옴
                        List<int> imageBytes =
                            await selectedImage.readAsBytes();
                        // 바이트를 base64로 인코딩
                        String base64Image = base64Encode(imageBytes);
                        reviewStore.setImgFilename(base64Image);
                      }
                      Navigator.pop(context); // 액션 시트 닫기
                    },
                    child: const Text('사진 촬영하기',
                        style: TextStyle(color: Colors.blue)),
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isDefaultAction: true,
                  child: const Text('취소',
                      style: TextStyle(color: Colors.redAccent)),
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey[300] ?? Colors.transparent,
                width: 1,
              ),
            ),
            width: 80,
            height: 80,
            child: selectedImage != null
                ? Image.memory(
                    base64Decode(reviewStore.encodedData!), // TODO : 리뷰 사진
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  )
                : Icon(
                    CupertinoIcons.camera_fill,
                    color: Colors.grey[400],
                    size: 20,
                  ),
          ),
        ),
      ],
    );
  }
}
