import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter_heiyanquan',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false),

      // 路由
      initialRoute: RouteNames.systemLogin,
      getPages: RoutePages.list,
    );
  }
}
