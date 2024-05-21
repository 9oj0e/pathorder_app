import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/ui/my/profile/widgets/profile_text_button.dart';
import 'package:pathorder_app/ui/my/profile/widgets/profile_text_form.dart';

import '../../../../_core/constants/http.dart';
import '../profile_page_viewmodel.dart';

class ProfileBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProfileDetailModel? model = ref.watch(ProfileDetailProvider);

    if (model == null) {
      return Center(
          child: CircularProgressIndicator(
        color: Colors.deepOrangeAccent,
      ));
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              '프로필 정보',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.network(
                      "${baseUrl + '/upload/' + model.user.imgFilename}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
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
                              File? _selectedImage;
                              final pickedImage = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              if (pickedImage != null) {
                                _selectedImage = File(pickedImage.path);
                                // print("경로 : ${pickedImage.path}");

                                // 선택한 파일을 바이트로 읽어옴
                                List<int> imageBytes =
                                    await _selectedImage.readAsBytes();
                                // 바이트를 base64로 인코딩
                                String base64Image = base64Encode(imageBytes);
                                // 인코딩된 이미지를 사용하여 RegisterImgReqDTO를 생성
                                RegisterImgReqDTO reqDTO = RegisterImgReqDTO(
                                    username: model.user.id,
                                    encodedImg: base64Image);
                                // 업로드된 이미지를 서버에 전송하는 로직
                                ref
                                    .watch(ProfileDetailProvider.notifier)
                                    .notifyAddImage(reqDTO);
                              }

                              Navigator.pop(context);
                            },
                            child: const Text(
                              '사진 선택하기',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () async {
                              // 카메라로 사진 촬영 기능 구현
                              final pickedImage = await ImagePicker()
                                  .pickImage(source: ImageSource.camera);
                              if (pickedImage != null) {
                                // 촬영한 이미지 파일을 File 객체로 가져옴
                                File _selectedImage = File(pickedImage.path);
                                // print("저장경로 : ${pickedImage.path}");

                                // 선택한 파일을 바이트로 읽어옴
                                List<int> imageBytes =
                                    await _selectedImage.readAsBytes();
                                // 바이트를 base64로 인코딩
                                String base64Image = base64Encode(imageBytes);
                                // 인코딩된 이미지를 사용하여 RegisterImgReqDTO를 생성
                                RegisterImgReqDTO reqDTO = RegisterImgReqDTO(
                                    username: model.user.id,
                                    encodedImg: base64Image);
                                // 업로드된 이미지를 서버에 전송하는 로직
                                ref
                                    .watch(ProfileDetailProvider.notifier)
                                    .notifyAddImage(reqDTO);

                                Navigator.pop(context); // 액션 시트 닫기
                              }
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
                  child: Text(
                    '프로필 사진 수정',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(height: 28),
            ProfileTextForm(model.user), // 텍스트폼 !!
            Divider(
              thickness: 1.5, // 두께 조절
              color: Colors.grey[200], // 색상 조절
              height: 60,
            ),
            Text(
              '계정 정보',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),

            SizedBox(height: 25),
            ProfileTextButton(text: '계정 관리'),
            SizedBox(height: 15),
            ProfileTextButton(text: '결제 비밀번호 설정'),
          ],
        ),
      );
    }
  }

// void _showActionSheet(BuildContext context) {
//   showCupertinoModalPopup<void>(
//     context: context,
//     builder: (BuildContext context) => CupertinoActionSheet(
//       title: const Text('프로필 사진 수정'),
//       message: const Text('사진을 선택하거나 새로 촬영하세요'),
//       actions: <CupertinoActionSheetAction>[
//         CupertinoActionSheetAction(
//           onPressed: () async {
//             // TODO: 갤러리에서 사진 선택 기능 구현
//             File? _selectedImage;
//             final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
//             if(pickedImage != null){
//               _selectedImage = File(pickedImage.path);
//               ref.watch(profileProvider).updateImage(_selectedImage);
//             }
//
//             Navigator.pop(context);
//           },
//           child: const Text('사진 선택하기', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
//         ),
//         CupertinoActionSheetAction(
//           onPressed: () {
//             // TODO: 카메라로 사진 촬영 기능 구현
//             ImagePicker().pickImage(source: ImageSource.camera).then((value) { // 카메라 호출 &  사진 찍기
//               if(value != null && value.path != null){
//                 print("저장경로 : ${value.path}");
//
//                 GallerySaver.saveImage(value.path).then((value){ // 갤러리에 사진 저장
//                   print("사진이 저장되었습니다.");
//                 });
//               }
//             });
//             Navigator.pop(context);
//           },
//           child: const Text('사진 촬영하기', style: TextStyle(color: Colors.blue)),
//         ),
//       ],
//       cancelButton: CupertinoActionSheetAction(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         isDefaultAction: true,
//         child: const Text('취소', style: TextStyle(color: Colors.redAccent)),
//       ),
//     ),
//   );
// }
}
