import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://www.dunkindonuts.co.kr/upload/EditUpload/20240130154613133554571.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.6), // 투명도가 있는 검은색
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 55),
                Text(
                  "기다리지 않는 VIP가 되는 법",
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white, // 흰색 텍스트
                  ),
                ),
                Text(
                  "패스오더",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white, // 흰색 텍스트
                  ),
                ),
                SizedBox(height: 190),
                SizedBox(
                  width: 330,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.chat_bubble_fill, color: Colors.black), // 말풍선 아이콘
                        SizedBox(width: 8), // 아이콘과 텍스트 사이의 간격 조절
                        Text(
                          "카카오로 3초만에 로그인",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 330,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.apple, color: Colors.black, size: 34,), // 말풍선 아이콘
                        SizedBox(width: 8), // 아이콘과 텍스트 사이의 간격 조절
                        Text(
                          "Apple로 로그인",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 330,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                      minimumSize: MaterialStateProperty.all<Size>(Size(330, 68)),
                      // 버튼의 최소 크기를 지정합니다.
                      side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(color: Colors.white)), // 테두리 색상을 지정합니다.
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.mail, color: Colors.white), // 말풍선 아이콘
                        SizedBox(width: 8), // 아이콘과 텍스트 사이의 간격 조절
                        Text(
                          "이메일로 로그인",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 55),
                InkWell(
                  child: Text(
                    "이메일로 회원가입하기",
                    style: TextStyle(
                      color: Colors.white, // 흰색 텍스트
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {

                  },
                ),
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 15,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
