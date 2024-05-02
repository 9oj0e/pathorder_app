import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/models/user.dart';

class UserRepository {
  Future<(ResponseDTO, String)> fetchLogin(LoginReqDTO loginReqDTO) async {
    final response = await dio.post("/login", data: loginReqDTO.toJson());

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    if (responseDTO.status == 200) {
      print('아아아아아아아아아아아 ㄹ${responseDTO.response}');
      responseDTO.response = User.fromJson(responseDTO.response);
      print('어러러러러러러러러러');
      final accessToken = response.headers["Authorization"]!.first;

      print('오브젝ㅇ트르르르를르르르');
      return (responseDTO, accessToken);
    } else {
      return (responseDTO, "");
    }
  }
}
