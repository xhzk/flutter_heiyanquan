import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:flutter_heiyanquan/global.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      // 样式
      light: AppTheme.light,
      dark: AppTheme.dark,
      // 初始主题
      initial: ConfigService.to.themeMode,
      // 主题按钮
      debugShowFloatingThemeButton: true,

      builder: (theme, darkTheme) => GetMaterialApp(
        title: 'Flutter_heiyanquan',

        // 主题
        theme: theme,
        darkTheme: darkTheme,

        // 路由
        // initialRoute: RouteNames.systemSplash,
        initialRoute: RouteNames.stylesStylesIndex,
        getPages: RoutePages.list,
        navigatorObservers: [RoutePages.observer],

        // 多语言
        translations: Translation(), // 词典
        localizationsDelegates: Translation.localizationsDelegates, // 代理
        supportedLocales: Translation.supportedLocales, // 支持的语言种类
        locale: ConfigService.to.locale, // 当前语言种类
        fallbackLocale: Translation.fallbackLocale, // 默认语言种类
      ),
    );
  }
}
