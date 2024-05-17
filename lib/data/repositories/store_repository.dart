import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/data/models/store.dart';
import 'package:pathorder_app/ui/home/data/home_store_data.dart';
import 'package:pathorder_app/ui/home/home_page_view_model.dart';
import 'package:pathorder_app/ui/home/near_me_store/store_list_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/business_info/data/business_info_data.dart';

class StoreRepository {
  Future<ResponseDTO> fetchBusinessInfo(String accessToken, int storeId) async {
    final response = await dio.get(
      "/api/stores/${storeId}/biz-info",
      options: Options(headers: {"Authorization": "${accessToken}"}),
    );

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(response.data);
    if (responseDTO.status == 200) {
      responseDTO.response = BusinessInfoData.fromJson(responseDTO.response);
    }

    return responseDTO;
  }

  Future<ResponseDTO> fetchStoreMenuList(
      String accessToken, int storeId) async {
    final response = await dio.get(
      "/api/stores/${storeId}/menus",
      options: Options(headers: {"Authorization": "${accessToken}"}),
    );

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    if (responseDTO.status == 200) {
      responseDTO.response = Store.fromJson(responseDTO.response);
    }

    return responseDTO;
  }

  Future<ResponseDTO> fetchStoreDetail(String accessToken, int storeId) async {
    final response = await dio.get(
      "/api/stores/${storeId}",
      options: Options(headers: {"Authorization": "${accessToken}"}),
    );

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    if (responseDTO.status == 200) {
      responseDTO.response = Store.fromJson(responseDTO.response);
    }

    return responseDTO;
  }

  Future<ResponseDTO> fetchStoreList(String accessToken, {int page = 0}) async {
    final response = await dio.get(
      "/api/stores",
      queryParameters: {"page": page},
      options: Options(headers: {"Authorization": "${accessToken}"}),
    );

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    if (responseDTO.status == 200) {
      List<dynamic> temp = responseDTO.response;
      List<Store> stores = temp.map((e) => Store.fromJson(e)).toList();

      StoreListModel storeListModel = StoreListModel(stores);
      responseDTO.response = storeListModel;
    }

    return responseDTO;
  }

  Future<ResponseDTO> fetchLittleStoreList(String accessToken,
      {int page = 0}) async {
    final response = await dio.get(
      "/api/stores",
      queryParameters: {"page": page},
      options: Options(headers: {"Authorization": "${accessToken}"}),
    );

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    if (responseDTO.status == 200) {
      List<dynamic> temp = responseDTO.response;
      List<HomeStoreData> stores =
          temp.map((e) => HomeStoreData.fromJson(e)).toList();

      HomePageModel storeListModel = HomePageModel(stores);
      responseDTO.response = storeListModel;
    }

    return responseDTO;
  }
}
