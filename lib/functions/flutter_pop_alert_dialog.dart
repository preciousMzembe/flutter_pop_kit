import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_pop_kit/flutter_pop_kit.dart';

/// Displays a customizable alert dialog using [FlutterPopAlertDialog].
///
/// This function wraps `showDialog` and allows you to easily create a popup
/// with customizable content, padding, dismiss behavior, background color,
/// blur effects, and border radius.
///
/// Example:
/// ```dart
/// flutterPopAlertDialog(
///   context: context,
///   content: Text("This is a custom alert"),
///   backgroundColor: Colors.white,
///   borderRadius: 20.0,
///   barrierDismissible: true,
/// );
/// ```
///
/// Parameters:
/// - [context]: The `BuildContext` to display the dialog.
/// - [content]: The widget to display inside the pop-up.
/// - [contentPadding]: Padding around the content (default: `EdgeInsets.all(20.0)`).
/// - [barrierDismissible]: Whether the dialog should close when tapping outside (default: `true`).
/// - [barrierColor]: The color of the background overlay (default: `Color.fromRGBO(0, 0, 0, 0.1)`).
/// - [blur]: An optional blur effect applied to the background.
/// - [backgroundColor]: The background color of the pop-up (default: `Colors.white`).
/// - [borderRadius]: The border radius of the pop-up (default: `20.0`).
///
/// Returns a [Future] that completes when the dialog is dismissed.

Future<void> flutterPopAlertDialog({
  required BuildContext context,
  required Widget content,
  EdgeInsets contentPadding = const EdgeInsets.all(20.0),
  bool barrierDismissible = true,
  Color barrierColor = const Color.fromRGBO(0, 0, 0, 0.1),
  ImageFilter? blur,
  Color backgroundColor = Colors.white,
  BorderRadius? borderRadius,
}) async {
  showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (context) => FlutterPopAlertDialog(
      barrierDismissible: barrierDismissible,
      content: content,
      contentPadding: contentPadding,
      barrierColor: barrierColor,
      blur: blur,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius ?? BorderRadius.circular(20.0),
    ),
  );
}
