import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/models/user.dart';

class UserRepository {
  Future<ResponseDTO> fetchJoin(JoinReqDTO requestDTO) async {
    final response = await dio.post("/join", data: requestDTO.toJson());

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    return responseDTO;
  }

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
