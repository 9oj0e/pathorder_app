import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/my/profile/widgets/profile_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _ProfileAppBar(context),
      body: ProfileBody(),
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
