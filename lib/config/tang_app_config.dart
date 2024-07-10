import 'package:flutter/cupertino.dart';

/// Default theme.
abstract class AppConfigTheme {
  late AppConfigThemeNavigationBar navigationBar;
  late AppConfigThemePage page;
}

/// Navigation bar.
abstract class AppConfigThemeNavigationBar {
  late double backItemWidth;
  late double backItemHeight;
  late double titleContainerSize;
  late double preferredSize;
  late TextStyle titleTextStyle;
  late Color backgroundColor;
}

/// Page.
abstract class AppConfigThemePage {
  late Color backgroundColor;
  late EdgeInsets padding;
}