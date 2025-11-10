import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../index.dart';

enum IconWidgetType { icon, svg, image, url }

/// 图标组件
class IconWidget extends StatelessWidget {
  /// 图标类型
  final IconWidgetType type;

  /// 图标数据
  final IconData? iconData;

  /// assets 路径
  final String? assetName;

  /// 图片 url
  final String? imageUrl;

  /// 尺寸
  final double? size;

  /// 宽
  final double? width;

  /// 高
  final double? height;

  /// 颜色
  final Color? color;

  /// 是否小圆点
  final bool? isDot;

  /// Badge 文字
  final String? badgeString;

  /// 图片 fit
  final BoxFit? fit;

  const IconWidget({
    super.key,
    this.type = IconWidgetType.icon,
    this.size,
    this.width,
    this.height,
    this.color,
    this.iconData,
    this.isDot,
    this.badgeString,
    this.assetName,
    this.imageUrl,
    this.fit,
  });

  const IconWidget.icon(
    this.iconData, {
    super.key,
    this.type = IconWidgetType.icon,
    this.size = 24,
    this.width,
    this.height,
    this.color,
    this.isDot,
    this.badgeString,
    this.assetName,
    this.imageUrl,
    this.fit,
  });

  const IconWidget.image(
    this.assetName, {
    super.key,
    this.type = IconWidgetType.image,
    this.size = 24,
    this.width,
    this.height,
    this.color,
    this.iconData,
    this.isDot,
    this.badgeString,
    this.imageUrl,
    this.fit,
  });

  const IconWidget.svg(
    this.assetName, {
    super.key,
    this.type = IconWidgetType.svg,
    this.size = 24,
    this.width,
    this.height,
    this.color,
    this.iconData,
    this.isDot,
    this.badgeString,
    this.imageUrl,
    this.fit,
  });

  const IconWidget.url(
    this.imageUrl, {
    super.key,
    this.type = IconWidgetType.url,
    this.size = 24,
    this.width,
    this.height,
    this.color,
    this.iconData,
    this.isDot,
    this.badgeString,
    this.assetName,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    final Widget icon = switch (type) {
      IconWidgetType.icon => Icon(
          iconData,
          size: size,
          color: color ?? AppColors.primary,
        ),
      IconWidgetType.svg => SvgPicture.asset(
          assetName!,
          width: width ?? size,
          height: height ?? size,
          fit: fit ?? BoxFit.contain,
        ),
      IconWidgetType.image => Image.asset(
          assetName!,
          width: width ?? size,
          height: height ?? size,
          color: color,
          fit: fit ?? BoxFit.contain,
        ),
      IconWidgetType.url => Image.network(
          imageUrl!,
          width: width ?? size,
          height: height ?? size,
          color: color,
          fit: fit ?? BoxFit.contain,
        ),
    };

    // 圆点
    if (isDot == true) {
      return badges.Badge(
        position: badges.BadgePosition.bottomEnd(bottom: 0, end: -2),
        badgeStyle: badges.BadgeStyle(
          elevation: 0,
          badgeColor: AppColors.primary,
          padding: const EdgeInsets.all(4.0),
        ),
        child: icon,
      );
    }

    // 文字 / 数字
    if (badgeString != null) {
      return badges.Badge(
        position: badges.BadgePosition.topEnd(top: -7, end: -8),
        badgeStyle: badges.BadgeStyle(
          elevation: 0,
          badgeColor: AppColors.primary,
          padding: const EdgeInsets.all(4.0),
        ),
        badgeContent: Text(
          badgeString!,
          style: TextStyle(
            color: AppColors.onPrimary,
            fontSize: 9,
          ),
        ),
        child: icon,
      );
    }

    // 图标
    return icon;
  }
}
