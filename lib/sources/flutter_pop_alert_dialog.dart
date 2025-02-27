import 'dart:ui';

import 'package:flutter/material.dart';

class FlutterPopAlertDialog extends StatelessWidget {
  final Widget content;
  final EdgeInsets contentPadding;
  final bool barrierDismissible;
  final Color barrierColor;
  final ImageFilter? blur;
  final Color backgroundColor;
  final double borderRadius;

  const FlutterPopAlertDialog({
    super.key,
    required this.content,
    required this.contentPadding,
    required this.barrierDismissible,
    required this.barrierColor,
    this.blur,
    required this.backgroundColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            if (barrierDismissible) Navigator.pop(context);
          },
          child: BackdropFilter(
            filter: blur ?? ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: barrierColor,
            ),
          ),
        ),
        Center(
          child: AlertDialog(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            contentPadding: contentPadding,
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  content,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
