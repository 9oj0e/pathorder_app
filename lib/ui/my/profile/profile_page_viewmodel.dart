import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/models/user.dart';

import '../../../data/dtos/response_dto.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/store/session_store.dart';

class ProfileDetailModel {
  User user;

  ProfileDetailModel(this.user);
}

class ProfileDetailViewModel extends StateNotifier<ProfileDetailModel?> {
  Ref ref;
  ProfileDetailViewModel(super.state, this.ref);

  Future<void> notifyInit(int id) async {
    // 통신하기
    SessionStore sessionStore = ref.read(sessionProvider);
    ResponseDTO responseDTO =
    await UserRepository().fetchMyPage(sessionStore.accessToken!, id);

    // 상태값 갱신 (새로 new해서 넣어줘야 한다)
    state = ProfileDetailModel(responseDTO.response);
  }
}

// 화면이 stack 에서 제거될때, 창고도 함께 제거되게 하기 (autoDispose)
final profileDetailProvider = StateNotifierProvider.autoDispose
    .family<ProfileDetailViewModel, ProfileDetailModel?, int>((ref, postId) {
  return ProfileDetailViewModel(null, ref)..notifyInit(postId);
});