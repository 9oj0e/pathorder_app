import 'package:pathorder_app/data/repositories/menu_repository.dart';

void main() async {
  await fetchMenuOptionList_test();
}

Future<void> fetchMenuOptionList_test() async {
  int storeId = 5;
  int menuId = 25;
  await MenuRepository().fetchMenuOptionList(
    'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iu-_veygme-_veyBvSIsImlkIjoyLCJleHAiOjE3MTU1OTkzMDYsInVzZXJuYW1lIjoidXNlcjIifQ.AOBXU0aZifa2R8fAOo-NkHNLqzm3CWgidWUKb0iU_GwLhOD3adRjg2jzFC_jrbUflNkvi1NKATdFw2llQYhjlA',
    storeId,
    menuId,
  );
}
