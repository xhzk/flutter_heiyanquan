import 'package:flutter/material.dart';
import 'package:flutter_heiyanquan/common/index.dart';
import 'package:flutter_heiyanquan/global.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896), // 设计稿中设备的尺寸(单位随意,建议dp,但在使用过程中必须保持一致)
      splitScreenMode: false, // 支持分屏尺寸
      minTextAdapt: false, // 是否根据宽度/高度中的最小值适配文字
      // 一般返回一个MaterialApp类型的Function()
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter_heiyanquan',
          // 样式
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          // 主题
          themeMode:
              ConfigService.to.isDarkModel ? ThemeMode.dark : ThemeMode.light,

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

          // builder
          builder: (context, widget) {
            // 不随系统字体缩放比例
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },

          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
