import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'like/like_page.dart';
import 'my/my_page.dart';
import 'order_history/order_history_page.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IndexedStack(
        index: _index,
        children: [
          HomePage(),
          OrderHistoryPage(),
          LikePage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.deepOrangeAccent,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.doc_text), // doc_plantext, doc_richtext
          label: '주문내역',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.heart),
          label: '자주가요',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: '아임패써',
        ),
      ],
      onTap: (value) {
        setState(() {
          _index = value;
          print("클릭됨 ${value}");
        });
      },
      currentIndex: _index,
    );
  }
}
