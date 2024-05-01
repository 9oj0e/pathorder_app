import 'package:flutter/cupertino.dart';
import 'package:pathorder_app/ui/order_history/detail/detail_page.dart';
import '../../ui/home/home_page.dart';
import '../../ui/home/near_me_store/near_me_store_page.dart';
import '../../ui/home/store_detail/menu/menu_page.dart';
import '../../ui/home/store_detail/menu/option/option_page.dart';
import '../../ui/home/store_detail/menu/payment/payment_page.dart';
import '../../ui/home/store_detail/store_detail_page.dart';
import '../../ui/like/like_page.dart';
import '../../ui/login_method/join/join_page.dart';
import '../../ui/login_method/login/login_page.dart';
import '../../ui/login_method/login_method_page.dart';
import '../../ui/my/card/card_page.dart';
import '../../ui/my/my_page.dart';
import '../../ui/my/profile/profile_page.dart';
import '../../ui/order_history/order_history_page.dart';

class Move {
  // login_method
  static String loginMethod = "/login";
  static String loginId = "/login/id"; // 아이디로 로그인하기
  static String join = "/join";

  // home
  static String home = "/home";
  static String nearMeStore = "/home/store";
  static String storeDetail = "/store/detail";
  static String allMenu = "/store/menu";
  static String menuOption = "/store/option";
  static String payment = "/store/payment";

  // order_history
  static String orderHistory = "/user/order/history";
  static String orderDetail = "/user/order/detail";

  // like
  static String like = "/user/like";

  // my
  static String my = "/user/my";
  static String myProfile = "/user/my/profile";
  static String myCard = "/user/my/card";

}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    // login_method
    Move.loginMethod: (context) => const LoginMethodPage(),
    Move.loginId: (context) => const LoginPage(), // 아이디로 로그인하기
    Move.join: (context) => JoinPage(),

    // home
    Move.home: (context) => const HomePage(),
    Move.nearMeStore: (context) => const NearMeStorePage(),
    Move.storeDetail: (context) => StoreDetailPage(),
    Move.allMenu: (context) => const AllMenuPage(),
    Move.menuOption: (context) => const OptionPage(),
    Move.payment: (context) => const PaymentPage(),

    // order_history
    Move.orderHistory: (context) => const OrderHistoryPage(),
    Move.orderDetail: (context) => const DetailPage(),

    // like
    Move.like: (context) => const LikePage(),

    // my
    Move.my: (context) => const MyPage(),
    Move.myProfile: (context) => const ProfilePage(),
    Move.myCard: (context) => const CardPage(),
  };
}
