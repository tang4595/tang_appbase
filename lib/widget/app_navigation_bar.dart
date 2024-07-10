import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tang_appbase/tang_appbase.dart';

enum AppBarBackType { back, close, none }

class AppNavigationTitle extends StatelessWidget {

  final String _title;
  final TextStyle? style;

  const AppNavigationTitle(this._title, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppBase.shared.theme.navigationBar.titleContainerSize,
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxWidth: 170.0,
      ),
      child: Text(
        _title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: style ?? AppBase.shared.theme.navigationBar.titleTextStyle,
      ),
    );
  }
}

class AppNavigationBar extends AppBar implements PreferredSizeWidget {
  AppNavigationBar({
    super.key,
    super.title,
    super.automaticallyImplyLeading,
    super.bottom,
    super.actions,
    bool super.centerTitle = true,
    double super.titleSpacing = NavigationToolbar.kMiddleSpacing,
    VoidCallback? onBack,
    AppBarBackType? leadingType,
    Widget? leading,
    Brightness brightness = Brightness.dark,
    Color? backgroundColor,
    double? elevation,
  }) : super(
    backgroundColor: backgroundColor ??
        AppBase.shared.theme.navigationBar.backgroundColor,
    leading: leading ??
        (leadingType == AppBarBackType.none
            ? null
            : AppBarBack(
          onBack: onBack,
          backType: (leadingType ?? AppBarBackType.back),
          brightness: brightness,
        )),
    elevation: elevation ?? 0,
  );

  @override
  get preferredSize =>
      Size.fromHeight(AppBase.shared.theme.navigationBar.preferredSize);
}

class AppBarBack extends StatelessWidget {
  final GestureTapCallback? onBack;
  final AppBarBackType? backType;
  final Brightness? brightness;

  const AppBarBack({super.key, this.onBack, this.backType, this.brightness});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onBack != null) {
          onBack!();
        } else {
          Navigator.of(context).pop();
        }
      },
      child: _backIcon(isClose: backType == AppBarBackType.close),
    );
  }

  Widget _backIcon({
    bool isClose = false,
  }) {
    return Container(
      width: AppBase.shared.theme.navigationBar.backItemWidth,
      height: AppBase.shared.theme.navigationBar.backItemHeight,
      padding: EdgeInsets.only(
        left: isClose ? 10.0 : 8.0,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(
          isClose ? CupertinoIcons.clear : CupertinoIcons.back,
          size: isClose ? 25.0 : 30.0,
          color: Brightness.dark == brightness ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
