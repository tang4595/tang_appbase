import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class AppTextStyle {
  double? _fontSize;
  FontWeight? _fontWeight;
  FontStyle? _fontStyle;
  String? _fontFamily;
  ui.Color? _color;
  ui.Color? _backgroundColor;
  double? _letterSpacing;
  double? _wordSpacing;
  TextBaseline? _textBaseline;
  double? _height;
  Locale? _locale;
  TextDecoration? _decoration;
  Color? _decorationColor;
  TextDecorationStyle? _decorationStyle;
  double? _decorationThickness;

  TextStyle make() {
    var weight = _fontWeight ?? FontWeight.normal;
    return TextStyle(
      fontSize: _fontSize,
      fontWeight: weight,
      fontStyle: _fontStyle,
      fontFamily: _fontFamily,
      color: _color,
      backgroundColor: _backgroundColor,
      letterSpacing: _letterSpacing,
      wordSpacing: _wordSpacing,
      textBaseline: _textBaseline,
      height: _height,
      locale: _locale,
      decoration: _decoration,
      decorationColor: _decorationColor,
      decorationStyle: _decorationStyle,
      decorationThickness: _decorationThickness,
    );
  }
}

/// Font Size
extension FontSizeEx on num {
  AppTextStyle textStyleFont() => AppTextStyle().._fontSize = toDouble();
}

/// Font Weight
extension TextStyleFontWeightEx on AppTextStyle {
  AppTextStyle regular() => this.._fontWeight = FontWeight.normal;
  AppTextStyle medium() => this.._fontWeight = FontWeight.w500;
  AppTextStyle bold() => this.._fontWeight = FontWeight.bold;
  AppTextStyle weight(FontWeight fontWeight) => this.._fontWeight = fontWeight;
}

/// Font style.
extension TextStyleFontStyleEx on AppTextStyle {
  AppTextStyle fontStyle(FontStyle? fontStyle) => this.._fontStyle = fontStyle;
}

/// Font family.
extension TextStyleFontFamilyEx on AppTextStyle {
  AppTextStyle fontFamily(String? fontFamily) => this.._fontFamily = fontFamily;
}

/// Color
extension TextStyleColorEx on AppTextStyle {
  AppTextStyle colored(ui.Color value) => this.._color = value;
}

/// BackgroundColor
extension TextStyleBackgroundColorEx on AppTextStyle {
  AppTextStyle bgColor(ui.Color? value) => this.._backgroundColor = value;
}

/// LetterSpacing
extension TextStyleLetterSpacingEx on AppTextStyle {
  AppTextStyle letterSpaced(double? value) => this.._letterSpacing = value;
}

/// WordSpacing
extension TextStyleWordSpacingEx on AppTextStyle {
  AppTextStyle wordSpaced(double? value) => this.._wordSpacing = value;
}

/// TextBaseline
extension TextStyleTextBaselineEx on AppTextStyle {
  AppTextStyle baseline(TextBaseline? value) => this.._textBaseline = value;
}

/// Height
extension TextStyleHeightEx on AppTextStyle {
  AppTextStyle h(double? value) => this.._height = value;
}

/// Local
extension TextStyleLocalEx on AppTextStyle {
  AppTextStyle localed(Locale? value) => this.._locale = value;
}

/// Decoration
extension TextStyleDecorationEx on AppTextStyle {
  AppTextStyle withDecoration(TextDecoration? value) =>
      this.._decoration = value;
}

/// Decoration Color
extension TextStyleDecorationColorEx on AppTextStyle {
  AppTextStyle withDecorationColor(ui.Color? value) =>
      this.._decorationColor = value;
}

/// Decoration Style
extension TextStyleDecorationStyleEx on AppTextStyle {
  AppTextStyle withDecorationStyle(TextDecorationStyle? value) =>
      this.._decorationStyle = value;
}

/// Decoration Thickness
extension TextStyleDecorationThicknessEx on AppTextStyle {
  AppTextStyle withDecorationThickness(double? value) =>
      this.._decorationThickness = value;
}