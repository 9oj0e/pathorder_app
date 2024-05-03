import 'package:pathorder_app/data/dtos/user_request.dart';
import 'package:pathorder_app/data/repositories/user_repository.dart';

void main() async {
  await fetchLogin_test();
}

Future<void> fetchLogin_test() async {

  LoginReqDTO reqDTO = LoginReqDTO(username: "user1", password: "1234");

  await UserRepository().fetchLogin(reqDTO);
}