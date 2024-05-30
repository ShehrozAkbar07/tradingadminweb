import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:trading_web_app_admin/View/create_account.dart';
import 'package:trading_web_app_admin/View/dashboard/assets/assets.dart';
import 'package:trading_web_app_admin/View/dashboard/dashboard.dart';
import 'package:trading_web_app_admin/View/dashboard/trade_management/trade_management.dart';
import 'package:trading_web_app_admin/View/login_account.dart';

class AppRoutes {
  static const String splash = "/";
  static const String createaccount = "/createaccount";
  static const String dashboard = "/dashboard";
  static const String loginaaccount = "/loginaaccount";
  static const String trademanagement = "/trademanagement";
  static const String assets = "/assets";

  static List<GetPage> appRoutes = [
    GetPage(name: createaccount, page: () => const CreateAccount()),
    GetPage(name: loginaaccount, page: () => const LoginAccount()),
    GetPage(name: dashboard, page: () => const Dashboard()),
    GetPage(name: trademanagement, page: () => const TradeManagement()),
    GetPage(name: assets, page: () => const Assets()),
  ];
}
