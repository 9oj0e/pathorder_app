import 'package:dio/dio.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/ui/order_history/data/order_list.dart';
import 'package:pathorder_app/ui/order_history/order_history_page_viewmodel.dart';

class OrderRepository {
  Future<ResponseDTO> fetchOrderHistory(int userId, String accessToken) async {
    // 통신
    Response response = await dio.get("/api/users/${userId}/orders",
        options: Options(headers: {"Authorization": "$accessToken"}));

    // 응답 받은 데이터 파싱
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    if (responseDTO.status == 200) {
      List<dynamic> responseList = responseDTO.response["orderList"];
      List<OrderList> orderList =
          responseList.map((e) => OrderList.fromJson(e)).toList();

      OrderHistoryModel orderHistoryModel = OrderHistoryModel(orderList);
      responseDTO.response = orderHistoryModel;
      print("orderList : ${orderList[0].totalPrice}");
    }

    return responseDTO;
  }
//
// Future<ResponseDTO> fetchDetailOrder(
//     String accessToken, int userId, int orderId) async {
//   Response response = await dio.get("/api/users/${userId}/orders/${orderId}",
//       options: Options(headers: {"Authorization": "${accessToken}"}));
//   ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
//
//   if (responseDTO.status == 200) {
//     List<dynamic> temp = responseDTO.response["orderMenuList"];
//     List<OrderDetailList> orderDetailList =
//         temp.map((e) => OrderDetailList.fromJson(e)).toList();
//
//     OrderDetail orderDetail = OrderDetail.fromJson(responseDTO.response);
//
//     DetailPageModel detailPageModel = DetailPageModel(
//         orderDetail: orderDetail, orderDetailList: orderDetailList);
//     responseDTO.response = detailPageModel;
//   }
//
//   return responseDTO;
// }
}
