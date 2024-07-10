import 'package:flutter/material.dart';
import 'package:tang_appbase/tang_appbase.dart';

class AppScaffold extends StatefulWidget {
  final Widget body;
  final bool safeArea;
  final bool tapToCloseKeyboard;
  final bool showNavigationBar;
  final EdgeInsets? padding;
  final AppBarBackType? leadingType;
  final Widget? leading;
  final Color? backgroundColor;
  final String? title;
  final bool centerTitle;
  final TextStyle? navigationTitleStyle;
  final List<Widget>? actions;
  final VoidCallback? onBack;

  const AppScaffold({
    super.key,
    required this.body,
    this.safeArea = true,
    this.tapToCloseKeyboard = true,
    this.showNavigationBar = true,
    this.padding,
    this.leadingType,
    this.leading,
    this.backgroundColor,
    this.title,
    this.centerTitle = true,
    this.navigationTitleStyle,
    this.actions,
    this.onBack,
  });

  @override
  createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor ??
          AppBase.shared.theme.page.backgroundColor,
      appBar: widget.showNavigationBar ? AppNavigationBar(
        title: AppNavigationTitle(
          widget.title ?? '',
          style: widget.navigationTitleStyle,
        ),
        centerTitle: widget.centerTitle,
        backgroundColor: widget.backgroundColor,
        actions: widget.actions,
        onBack: widget.onBack,
        leadingType: widget.leadingType,
      ) : null,
      body: GestureDetector(
        onTap: () {
          if (!widget.tapToCloseKeyboard) return;
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Padding(
          padding: widget.padding ?? AppBase.shared.theme.page.padding,
          child: widget.safeArea ? SafeArea(
            child: widget.body,
          ) : widget.body,
        ),
      ),
    );
  }
}
