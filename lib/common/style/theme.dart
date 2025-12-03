import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:get/get.dart';

/// 主题
class AppTheme {
  /////////////////////////////////////////////////
  /// 自定义颜色
  /////////////////////////////////////////////////

  static const primary = Color(0xFF5F84FF); // 主色
  static const secondary = Color(0xFFFF6969); // 辅助色
  static const success = Color(0xFF23A757); // 成功色
  static const warning = Color(0xFFFF1843); // 警告色
  static const error = Color(0xFFDA1414); // 错误色
  static const info = Color(0xFF2E5AAC); // 信息色

  /////////////////////////////////////////////////
  /// 系统样式
  /////////////////////////////////////////////////

  /// 系统样式
  static SystemUiOverlayStyle get systemStyle => const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 状态栏颜色
        statusBarBrightness: Brightness.light, // 状态栏亮度
        statusBarIconBrightness: Brightness.dark, // 状态栏图标亮度
        systemNavigationBarDividerColor: Colors.transparent, // 系统导航栏分隔线颜色
        systemNavigationBarColor: Colors.white, // 系统导航栏颜色
        systemNavigationBarIconBrightness: Brightness.dark, // 系统导航栏图标亮度
      );

  /// 亮色系统样式
  static SystemUiOverlayStyle get systemStyleLight => systemStyle.copyWith(
        statusBarColor: Colors.transparent, // 状态栏颜色
        statusBarBrightness: Brightness.light, // 状态栏亮度
        statusBarIconBrightness: Brightness.dark, // 状态栏图标亮度
        systemNavigationBarIconBrightness: Brightness.dark, // 系统导航栏图标亮度
      );

  /// 暗色系统样式
  static SystemUiOverlayStyle get systemStyleDark => systemStyle.copyWith(
        statusBarColor: Colors.transparent, // 状态栏颜色
        statusBarBrightness: Brightness.dark, // 状态栏亮度
        statusBarIconBrightness: Brightness.light, // 状态栏图标亮度
        systemNavigationBarColor: const Color(0xFF0D0D0D), // 系统导航栏颜色
        systemNavigationBarIconBrightness: Brightness.light, // 系统导航栏图标亮度
      );

  static void setSystemStyle() {
    // 获取系统亮度
    Brightness platformBrightness =
        Get.context?.theme.brightness ?? Brightness.light;

    // 获取当前模式
    ThemeMode mode = Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;

    switch (mode) {
      case ThemeMode.system:
        if (platformBrightness == Brightness.dark) {
          // 暗色模式
          SystemChrome.setSystemUIOverlayStyle(systemStyleDark);
        } else {
          // 亮色模式
          SystemChrome.setSystemUIOverlayStyle(systemStyleLight);
        }
        break;
      case ThemeMode.light:
        // 亮色模式
        SystemChrome.setSystemUIOverlayStyle(systemStyleLight);
        break;
      case ThemeMode.dark:
        // 暗色模式
        SystemChrome.setSystemUIOverlayStyle(systemStyleDark);
        break;
    }
  }

  /////////////////////////////////////////////////
  /// 主题
  /////////////////////////////////////////////////

  /// 亮色主题
  static ThemeData get light {
    ColorScheme scheme = MaterialTheme.lightScheme().copyWith(
      primary: primary,
      onPrimary: Colors.white,
      secondary: secondary,
      onSecondary: Colors.white,
      surface: Colors.white,
      onSurface: const Color(0xFF333333),
      error: error,
      onError: Colors.white,
      //   tertiary: const Color(0xFFF4F6F9),
      //   outline: const Color(0xFFF4F6F9),
      //   shadow: const Color(0xFF5A6CEA).withOpacity(0.08),
    );
    return _getTheme(scheme);
  }

  /// 暗色主题
  static ThemeData get dark {
    ColorScheme scheme = MaterialTheme.darkScheme().copyWith(
      primary: primary,
      // onPrimary: Colors.white,
      secondary: secondary,
      // onSecondary: Colors.white,
      // surface: const Color(0xFF252525),
      // onSurface: Colors.white,
      error: error,
      onError: Colors.white,
      //   tertiary: const Color(0xFF141414),
      //   outline: const Color(0xFF252525),
      //   shadow: const Color(0xFF777777).withOpacity(0.08),
    );
    return _getTheme(scheme);
  }

  /// 获取主题
  static ThemeData _getTheme(ColorScheme scheme) {
    return ThemeData(
      useMaterial3: false,
      colorScheme: scheme,
      fontFamily: "Montserrat", // 字体
    );
  }
}
