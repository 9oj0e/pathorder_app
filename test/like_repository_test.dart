import 'package:pathorder_app/data/dtos/like_request.dart';
import 'package:pathorder_app/data/repositories/like_repository.dart';

void main() async {
  await fetchLikePost_test();
}

Future<void> fetchLikePost_test() async {
  int storeId = 5;
  int userId = 1;
  LikeReqDTO reqDTO = LikeReqDTO(userId, storeId);
  await LikeRepository().fetchLikePost(
    'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iu-_veygme-_veyBvSIsImlkIjoyLCJleHAiOjE3MTU1OTkzMDYsInVzZXJuYW1lIjoidXNlcjIifQ.AOBXU0aZifa2R8fAOo-NkHNLqzm3CWgidWUKb0iU_GwLhOD3adRjg2jzFC_jrbUflNkvi1NKATdFw2llQYhjlA',
    reqDTO,
  );
}
