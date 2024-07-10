import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

String _defaultSuffix = 'png';

class AppAssetImage {
  String? _suffix;
  String? _resourceName;
  String? _package;
  double? _width;
  double? _height;
  double? _scale;
  ui.Color? _color;
  BoxFit? _fit;
  Animation<double>? _opacity;
  BlendMode? _colorBlendMode;
  AlignmentGeometry? _alignment;
  ImageRepeat? _repeat;
  Rect? _centerSlice;

  Image make() {
    if (_alignment != null && _repeat != null) {
      return Image.asset(
        '${_resourceName ?? ''}.${_suffix ?? _defaultSuffix}',
        package: _package,
        width: _width,
        height: _height,
        scale: _scale,
        color: _color,
        fit: _fit,
        opacity: _opacity,
        colorBlendMode: _colorBlendMode,
        centerSlice: _centerSlice,
        alignment: _alignment!,
        repeat: _repeat!,
      );
    } else if (_alignment != null) {
      return Image.asset(
        '${_resourceName ?? ''}.${_suffix ?? _defaultSuffix}',
        package: _package,
        width: _width,
        height: _height,
        scale: _scale,
        color: _color,
        fit: _fit,
        opacity: _opacity,
        colorBlendMode: _colorBlendMode,
        centerSlice: _centerSlice,
        alignment: _alignment!,
      );
    } else if (_repeat != null) {
      return Image.asset(
        '${_resourceName ?? ''}.${_suffix ?? _defaultSuffix}',
        package: _package,
        width: _width,
        height: _height,
        scale: _scale,
        color: _color,
        fit: _fit,
        opacity: _opacity,
        colorBlendMode: _colorBlendMode,
        centerSlice: _centerSlice,
        repeat: _repeat!,
      );
    }
    return Image.asset(
      '${_resourceName ?? ''}.${_suffix ?? _defaultSuffix}',
      package: _package,
      width: _width,
      height: _height,
      scale: _scale,
      color: _color,
      fit: _fit,
      opacity: _opacity,
      colorBlendMode: _colorBlendMode,
      centerSlice: _centerSlice,
    );
  }
}

/// Resource Name
extension ResourceNameEx on String {
  AppAssetImage image() { return AppAssetImage().._resourceName = this; }
}

/// Suffix
extension ImageSuffixEx on AppAssetImage {
  AppAssetImage suffixed(String? value) { return this.._suffix = value; }
}

/// Package
extension ImagePackageEx on AppAssetImage {
  AppAssetImage packaged(String? value) { return this.._package = value; }
}

/// Width
extension ImageWidthEx on AppAssetImage {
  AppAssetImage w(double? value) { return this.._width = value; }
}

/// Height
extension ImageHeightEx on AppAssetImage {
  AppAssetImage h(double? value) { return this.._height = value; }
}

/// Scale
extension ImageScaleEx on AppAssetImage {
  AppAssetImage scaled(double? value) { return this.._scale = value; }
}

/// Color
extension ImageColorEx on AppAssetImage {
  AppAssetImage colored(ui.Color? value) { return this.._color = value; }
}

/// Fit
extension ImageFitEx on AppAssetImage {
  AppAssetImage fits(BoxFit? value) { return this.._fit = value; }
}

/// Opacity
extension ImageOpacityEx on AppAssetImage {
  AppAssetImage opacities(Animation<double>? value) {
    return this.._opacity = value;
  }
}

/// Opacity
extension ImageColorBlendModeEx on AppAssetImage {
  AppAssetImage opacities(BlendMode? value) {
    return this.._colorBlendMode = value;
  }
}

/// CenterSlice
extension ImageCenterSliceEx on AppAssetImage {
  AppAssetImage withCenterSlice(Rect? value) {
    return this.._centerSlice = value;
  }
}