import 'package:flutter/material.dart';

/// A customizable bottom sheet with dismissible behavior.
///
/// [FlutterPopBottomSheet] provides a flexible bottom sheet that can be used
/// to display custom content with a rounded design and optional dismiss behavior.
///
/// Example usage:
/// ```dart
/// showModalBottomSheet(
///   context: context,
///   isScrollControlled: true,
///   builder: (context) => FlutterPopBottomSheet(
///     content: Text("This is a custom bottom sheet"),
///     contentPadding: EdgeInsets.all(16),
///     contentMargin: EdgeInsets.all(8),
///     barrierDismissible: true,
///     backgroundColor: Colors.white,
///     borderRadius: 16.0,
///   ),
/// );
/// ```
///
/// Parameters:
/// - [content]: The widget displayed inside the bottom sheet.
/// - [contentPadding]: The padding around the content.
/// - [contentMargin]: The margin around the bottom sheet.
/// - [barrierDismissible]: Whether tapping outside should close the bottom sheet.
/// - [backgroundColor]: The background color of the bottom sheet.
/// - [borderRadius]: The border radius of the bottom sheet.

class FlutterPopBottomSheet extends StatelessWidget {
  final Widget content;
  final EdgeInsets contentPadding;
  final EdgeInsets contentMargin;
  final bool barrierDismissible;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  const FlutterPopBottomSheet({
    super.key,
    required this.content,
    required this.contentPadding,
    required this.contentMargin,
    required this.barrierDismissible,
    required this.backgroundColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (barrierDismissible) Navigator.pop(context);
      },
      child: ListView(
        reverse: true,
        children: [
          GestureDetector(
            // prevent action when content is tapped
            onTap: () {},
            child: Padding(
              padding: contentMargin,
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: borderRadius,
                ),
                padding: contentPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Content
                    content,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
