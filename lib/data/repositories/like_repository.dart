import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/like_request.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';

class LikeRepository {
  Future<ResponseDTO> fetchLikePost(
      String accessToken, LikeReqDTO reqDTO) async {
    Response response = await dio.post("/api/users/${reqDTO.userId}/likes",
        options: Options(headers: {"Authorization": "${accessToken}"}),
        data: reqDTO.toJson());

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(responseDTO.status);
    Logger().d(responseDTO.response);
    Logger().d(responseDTO.errorMessage);

    return responseDTO;
  }

  Future<ResponseDTO> fetchLikeDelete(
      String accessToken, LikeReqDTO reqDTO) async {
    Response response = await dio.delete(
      "/api/users/${reqDTO.userId}/likes",
      options: Options(headers: {"Authorization": "${accessToken}"}),
      data: reqDTO.toJson(),
    );
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(responseDTO.status);
    Logger().d(responseDTO.response);
    Logger().d(responseDTO.errorMessage);
    return responseDTO;
  }
}
