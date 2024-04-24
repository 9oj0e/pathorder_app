import 'package:flutter/material.dart';

import 'components/menu_list.dart';
import 'components/search_menu.dart';

class AllMenuPage extends StatelessWidget {
  const AllMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("가나다 커피 부산진구점"),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(30.0), // 아래쪽 위젯의 선호 높이를 지정
            child: Container(alignment: Alignment.center, child: SearchMenu())),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MenuList(
              menuNameKor: "아메리카노",
              menuNameEng: "Americano",
              price: 1500,
              imgUrl:
                  "https://viennacoffeehouse.co.kr/data/file/m1/1795031452_xMn1LTkz_295bf7a097571e8a7fad24fd9f90aa5b8453bf46.png",
            ),
            MenuList(
              menuNameKor: "카페라떼",
              menuNameEng: "Cafe Latte",
              price: 1500,
              imgUrl:
                  "https://lh6.googleusercontent.com/proxy/m__2jNIt3ZF5kLXw9aPg4WCvGGBfcMmG4qZHe_wsS1CTjMScIuq7305CymK5Dvb-_LndfqrNVwsBA7eMYPwad_Ghw0-0PK8nehAQlNj1CtgaXbUM",
            ),
            MenuList(
              menuNameKor: "콜드브루",
              menuNameEng: "Cold Brew ",
              price: 1500,
              imgUrl:
                  "https://cdn.imweb.me/upload/S202011028376a98fe86b7/ac9c8d150f3b2.png",
            ),
            MenuList(
              menuNameKor: "딸기라떼",
              menuNameEng: "Strawberry Latte",
              price: 1500,
              imgUrl:
                  "https://www.thecaffe.co.kr/uploadFile/beverage/%EB%8D%94%EB%B8%94%EB%94%B8%EA%B8%B0%EB%9D%BC%EB%96%BC2060910.png",
            ),
            MenuList(
              menuNameKor: "초콜릿라뗴",
              menuNameEng: "Chocolate Latte",
              price: 1500,
              imgUrl:
                  "https://www.thecaffe.co.kr/uploadFile/beverage/%EB%8D%94%EB%B8%94%EC%B4%88%EC%BD%9C%EB%A6%BF%EB%9D%BC%EB%96%BC2061033.png",
            ),
            MenuList(
              menuNameKor: "말차라떼",
              menuNameEng: "Matcha Latte",
              price: 1500,
              imgUrl:
                  "https://viennacoffeehouse.co.kr/data/file/m1/1795031452_ijMIqf7x_c8a2b7f6e88db4ca2c0952f54c0376e34974e6be.png",
            ),
            MenuList(
              menuNameKor: "밀크티",
              menuNameEng: "Milk Tea",
              price: 1500,
              imgUrl:
                  "https://viennacoffeehouse.co.kr/data/file/m1/1795031452_xMn1LTkz_295bf7a097571e8a7fad24fd9f90aa5b8453bf46.png",
            ),
            MenuList(
              menuNameKor: "곡물라떼",
              menuNameEng: "Oatmeal Latte",
              price: 1500,
              imgUrl: "https://www.nelbosco.co.kr/img/product/so07.png",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 90,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.deepOrangeAccent,
          ),
          child: InkWell(
            splashColor: Colors.black,
            borderRadius: BorderRadius.circular(10.0),
            onTap: () {
              // TODO: 주문하기 버튼을 눌렀을 때 수행할 작업
              print('주문하기 버튼이 눌렸습니다.');
            },
            child: Center(
              child: Text(
                "주문하기",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
