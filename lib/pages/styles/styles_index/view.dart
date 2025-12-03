import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class StylesIndexPage extends GetView<StylesIndexController> {
  const StylesIndexPage({super.key});

  // 主视图
  Widget _buildView() {
    return Column(children: [
      // 语言
      ListTile(
        onTap: controller.onLanguageSelected,
        title: Text(
          "语言 : ${ConfigService.to.locale.toLanguageTag()}",
        ),
      ),

      // 主题
      ListTile(
        onTap: () => controller.onThemeSelected("light"),
        title: Text("亮色 :  ConfigService.to.themeMode}"),
      ),
      ListTile(
        onTap: () => controller.onThemeSelected("dark"),
        title: Text("暗色 :  ConfigService.to.themeMode}"),
      ),
      ListTile(
        onTap: () => controller.onThemeSelected("system"),
        title: Text("系统 :  ConfigService.to.themeMode}"),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StylesIndexController>(
      init: StylesIndexController(),
      id: "styles_index",
      builder: (_) {
        return Scaffold(
          // appBar: AppBar(title: const Text("styles_index")),
          appBar: AppBar(title: Text(LocaleKeys.stylesTitle.tr)),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
