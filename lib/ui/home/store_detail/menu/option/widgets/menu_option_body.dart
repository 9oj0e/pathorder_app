import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/option_page_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_category.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_counting_button.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_name_price.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_select.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_select2.dart';
import 'package:pathorder_app/ui/widgets/custom_divider.dart';

class MenuOptionBody extends ConsumerWidget {
  final List<int> ids;

  MenuOptionBody(this.ids);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MenuOptionModel? model = ref.watch(menuOptionProvider(ids));
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return ListView(
        children: [
          Center(
            child: Image.network(
              // TODO: 이미지 파일 넣기
              // '${model.option.menuImgFilename}'
              "https://viennacoffeehouse.co.kr/data/file/m1/1795031452_xMn1LTkz_295bf7a097571e8a7fad24fd9f90aa5b8453bf46.png",
              height: 280,
              fit: BoxFit.cover,
            ),
          ),
          MenuOptionNamePrice(
            // menuName: "${model.option.menuName}",
            menuName: "${model.option.menuName}",
            price: "${model.option.menuPrice}원",
          ),
          SizedBox(height: 15),
          MenuOptionCountingButton(), // 수량 버튼
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuOptionCategory(optionCategory: "필수옵션"),
                SizedBox(height: 13),
                ListView.builder(
                  shrinkWrap: true, // ListView의 크기를 내부 컨텐츠에 맞춤
                  physics: NeverScrollableScrollPhysics(), //내부 리스트뷰 스크롤 동작 비활성화
                  itemCount: model.optionList.length,
                  itemBuilder: (context, index) {
                    return MenuOptionSelect(
                      optionName: "${model.optionList[index].name}",
                      price: '${model.optionList[index].price}',
                      required: model.optionList[index].required,
                    );
                  },
                ),
                CustomDivider(),
                SizedBox(height: 15),
                MenuOptionCategory(optionCategory: "선택 옵션"),
                SizedBox(height: 13),
                ListView.builder(
                  shrinkWrap: true, // ListView의 크기를 내부 컨텐츠에 맞춤
                  physics: NeverScrollableScrollPhysics(), //내부 리스트뷰 스크롤 동작 비활성화
                  itemCount: model.optionList.length,
                  itemBuilder: (context, index) {
                    return MenuOptionSelect2(
                      optionName: "${model.optionList[index].name}",
                      price: '${model.optionList[index].price}',
                      required: model.optionList[index].required,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
