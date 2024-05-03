import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/models/user.dart';
import '../../../data/dtos/response_dto.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/store/session_store.dart';
import '../../../main.dart';

class ProfileDetailModel {
  User user;

  ProfileDetailModel(this.user);
}

class ProfileDetailViewModel extends StateNotifier<ProfileDetailModel?> {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  ProfileDetailViewModel(super.state, this.ref);

  Future<void> notifyInit() async {
    SessionStore sessionStore = ref.read(sessionProvider);
    String jwt = sessionStore.accessToken!;

    ResponseDTO responseDTO = await UserRepository().fetchMyProfile(
        sessionStore.user!.id, jwt);

    print("뷰모델 : ${responseDTO.status}");
    if (responseDTO.status == 200) {
      state = ProfileDetailModel(responseDTO.response);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(
              content: Text("프로필 정보 보기 실패 : ${responseDTO.errorMessage}")));
    }
  }
}

  final ProfileDetailProvider =
  StateNotifierProvider<ProfileDetailViewModel, ProfileDetailModel?>((ref) {
    return ProfileDetailViewModel(null, ref)
      ..notifyInit();
  });