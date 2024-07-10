import 'package:flutter/material.dart';
import 'package:tang_appbase/tang_appbase.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onTapped;
  final bool tapFeedback;
  final double width;
  final double height;
  final String? title;
  final TextStyle? titleTextStyle;
  final Color? backgroundColor;
  final Widget? backgroundImage;
  final double? borderRadius;

  const AppButton({
    super.key,
    this.onTapped,
    this.tapFeedback = true,
    this.width = double.infinity,
    this.height = 48.0,
    this.title,
    this.titleTextStyle,
    this.backgroundColor,
    this.backgroundImage,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> backgroundWidget = [];
    if (backgroundImage != null) {
      backgroundWidget.add(
        Positioned(
          top: 0, left: 0, bottom: 0, right: 0,
          child: backgroundImage!,
        ),
      );
    }
    if (tapFeedback) {
      return InkWell(
        onTap: onTapped,
        child: _buildContent(backgroundWidget),
      );
    }
    return GestureDetector(
      onTap: onTapped,
      child: _buildContent(backgroundWidget),
    );
  }
}

// Private

extension _Private on AppButton {

  Widget _buildContent(List<Widget> backgroundWidget) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: borderRadius == null
            ? null
            : BorderRadius.circular(borderRadius!),
      ),
      child: Stack(
        children: backgroundWidget + [

          Positioned(
            top: 0, left: 0, bottom: 0, right: 0,
            child: Center(
              child: (title ?? '')
                  .text()
                  .textStyle(titleTextStyle)
                  .align(TextAlign.center)
                  .make(),
            ),
          ),
        ],
      ),
    );
  }
}
