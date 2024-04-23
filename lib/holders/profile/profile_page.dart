import 'package:flutter/material.dart';

import 'components/profile_text_button.dart';
import 'components/profile_text_form.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _ProfileAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Text(
              '프로필 정보',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      "https://picsum.photos/id/1/200/200",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // TODO : 프로필 사진 수정 기능 구현 해야함
                  },
                  child: Text(
                    '프로필 사진 수정',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ProfileTextForm(),
            SizedBox(height: 20),
            Text(
              '계정 정보',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ProfileTextButton(text: '계정 관리'),
            SizedBox(height: 10),
            ProfileTextButton(text: '결제 비밀번호 설정'),
          ],
        ),
      ),
    );
  }

  AppBar _ProfileAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          size: 18,
        ),
      ),
      title: Text(
        "프로필 수정",
        style: TextStyle(fontSize: 16),
      ),
      centerTitle: true,
      actions: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text(
                '완료',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                width: 16,
              )
            ],
          ),
        )
      ],
    );
  }
}
