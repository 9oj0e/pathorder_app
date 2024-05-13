import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/option_page_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_check.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_counting_button.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_name_price.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_radio.dart';
import 'package:pathorder_app/ui/widgets/custom_divider.dart';

class MenuOptionBody extends ConsumerWidget {
  final List<int> ids;
  final imgUrl;

  MenuOptionBody(this.ids, this.imgUrl);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MenuOptionModel? model = ref.watch(menuOptionProvider(ids));
    SessionStore sessionStore = ref.read(sessionProvider);
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      sessionStore.name = model.option.menuName;
      sessionStore.price = model.option.menuPrice;
      sessionStore.qty = 1;
      sessionStore.menuOptionList.clear();
      return ListView(
        children: [
          Center(
            child: Image.network(
              // TODO: 이미지 파일 넣기
              // '${model.option.menuImgFilename}'
              '${baseUrl}/upload/${imgUrl}',
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
          MenuOptionCountingButton(sessionStore), // 수량 버튼
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuOptionRadio(model, sessionStore),
                CustomDivider(),
                SizedBox(height: 13),
                MenuOptionCheck(model, sessionStore),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      );
    }
  }
}
