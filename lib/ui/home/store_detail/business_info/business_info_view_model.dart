import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/repositories/store_repository.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/home/store_detail/business_info/data/business_info_data.dart';

class BusinessInfoModel {
  BusinessInfoData businessInfo;

  BusinessInfoModel(this.businessInfo);
}

class BusinessInfoViewModel extends StateNotifier<BusinessInfoModel?> {
  Ref ref;

  BusinessInfoViewModel(super.state, this.ref);

  Future<void> notifyInit(int storeId) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO = await StoreRepository()
        .fetchBusinessInfo(sessionStore.accessToken!, storeId);

    // 상태값 갱신 (새로 new해서 넣어줘야 한다)
    state = BusinessInfoModel(responseDTO.response);
  }
}

// 화면이 stack 에서 제거될때, 창고도 함께 제거되게 하기 (autoDispose)
final businessInfoProvider = StateNotifierProvider.autoDispose
    .family<BusinessInfoViewModel, BusinessInfoModel?, int>((ref, storeId) {
  return BusinessInfoViewModel(null, ref)..notifyInit(storeId);
});
