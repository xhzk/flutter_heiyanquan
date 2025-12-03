import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import '../index.dart';

enum IconWidgetType { icon, svg, img }

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.type,
    this.iconData,
    this.path,
    this.size,
    double? width,
    double? height,
    this.color,
    this.isDot,
    this.badgeString,
    this.fit,
    this.text,
    this.isVertical,
    this.onTap,
    this.isExpanded,
  })  : _height = height,
        _width = width;

  /// 图标类型
  final IconWidgetType type;

  /// 图标数据
  final IconData? iconData;

  /// 路径, asset , url
  final String? path;

  /// 尺寸
  final double? size;

  /// 宽
  final double? _width;

  /// 高
  final double? _height;

  /// 颜色
  final Color? color;

  /// 是否小圆点
  final bool? isDot;

  /// Badge 文字
  final String? badgeString;

  /// 图片 fit
  final BoxFit? fit;

  /// 图标文字
  final String? text;

  // 是否垂直
  final bool? isVertical;

  /// 是否扩展
  final bool? isExpanded;

  /// 点击事件
  final GestureTapCallback? onTap;

  const IconWidget.icon(
    this.iconData, {
    super.key,
    this.path,
    this.size,
    this.isExpanded = false,
    double? width,
    double? height,
    this.color,
    this.isDot,
    this.badgeString,
    this.fit,
    this.text,
    this.isVertical,
    this.onTap,
  })  : _height = height,
        _width = width,
        type = IconWidgetType.icon;

  const IconWidget.img(
    this.path, {
    super.key,
    this.iconData,
    this.size,
    double? width,
    double? height,
    this.color,
    this.isDot,
    this.badgeString,
    this.fit,
    this.text,
    this.isVertical,
    this.onTap,
    this.isExpanded,
  })  : _height = height,
        _width = width,
        type = IconWidgetType.img;

  const IconWidget.svg(
    this.path, {
    super.key,
    this.iconData,
    this.size,
    double? width,
    double? height,
    this.color,
    this.isDot,
    this.badgeString,
    this.fit,
    this.text,
    this.isVertical,
    this.onTap,
    this.isExpanded,
  })  : _height = height,
        _width = width,
        type = IconWidgetType.svg;

  // 图标
  Widget _buildIcon(BuildContext context) {
    Widget icon = const SizedBox.shrink();
    switch (type) {
      case IconWidgetType.icon:
        icon = Icon(
          iconData,
          size: size ?? AppSize.icon,
          color: color ?? context.colors.scheme.onSurfaceVariant,
        );
      case IconWidgetType.svg:
        icon = ImageWidget.svg(
          path!,
          width: _width ?? size,
          height: _height ?? size,
          color: color,
          elevation: 0,
          fit: fit,
        );
      case IconWidgetType.img:
        icon = Image.asset(
          path!,
          width: _width ?? size ?? AppSize.icon,
          height: _height ?? size ?? AppSize.icon,
          color: color ?? context.colors.scheme.onSurfaceVariant,
          fit: fit,
        );
    }

    // badge
    if (isDot == true) {
      icon = Badge(
        backgroundColor: context.colors.scheme.primary,
        // smallSize: 10,
        alignment: Alignment.bottomRight,
        child: icon,
      );
    } else if (badgeString != null) {
      icon = Badge(
        backgroundColor: context.colors.scheme.primary,
        label: Text(badgeString!),
        alignment: Alignment.topRight,
        child: icon,
      );
    }

    return icon;
  }

  Widget _buildView(BuildContext context) {
    List<Widget> ws = [];

    // 1 图标
    ws.add(_buildIcon(context));

    // 2 文字
    if (text != null) {
      Widget textWidget = TextWidget.muted(text!);
      if (isExpanded == true) {
        textWidget = textWidget.expanded();
      }
      ws.add(textWidget);
    }

    // 3 返回 child
    Widget child = ws.length == 1
        ? ws[0]
        : isVertical == true
            ? ws.toColumnSpace(
                space: AppSpace.iconText,
                mainAxisSize: MainAxisSize.min,
              )
            : ws.toRowSpace(
                space: AppSpace.iconText,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: isExpanded == true
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
              );

    // 4 点击事件
    child = onTap == null
        ? child
        : InkWell(
            onTap: onTap,
            child: child,
          );

    return child;
  }

  @override
  Widget build(BuildContext context) {
    return _buildView(context);
  }
}
