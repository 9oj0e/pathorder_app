import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/dtos/review_request.dart';

class ReviewRepository {
  Future<ResponseDTO> storeReviewList(String accessToken, int storeId) async {
    final response = await dio.get("/api/stores/${storeId}/reviews",
        options: Options(headers: {"Authorization": "${accessToken}"}));

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(responseDTO);
    return responseDTO;
  }

  Future<ResponseDTO> saveReview(
    int storeId,
    ReviewReqDTO reviewReqDTO,
    String accessToken,
  ) async {
    final response = await dio.post("/api/stores/${storeId}/reviews",
        options: Options(headers: {"Authorization": "${accessToken}"}),
        data: reviewReqDTO.toJson());

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    return responseDTO;
  }
}
