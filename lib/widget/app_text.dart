import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'app_rich_text_span.dart';

class AppText {

  /// Generic Text.
  String? _data;
  TextStyle? _style;
  StrutStyle? _strutStyle;
  TextAlign? _textAlign;
  TextDirection? _textDirection;
  Locale? _locale;
  bool? _softWrap;
  TextScaler? _textScaler;
  int? _maxLines;
  String? _semanticsLabel;
  TextWidthBasis? _textWidthBasis;
  ui.TextHeightBehavior? _textHeightBehavior;
  Color? _selectionColor;

  Text make() {
    return Text(
      _data ?? '',
      style: _style,
      strutStyle: _strutStyle,
      textAlign: _textAlign,
      textDirection: _textDirection,
      locale: _locale,
      softWrap: _softWrap,
      textScaler: _textScaler,
      maxLines: _maxLines,
      semanticsLabel: _semanticsLabel,
      textWidthBasis: _textWidthBasis,
      textHeightBehavior: _textHeightBehavior,
      selectionColor: _selectionColor,
    );
  }

  /// Rich Text.
  AppRichTextSpan? _textSpan;

  Text makeRich() {
    if (_textSpan == null) return const Text('');
    return Text.rich(
      _textSpan!.make(),
      style: _style,
      strutStyle: _strutStyle,
      textAlign: _textAlign,
      textDirection: _textDirection,
      locale: _locale,
      softWrap: _softWrap,
      textScaler: _textScaler,
      maxLines: _maxLines,
      semanticsLabel: _semanticsLabel,
      textWidthBasis: _textWidthBasis,
      textHeightBehavior: _textHeightBehavior,
      selectionColor: _selectionColor,
    );
  }
}

/// TextData
extension TextEx on String {
  AppText text() { return AppText().._data = this; }
}

/// Rich Text Span
extension AppRichTextSpanEx on AppRichTextSpan {
  AppText withTextSpan() { return AppText().._textSpan = this; }
}

/// AppTextStyle
extension AppTextStyleEx on AppText {
  AppText textStyle(TextStyle? value) => this.._style = value;
}

/// StrutStyle
extension AppTextStrutStyleEx on AppText {
  AppText withStrutStyle(StrutStyle? value) => this.._strutStyle = value;
}

/// TextAlign
extension AppTextTextAlignEx on AppText {
  AppText align(TextAlign? value) => this.._textAlign = value;
}

/// TextDirection
extension AppTextTextDirectionEx on AppText {
  AppText direction(TextDirection? value) => this.._textDirection = value;
}

/// Locale
extension AppTextLocaleEx on AppText {
  AppText localed(Locale? value) => this.._locale = value;
}

/// SoftWrap
extension AppTextSoftWrapEx on AppText {
  AppText isSoftWrap(bool? value) => this.._softWrap = value;
}

/// TextScaler
extension AppTextTextScalerEx on AppText {
  AppText withTextScaler(TextScaler? value) => this.._textScaler = value;
}

/// MaxLines
extension AppTextMaxLinesEx on AppText {
  AppText withMaxLine(int? value) => this.._maxLines = value;
}

/// SemanticsLabel
extension AppTextSemanticsLabelEx on AppText {
  AppText withSemanticsLabel(String? value) => this.._semanticsLabel = value;
}

/// TextWidthBasis
extension AppTextTextWidthBasisEx on AppText {
  AppText withTextWidthBasis(TextWidthBasis? value) =>
      this.._textWidthBasis = value;
}

/// TextHeightBehavior
extension AppTextTextHeightBehaviorEx on AppText {
  AppText withTextHeightBehavior(ui.TextHeightBehavior? value) =>
      this.._textHeightBehavior = value;
}

/// Color
extension AppTextColorEx on AppText {
  AppText withSelectionColor(Color? value) => this.._selectionColor = value;
}