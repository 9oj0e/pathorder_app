import 'package:pathorder_app/data/repositories/store_repository.dart';

void main() async {
  await fetchStoreDetail_test();
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

