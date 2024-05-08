import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
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

  Future<ResponseDTO> fetchMyProfile(int userId, String accessToken) async {
    // 통신
    Response response = await dio.get("/api/users/${userId}",
        options: Options(headers: {"Authorization": "$accessToken"}));

    // 응답 받은 데이터 파싱
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    print("응답 데이터 ${responseDTO.response}");
    print("응답 데이터 ${responseDTO.status}");

    if (responseDTO.status == 200) {
      responseDTO.response = User.fromJson(responseDTO.response);
    }

    return responseDTO;
  }

  // 사진 등록
  Future<ResponseDTO> fetchImage(int userId, RegisterImgReqDTO registerImgReqDTO, String accessToken) async {
    final response = await dio.post("/api/users/${userId}", options: Options(headers: {"Authorization": "${accessToken}"}), data: registerImgReqDTO.toJson());

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    if (responseDTO.status == 200) {
      responseDTO.response = User.fromJson(responseDTO.response);
      Logger().d(responseDTO.response);
    }

    return responseDTO;
  }

  // Future<ResponseDTO> updateMyProfile(int userId, MyProfileUpdateReqDTO myProfileUpdateReqDTO, String accessToken) async {
  //   // 통신
  //   Response response = await dio.get("/api/users/${userId}",
  //       options: Options(headers: {"Authorization": "$accessToken"}));
  //
  //   // 응답 받은 데이터 파싱
  //   ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  //
  //   if (responseDTO.status == 200) {
  //     responseDTO.response = User.fromJson(responseDTO.response);
  //   }
  //
  //   return responseDTO;
  // }
}
