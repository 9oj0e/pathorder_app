import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/my/profile/widgets/profile_text_button.dart';
import 'package:pathorder_app/ui/my/profile/widgets/profile_text_form.dart';

import '../../../../_core/constants/http.dart';
import '../profile_page_viewmodel.dart';

class ProfileBody extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProfileDetailModel? model = ref.watch(ProfileDetailProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator(color: Colors.deepOrangeAccent,));
    } else{
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Text(
              '프로필 정보',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.network(
                      "${baseUrl +'/upload/'+model.user.imgFilename}",
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
                    // TODO : 프로필 사진 수정 기능 구현 해야함
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
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
}
