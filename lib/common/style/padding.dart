import 'package:flutter/material.dart';

/// 间距
class AppPadding {
  /// 按钮
  static EdgeInsetsGeometry get button => const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      );

  /// 列表项
  static EdgeInsetsGeometry get listTile => const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 5,
      );

  /// 头像
  static EdgeInsetsGeometry get avatar => const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 3,
      );

  /// 卡片
  static EdgeInsetsGeometry get card => const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      );

  /// BottomSheet
  static EdgeInsetsGeometry get bottomSheet => const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      );
}
