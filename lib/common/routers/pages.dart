import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/routers/observers.dart';
import 'package:flutter_heiyanquan/pages/index.dart';
import 'package:get/get.dart';

import 'names.dart';

class RoutePages {
  // 观察者
  static final RouteObserver<Route> observer = RouteObservers();
  // 历史记录
  static List<String> history = [];

  // 列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.systemLogin,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteNames.systemSplash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteNames.systemMain,
      page: () => const MainPage(),
    ),
  ];
}
