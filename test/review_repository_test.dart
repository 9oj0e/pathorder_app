import 'package:pathorder_app/data/repositories/review_repository.dart';

void main() async {
  await storeReviewList_test();
}

Future<void> storeReviewList_test() async {
  int storeId = 1;
  await ReviewRepository().storeReviewList(
    'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwYXRob3JkZXIiLCJuaWNrbmFtZSI6Iuygle2YhCIsImlkIjoyLCJleHAiOjE3MTY1NDE0NzksInVzZXJuYW1lIjoidXNlcjIifQ.lKsTW9WlHreEV3Ovyik-72hoI162ssnV8V8W5uVd8u4MZN2vceUzhW-FgixHaFlWCMhV7y17kNPE6xaUyRebCw',
    storeId,
  );
}
