import 'package:pathorder_app/data/repositories/store_repository.dart';

void main() async {
  await fetchStoreLikeList_test();
}

Future<void> fetchStoreLikeList_test() async {
  int userId = 1;
  await StoreRepository().fetchStoreLikeList(
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iuygle2YhCIsImlkIjoyLCJleHAiOjE3MTY1NDE0NzksInVzZXJuYW1lIjoidXNlcjIifQ.lKsTW9WlHreEV3Ovyik-72hoI162ssnV8V8W5uVd8u4MZN2vceUzhW-FgixHaFlWCMhV7y17kNPE6xaUyRebCw',
      userId);
}

Future<void> fetchBusinessInfo_test() async {
  int storeId = 1;
  await StoreRepository().fetchBusinessInfo(
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iu-_veygme-_veyBvSIsImlkIjoyLCJleHAiOjE3MTU1OTkzMDYsInVzZXJuYW1lIjoidXNlcjIifQ.AOBXU0aZifa2R8fAOo-NkHNLqzm3CWgidWUKb0iU_GwLhOD3adRjg2jzFC_jrbUflNkvi1NKATdFw2llQYhjlA',
      storeId);
}

Future<void> fetchLittleStoreList_test() async {
  await StoreRepository().fetchLittleStoreList(
    'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iu-_veygme-_veyBvSIsImlkIjoyLCJleHAiOjE3MTU1OTkzMDYsInVzZXJuYW1lIjoidXNlcjIifQ.AOBXU0aZifa2R8fAOo-NkHNLqzm3CWgidWUKb0iU_GwLhOD3adRjg2jzFC_jrbUflNkvi1NKATdFw2llQYhjlA',
  );
}

Future<void> fetchStoreMenuList_test() async {
  final storeId = 2;

  await StoreRepository().fetchStoreMenuList(
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iu-_veygme-_veyBvSIsImlkIjoyLCJleHAiOjE3MTU1OTkzMDYsInVzZXJuYW1lIjoidXNlcjIifQ.AOBXU0aZifa2R8fAOo-NkHNLqzm3CWgidWUKb0iU_GwLhOD3adRjg2jzFC_jrbUflNkvi1NKATdFw2llQYhjlA',
      storeId);
}

Future<void> fetchStoreDetail_test() async {
  final storeId = 2;

  await StoreRepository().fetchStoreDetail(
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iu-_veygme-_veyBvSIsImlkIjoyLCJleHAiOjE3MTU1OTkzMDYsInVzZXJuYW1lIjoidXNlcjIifQ.AOBXU0aZifa2R8fAOo-NkHNLqzm3CWgidWUKb0iU_GwLhOD3adRjg2jzFC_jrbUflNkvi1NKATdFw2llQYhjlA',
      storeId);
}

Future<void> fetchStoreList_test() async {
  await StoreRepository().fetchStoreList(
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iuygle2YhCIsImlkIjoyLCJleHAiOjE3MTUzMjAxNzcsInVzZXJuYW1lIjoidXNlcjIifQ.ZWuyvZ0zUbJDyDtwEjqIT4X_QXNgkxmtLtDDhQLvlTYBhV5m6lq_HUv4wXs6VqRkOxTQaRyFRrcGu45UxvH1gw');
}
