import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class ButtonPage extends GetView<ButtonController> {
  const ButtonPage({super.key});

  // 主视图
  Widget _buildView(BuildContext context) {
    return <Widget>[
      // primary
      ButtonWidget.primary(
        "四角尖",
        borderRadius: 0,
        elevation: 0,
        onTap: () {},
        width: 200,
      ),

      // primary
      ButtonWidget.primary("primary", onTap: () {}),

      // secondary
      ButtonWidget.secondary("secondary", onTap: () {}),

      // destructive
      ButtonWidget.destructive("destructive", onTap: () {}),

      // outline
      ButtonWidget.outline("outline", onTap: () {}),

      // ghost
      ButtonWidget.ghost("ghost", onTap: () {}),

      // link
      ButtonWidget.link("link", onTap: () {}),

      // enabled
      const ButtonWidget.primary("enabled = false"),

      // width 200
      ButtonWidget.primary(
        "width = 200",
        onTap: () {},
        width: 200,
      ),

      // primary
      ButtonWidget.primary("primary",
          icon: Icon(
            Icons.home,
            color: context.colors.scheme.onPrimary,
          ),
          onTap: () {}),

      // primary.sm
      ButtonWidget.primary(
        "primary.small",
        scale: WidgetScale.small,
        onTap: () {},
      ),

      // primary.lg
      ButtonWidget.primary(
        "primary.large",
        scale: WidgetScale.large,
        onTap: () {},
      ),

      // primary.loading
      ButtonWidget.primary(
        "primary.loading",
        loading: true,
        onTap: () {},
      ),

      // destructive.loading
      ButtonWidget.destructive(
        "destructive.loading",
        loading: true,
        onTap: () {},
      ),

      // icon
      ButtonWidget.icon(
          Icon(
            Icons.home,
            color: context.colors.primary,
          ),
          onTap: () {}),

      //
    ].toColumnSpace().center().scrollable();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtonController>(
      init: ButtonController(),
      id: "button",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("button")),
          body: SafeArea(
            child: _buildView(context),
          ),
        );
      },
    );
  }
}
