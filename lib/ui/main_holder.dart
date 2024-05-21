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
  var loadPages = [0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          loadPages.contains(0) ? const HomePage() : Container(),
          loadPages.contains(1) ? const OrderHistoryPage() : Container(),
          loadPages.contains(2) ? const LikePage() : Container(),
          loadPages.contains(3) ? const MyPage() : Container(),
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
        var pages = loadPages;

        if (!pages.contains(value)) {
          // 아직 열리지 않았다면!!
          pages.add(value);
          // print(pages);
        }

        pages = loadPages;
        setState(() {
          _index = value;
        });
      },
      currentIndex: _index,
    );
  }
}
