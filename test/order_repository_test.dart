import 'package:pathorder_app/data/dtos/order_request.dart';
import 'package:pathorder_app/data/repositories/order_repository.dart';

void main() async {
  await fetchSaveOrder_test();
}

Future<void> fetchSaveOrder_test() async {
  OrderMenuOptionList orderMenuOptionList1 =
      OrderMenuOptionList(name: '헤이즐넛시럽', price: 1500);
  OrderMenuOptionList orderMenuOptionList2 =
      OrderMenuOptionList(name: 'hot', price: 0);
  OrderMenuOptionList orderMenuOptionList3 =
      OrderMenuOptionList(name: '코코아파우더', price: 500);

  final orderMenuOptionLists1 = [orderMenuOptionList1];
  final orderMenuOptionLists2 = [orderMenuOptionList2, orderMenuOptionList3];

  OrderMenuList orderMenuList1 = OrderMenuList(
      name: '아메리카노',
      price: 3000,
      qty: 1,
      orderMenuOptionList: orderMenuOptionLists1);
  OrderMenuList orderMenuList2 = OrderMenuList(
      name: '아메리카노',
      price: 3000,
      qty: 2,
      orderMenuOptionList: orderMenuOptionLists2);
  final orderMenuLists = [orderMenuList1, orderMenuList2];

  OrderReqDTO orderReqDTO = OrderReqDTO(
    storeId: 1,
    storeName: '단밤 카페',
    customerId: 2,
    customerNickname: '정현',
    request: '설탕 많이 주세요',
    orderMenuList: orderMenuLists,
  );

  await OrderRepository().fetchSaveOrder(
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iu-_veygme-_veyBvSIsImlkIjoyLCJleHAiOjE3MTU1OTkzMDYsInVzZXJuYW1lIjoidXNlcjIifQ.AOBXU0aZifa2R8fAOo-NkHNLqzm3CWgidWUKb0iU_GwLhOD3adRjg2jzFC_jrbUflNkvi1NKATdFw2llQYhjlA',
      orderReqDTO,
      1);
}
