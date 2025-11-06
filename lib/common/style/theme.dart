import 'package:flutter/material.dart';

import 'index.dart';

/// 主题
class AppTheme {
  /// 亮色
  static ThemeData light = ThemeData(
    colorScheme: MaterialTheme.lightScheme(),
    useMaterial3: false,
  );

  /// 暗色
  static ThemeData dark = ThemeData(
    colorScheme: MaterialTheme.darkScheme(),
    useMaterial3: false,
  );
}
