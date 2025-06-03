import 'dart:ui';

import 'package:flutter/material.dart';

// 自定义主题扩展：标记特殊样式
class TagThemeExtension extends ThemeExtension<TagThemeExtension> {
  final TextStyle? tagTextStyle;
  final Color? tagBackgroundColor;
  final double? tagBorderRadius;

  TagThemeExtension({
    this.tagTextStyle,
    this.tagBackgroundColor,
    this.tagBorderRadius,
  });

  @override
  ThemeExtension<TagThemeExtension> copyWith({
    TextStyle? tagTextStyle,
    Color? tagBackgroundColor,
    double? tagBorderRadius,
  }) {
    return TagThemeExtension(
      tagTextStyle: tagTextStyle ?? this.tagTextStyle,
      tagBackgroundColor: tagBackgroundColor ?? this.tagBackgroundColor,
      tagBorderRadius: tagBorderRadius ?? this.tagBorderRadius,
    );
  }

  @override
  ThemeExtension<TagThemeExtension> lerp(
    covariant ThemeExtension<TagThemeExtension>? other,
    double t,
  ) {
    if (other is! TagThemeExtension) {
      return this;
    }
    return TagThemeExtension(
      tagTextStyle: TextStyle.lerp(tagTextStyle, other.tagTextStyle, t),
      tagBackgroundColor: Color.lerp(
        tagBackgroundColor,
        other.tagBackgroundColor,
        t,
      ),
      tagBorderRadius: lerpDouble(tagBorderRadius, other.tagBorderRadius, t),
    );
  }
}
