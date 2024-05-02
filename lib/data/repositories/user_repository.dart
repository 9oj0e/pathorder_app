import '../../_core/constants/http.dart';
import '../dtos/response_dto.dart';
import '../dtos/user_request.dart';
import '../models/user.dart';

class UserRepository {

  Future<(ResponseDTO, String)> fetchLogin(LoginReqDTO loginReqDTO) async {
    final response = await dio.post("/login", data: loginReqDTO.toJson());

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    if (responseDTO.status == 200) {
      responseDTO.response = User.fromJson(responseDTO.response);
      final accessToken = response.headers["Authorization"]!.first;

      return (responseDTO, accessToken);
    } else {
      return (responseDTO, "");
    }
  }
}
