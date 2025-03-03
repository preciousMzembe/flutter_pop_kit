import 'dart:ui';

import 'package:flutter/material.dart';

/// A customizable alert dialog with a blurred background effect.
///
/// [FlutterPopAlertDialog] provides a popup dialog with various customization
/// options, including background blur, colors, padding, and dismiss behavior.
///
/// Example usage:
/// ```dart
/// showDialog(
///   context: context,
///   builder: (context) => FlutterPopAlertDialog(
///     content: Text("This is a custom alert"),
///     contentPadding: EdgeInsets.all(20),
///     barrierDismissible: true,
///     barrierColor: Colors.black.withOpacity(0.3),
///     backgroundColor: Colors.white,
///     borderRadius: 20.0,
///   ),
/// );
/// ```
///
/// Parameters:
/// - [content]: The widget displayed inside the alert dialog.
/// - [contentPadding]: The padding around the content (default: required).
/// - [barrierDismissible]: Whether tapping outside should close the dialog.
/// - [barrierColor]: The color of the background overlay.
/// - [blur]: An optional blur effect applied to the background (default: `ImageFilter.blur(sigmaX: 2, sigmaY: 2)`)
/// - [backgroundColor]: The background color of the dialog.
/// - [borderRadius]: The border radius of the dialog.

class FlutterPopAlertDialog extends StatelessWidget {
  final Widget content;
  final EdgeInsets contentPadding;
  final bool barrierDismissible;
  final Color barrierColor;
  final ImageFilter? blur;
  final Color backgroundColor;
  final BorderRadius borderRadius;

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
              borderRadius: borderRadius,
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
