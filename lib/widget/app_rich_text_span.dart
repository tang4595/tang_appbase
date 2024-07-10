import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

class AppRichTextSpan {
  List<AppRichTextSpan>? _children;
  String? _text;
  TextStyle? _style;
  GestureRecognizer? _recognizer;
  PointerEnterEventListener? _onEnter;
  PointerExitEventListener? _onExit;
  String? _semanticsLabel;
  ui.Locale? _locale;
  bool? _spellOut;

  TextSpan make() {
    return TextSpan(
      text: _text,
      style: _style,
      children: _children?.map((e) => e.make()).toList(),
      recognizer: _recognizer,
      onEnter: _onEnter,
      onExit: _onExit,
      semanticsLabel: _semanticsLabel,
      locale: _locale,
      spellOut: _spellOut,
    );
  }
}

/// Text
extension SpanTextEx on String {
  AppRichTextSpan textSpan() { return AppRichTextSpan().._text = this; }
}

/// Appending
extension SpanTextAppendingEx on AppRichTextSpan {
  AppRichTextSpan add(AppRichTextSpan textSpan) {
    var list = _children ?? [];
    list.add(textSpan);
    return this.._children = list;
  }
}

/// TextStyle
extension AppRichTextSpanTextStyleRecognizerEx on AppRichTextSpan {
  AppRichTextSpan textStyle(TextStyle? value) =>  this.._style = value;
}

/// Recognizer
extension AppRichTextSpanGestureRecognizerEx on AppRichTextSpan {
  AppRichTextSpan withRecognizer(GestureRecognizer? value) =>
      this.._recognizer = value;
}

/// OnEnter
extension AppRichTextSpanOnEnterEx on AppRichTextSpan {
  AppRichTextSpan withOnEnter(PointerEnterEventListener? value) =>
      this.._onEnter = value;
}

/// OnExit
extension AppRichTextSpanOnExitEx on AppRichTextSpan {
  AppRichTextSpan withOnExit(PointerExitEventListener? value) =>
      this.._onExit = value;
}

/// SemanticsLabel
extension AppRichTextSpanSemanticsLabelEx on AppRichTextSpan {
  AppRichTextSpan withSemanticsLabel(String? value) =>
      this.._semanticsLabel = value;
}

/// Locale
extension AppRichTextSpanLocaleEx on AppRichTextSpan {
  AppRichTextSpan localed(ui.Locale? value) => this.._locale = value;
}

/// SpellOut
extension AppRichTextSpanSpellOutEx on AppRichTextSpan {
  AppRichTextSpan isSpellOut(bool? value) => this.._spellOut = value;
}