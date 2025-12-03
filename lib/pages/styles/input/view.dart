import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class InputPage extends GetView<InputController> {
  const InputPage({super.key});

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 标准
      InputWidget(
        controller: controller.emailController,
        placeholder: "Email",
      ),

      // 图标
      const InputWidget(
        placeholder: "username",
        prefix: Icon(Icons.person),
        suffix: Icon(Icons.done),
      ),

      // 密码
      const InputWidget(
        placeholder: "password",
        prefix: Icon(Icons.password),
        obscureText: true,
      ),

      // end
    ].toColumnSpace().center().paddingAll(AppSpace.page);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InputController>(
      init: InputController(),
      id: "input",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("input")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
