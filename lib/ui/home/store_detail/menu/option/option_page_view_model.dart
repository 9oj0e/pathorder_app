import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/menu_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/data/option_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/data/option_list_data.dart';

class MenuOptionModel {
  OptionData option;
  List<OptionListData> optionList;

  MenuOptionModel({required this.option, required this.optionList});
}

class MenuOptionViewModel extends StateNotifier<MenuOptionModel?> {
  Ref ref;

  MenuOptionViewModel(super.state, this.ref);

  Future<void> notifyInit(List<int> ids) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO = await MenuRepository()
        .fetchMenuOptionList(sessionStore.accessToken!, ids[0], ids[1]);

    print('${responseDTO.response} 뭐고 여기는 올까요요요오오');
    // 상태값 갱신 (새로 new해서 넣어줘야 한다)
    state = responseDTO.response;
    print('${state}');

    print('여기 안오겠네 그러면');
  }
}

// 화면이 stack 에서 제거될때, 창고도 함께 제거되게 하기 (autoDispose)
final menuOptionProvider = StateNotifierProvider.family<MenuOptionViewModel,
    MenuOptionModel?, List<int>>((ref, ids) {
  return MenuOptionViewModel(null, ref)..notifyInit(ids);
});
