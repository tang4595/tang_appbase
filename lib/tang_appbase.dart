library tang_appbase;

import 'config/tang_app_config.dart';

export 'package:tang_appbase/bloc/app_base_bloc.dart';
export 'package:tang_appbase/style/app_text_style.dart';
export 'package:tang_appbase/style/app_margin.dart';
export 'package:tang_appbase/widget/app_text.dart';
export 'package:tang_appbase/widget/app_rich_text_span.dart';
export 'package:tang_appbase/widget/app_image.dart';
export 'package:tang_appbase/widget/app_navigation_bar.dart';
export 'package:tang_appbase/widget/app_scaffold.dart';
export 'package:tang_appbase/widget/app_button.dart';
export 'package:tang_appbase/widget/app_line.dart';

class AppBase {
  factory AppBase() => _getInstance();
  static AppBase _getInstance() { return _instance; }
  static AppBase get shared => _getInstance();
  static final AppBase _instance = AppBase._internal();
  AppBase._internal();

  late AppConfigTheme _theme;
}

// Getter

extension Getters on AppBase {
  AppConfigTheme get theme => _theme;
}

// Public

extension Public on AppBase {

  setup({required AppConfigTheme theme}) async {
    _theme = theme;
  }
}