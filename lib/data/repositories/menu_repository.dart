import 'package:dio/dio.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/data/option_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/data/option_list_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/option_page_view_model.dart';

class MenuRepository {
  Future<ResponseDTO> fetchMenuOptionList(
      String accessToken, int storeId, int menuId) async {
    Response response = await dio.get(
      "/api/stores/${storeId}/menus/${menuId}",
      options: Options(headers: {"Authorization": "${accessToken}"}),
    );

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    if (responseDTO.status == 200) {
      List<dynamic> temp = responseDTO.response["optionList"];
      List<OptionListData> optionList =
          temp.map((e) => OptionListData.fromJson(e)).toList();
      OptionData option = OptionData.fromJson(responseDTO.response);

      MenuOptionModel menuOptionModel =
          MenuOptionModel(option: option, optionList: optionList);
      responseDTO.response = menuOptionModel;
      //
      // print('"storeId": ${menuOptionModel.option.storeId}');
      // print('"storeName": ${option.storeName}');
      // print('"menuId":${option.menuId}');
      // print('"menuName":${option.menuName}');
      // print('"menuImgFilename":${option.menuImgFilename}');
      // print('"menuPrice":${option.menuPrice}');
      //
      // print('"optionList.id":${menuOptionModel.optionList[0].id}');
      // print('"optionList.name":${optionList[0].name}');
      // print('"optionList.price":${optionList[0].price}');
      // print('"optionList.required":${optionList[0].required}');
    }
    // 1. responseDTO.response 데이터 체크
    // Logger().d(responseDTO.response.option.menuName);
    // Logger().d(responseDTO.response.optionList[0].name);
    return responseDTO;
  }
}
