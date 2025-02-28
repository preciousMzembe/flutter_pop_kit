import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_pop_kit/flutter_pop_kit.dart';

/// Displays a customizable bottom sheet with a blurred backdrop.
///
/// [flutterPopBottomSheet] is a helper function that presents a bottom sheet
/// using [FlutterPopBottomSheet], allowing customization of padding, margins,
/// background color, and dismiss behavior.
///
/// Example usage:
/// ```dart
/// flutterPopBottomSheet(
///   context: context,
///   content: Text("Hello, this is a bottom sheet!"),
///   contentPadding: EdgeInsets.all(16),
///   contentMargin: EdgeInsets.symmetric(horizontal: 8),
///   barrierDismissible: true,
///   backgroundColor: Colors.white,
///   borderRadius: 16.0,
/// );
/// ```
///
/// Parameters:
/// - [context]: The `BuildContext` used to show the bottom sheet.
/// - [content]: The widget displayed inside the bottom sheet.
/// - [contentPadding]: The padding around the content (default: `EdgeInsets.all(20.0)`) .
/// - [contentMargin]: The margin around the bottom sheet (default: `EdgeInsets.all(0.0)`) .
/// - [barrierDismissible]: Whether tapping outside should close the bottom sheet (default: `true`).
/// - [blur]: An optional background blur effect (default: `null`).
/// - [backgroundColor]: The background color of the bottom sheet (default: `Colors.white`).
/// - [borderRadius]: The border radius of the bottom sheet (default: `20.0`).

Future<void> flutterPopBottomSheet({
  required BuildContext context,
  required Widget content,
  EdgeInsets contentPadding = const EdgeInsets.all(20.0),
  EdgeInsets contentMargin = const EdgeInsets.all(0.0),
  bool barrierDismissible = true,
  ImageFilter? blur,
  Color backgroundColor = Colors.white,
  double borderRadius = 20.0,
}) async {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isDismissible: barrierDismissible,
    context: context,
    builder: (BuildContext context) => BackdropFilter(
      filter: blur ?? ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: FlutterPopBottomSheet(
        content: content,
        contentPadding: contentPadding,
        contentMargin: contentMargin,
        barrierDismissible: barrierDismissible,
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
      ),
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(0),
      ),
    ),
  );
}
