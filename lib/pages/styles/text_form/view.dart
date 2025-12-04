import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class TextFormPage extends GetView<TextFormController> {
  const TextFormPage({super.key});

  // 主视图
  Widget _buildView() {
    return Form(
        key: controller.formKey,
        child: <Widget>[
          // 账号
          InputFormFieldWidget(
            labelText: "账号",
            tipText: "输入账号或者登录Email",
            controller: controller.usernameController,
            placeholder: "请输入账号",
            prefix: const Icon(Icons.person),
            suffix: const Icon(Icons.done),
          ),

          // 密码
          InputFormFieldWidget(
            labelText: "密码",
            tipText: "密码长度需要大于6位",
            controller: controller.passwordController,
            placeholder: "请输入密码",
            prefix: const Icon(Icons.password),
            obscureText: true,
          ),

          // 提交按钮
          <Widget>[
            ButtonWidget.primary("提交", onTap: () {
              if (controller.formKey.currentState!.validate()) {
                Get.snackbar("Form", "submit");
              }
            }),
            ButtonWidget.secondary("返回", onTap: () => Get.back()),
          ].toRowSpace(
            mainAxisSize: MainAxisSize.min,
          ),

          // end
        ].toColumnSpace(
          crossAxisAlignment: CrossAxisAlignment.start,
        )).paddingAll(AppSpace.page).scrollable();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextFormController>(
      init: TextFormController(),
      id: "text_form",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("text_form")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
