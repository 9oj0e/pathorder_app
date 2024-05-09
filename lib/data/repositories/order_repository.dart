import 'package:dio/dio.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/models/user.dart';


class OrderRepository {
  Future<ResponseDTO> fetchOrderHistory(int userId, String accessToken) async {
    // 통신
    Response response = await dio.get("/api/users/${userId}/orders",
        options: Options(headers: {"Authorization": "$accessToken"}));

    // 응답 받은 데이터 파싱
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    if (responseDTO.status == 200) {
      responseDTO.response = User.fromJson(responseDTO.response);
    }

    return responseDTO;
  }
}