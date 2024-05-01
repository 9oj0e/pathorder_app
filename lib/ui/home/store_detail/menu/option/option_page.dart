import 'package:flutter/material.dart';

import 'widgets/menu_option_category.dart';
import 'widgets/menu_option_counting_button.dart';
import 'widgets/menu_option_name_price.dart';
import 'widgets/menu_option_select.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("가나다 커피 부산진구점"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  "https://viennacoffeehouse.co.kr/data/file/m1/1795031452_xMn1LTkz_295bf7a097571e8a7fad24fd9f90aa5b8453bf46.png",
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MenuOptionNamePrice(
                          menuName: "더치 아메리카노",
                          price: "1500원",
                        ),
                        SizedBox(height: 15),
                        MenuOptionCountingButton(), // 수량 버튼
                        SizedBox(height: 15),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MenuOptionCategory(optionCategory: "필수옵션"),
                                SizedBox(height: 13),
                                MenuOptionSelect(
                                  optionName: "HOT",
                                  price: "0원",
                                ),
                                MenuOptionSelect(
                                  optionName: "ICE",
                                  price: "0원",
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300], // 수평선의 색상 설정
                          thickness: 1, // 수평선의 두께 설정
                          height: 10, // 수평선의 높이 설정
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MenuOptionCategory(optionCategory: "선택옵션"),
                                SizedBox(height: 13),
                                MenuOptionSelect(
                                  optionName: "디카페인 변경",
                                  price: "+500원",
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300], // 수평선의 색상 설정
                          thickness: 1, // 수평선의 두께 설정
                          height: 10, // 수평선의 높이 설정
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MenuOptionCategory(optionCategory: "추가옵션"),
                                SizedBox(height: 13),
                                MenuOptionSelect(
                                    optionName: "1샷 추가", price: "+500원"),
                                MenuOptionSelect(
                                    optionName: "2샷 추가", price: "+1000원"),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300], // 수평선의 색상 설정
                          thickness: 1, // 수평선의 두께 설정
                          height: 10, // 수평선의 높이 설정
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        // TODO : widgets
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
              Navigator.pop(context);
              // TODO: 담기버튼 눌리면 장바구니에 담겨야함
              print('담기 버튼이 눌렸습니다.');
            },
            child: Center(
              child: Text(
                "1500원 담기",
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
