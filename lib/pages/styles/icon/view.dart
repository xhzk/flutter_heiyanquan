import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class IconPage extends GetView<IconController> {
  const IconPage({super.key});

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // icon
      const TextWidget.label("icon + badge dot"),
      const IconWidget.icon(
        Icons.login,
        size: 24,
        isDot: true,
      ).paddingBottom(20),

      // svg
      const TextWidget.label("svg + badge 99"),
      const IconWidget.svg(
        AssetsSvgs.cHomeSvg,
        size: 24,
        badgeString: "99+",
      ).paddingBottom(20),

      // png
      const TextWidget.label("png + 文字 + 左右"),
      const IconWidget.img(
        AssetsImages.pMastercardPng,
        text: "命令调试",
        size: 24,
      ).paddingBottom(20),

      // png
      const TextWidget.label("png + 文字 + 多行"),
      const IconWidget.img(
        AssetsImages.pMastercardPng,
        text:
            "命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试命令调试",
        size: 24,
        isExpanded: true,
      ).width(200).paddingBottom(20),

      // png
      const TextWidget.label("svg + 文字 + 上下"),
      const IconWidget.svg(
        AssetsSvgs.cHomeSvg,
        text: "计算器",
        size: 24,
        isVertical: true,
      ).paddingBottom(20),

      //
    ].toColumnSpace().center().scrollable();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IconController>(
      init: IconController(),
      id: "icon",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("icon")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
