import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/routers/names.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        children: [
          const HelloWidget(),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteNames.systemSplash);
            },
            child: const Text("跳转 splash"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
            appBar: AppBar(title: const Text("login")), body: _buildView());
      },
    );
  }
}
