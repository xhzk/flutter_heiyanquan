import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class StylesIndexPage extends GetView<StylesIndexController> {
  const StylesIndexPage({super.key});

  // 主视图
  Widget _buildView() {
    return Column(children: [
      // 多语言
      ListTile(
        onTap: controller.onLanguageSelected,
        title: Text(
          "语言 : ${ConfigService.to.locale.toLanguageTag()}",
        ),
      ),

      // 主题
      ListTile(
        onTap: controller.onThemeSelected,
        title: Text("主题 : ${ConfigService.to.isDarkModel ? "Dark" : "Light"}"),
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
