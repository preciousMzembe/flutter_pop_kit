import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_pop_kit/flutter_pop_kit.dart';

Future<void> flutterPopAlertDialog({
  required BuildContext context,
  required Widget content,
  EdgeInsets contentPadding = const EdgeInsets.all(20.0),
  bool barrierDismissible = true,
  Color barrierColor = const Color.fromRGBO(0, 0, 0, 0.1),
  ImageFilter? blur,
  Color backgroundColor = Colors.white,
  double borderRadius = 20.0,
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
      borderRadius: borderRadius,
    ),
  );
}
