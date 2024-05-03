import 'package:pathorder_app/data/repositories/store_repository.dart';

void main() async {
  await fetchStoreList_test();
}

Future<void> fetchStoreList_test() async {
  await StoreRepository().fetchStoreList(
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iuygle2YhCIsImlkIjoyLCJleHAiOjE3MTUzMjAxNzcsInVzZXJuYW1lIjoidXNlcjIifQ.ZWuyvZ0zUbJDyDtwEjqIT4X_QXNgkxmtLtDDhQLvlTYBhV5m6lq_HUv4wXs6VqRkOxTQaRyFRrcGu45UxvH1gw');
}
