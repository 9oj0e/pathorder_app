import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/order_request.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/data/payment_header_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/data/payment_list_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/payment/payment_page_view_model.dart';

class OrderRepository {
  Future<ResponseDTO> fetchSaveOrder(
      String accessToken, OrderReqDTO reqDTO, int userId) async {
    Response response = await dio.post("/api/users/${userId}/orders",
        options: Options(headers: {"Authorization": "${accessToken}"}),
        data: reqDTO.toJson());
    Logger().d(response.data);
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    if (responseDTO.status == 200) {
      List<dynamic> temp = responseDTO.response["orderMenuList"];
      List<PaymentListData> paymentList =
          temp.map((e) => PaymentListData.fromJson(e)).toList();
      PaymentHeaderData paymentHeader =
          PaymentHeaderData.fromJson(responseDTO.response);

      PaymentModel paymentModel =
          PaymentModel(paymentHeader: paymentHeader, paymentList: paymentList);
      responseDTO.response = paymentModel;

      Logger().d(paymentModel.paymentHeader.customerId);
      Logger().d(paymentModel.paymentHeader.customerNickname);
      Logger().d(paymentModel.paymentList[0].name);
      Logger().d(paymentModel.paymentList[0].orderMenuOptionList[0].name);
    }

    return responseDTO;
  }
}
