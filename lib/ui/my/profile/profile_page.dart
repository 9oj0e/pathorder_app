import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/my/profile/widgets/profile_body.dart';

class ProfilePage extends StatelessWidget {
  int id;

  ProfilePage(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _ProfileAppBar(context),
      body: ProfileBody(id),
    );
  }

  AppBar _ProfileAppBar(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Divider(
          thickness: 0.5,
          height: 0.5,
          color: Colors.grey[300],
        ),
      ),
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
        style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
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
                style: TextStyle(fontSize: 14.5, ),
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
