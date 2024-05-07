import 'package:dio/dio.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/data/dtos/response_dto.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/data/option_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/data/option_list_data.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/option_page_view_model.dart';

class MenuRepository {
  Future<ResponseDTO> fetchMenuOptionList(
      String accessToken, int storeId, int menuId) async {
    final response = await dio.get(
      "/api/stores/${storeId}/menus/${menuId}",
      options: Options(headers: {"Authorization": "${accessToken}"}),
    );

    print('${response}');

    print('아무이상없고요');

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    print('${responseDTO.response.toString()}');

    print('${responseDTO.status} 이거 200이지?');
    print('${responseDTO.errorMessage}');
    if (responseDTO.status == 200) {
      List<dynamic> temp = responseDTO.response["optionList"];
      List<OptionListData> optionList =
          temp.map((e) => OptionListData.fromJson(e)).toList();
      OptionData option = OptionData.fromJson(responseDTO.response);

      MenuOptionModel menuOptionModel =
          MenuOptionModel(option: option, optionList: optionList);
      responseDTO.response = menuOptionModel;
      print('${responseDTO.response}');
    }

    print('repository 이상무@!');
    return responseDTO;
  }
}
