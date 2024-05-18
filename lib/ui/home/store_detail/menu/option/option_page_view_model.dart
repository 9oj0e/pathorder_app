import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/menu_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/main.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/data/option_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/data/option_list_data.dart';

class MenuOptionModel {
  OptionData option;
  List<OptionListData> optionList;

  MenuOptionModel({required this.option, required this.optionList});
}

class MenuOptionViewModel extends StateNotifier<MenuOptionModel?> {
  final mContext = navigatorKey.currentContext;
  Ref ref;

  MenuOptionViewModel(super.state, this.ref);

  Future<void> notifyInit(ids) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO = await MenuRepository()
        .fetchMenuOptionList(sessionStore.accessToken!, ids[0], ids[1]);
    // 상태값 갱신
    if (responseDTO.status == 200) {
      state = responseDTO.response;
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("메뉴 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

final menuOptionProvider = StateNotifierProvider.autoDispose
    .family<MenuOptionViewModel, MenuOptionModel?, List<int>>((ref, ids) {
  return MenuOptionViewModel(null, ref)..notifyInit(ids);
});
