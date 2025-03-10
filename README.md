A powerful and customizable popup package for Flutter, designed to simplify the creation of interactive popups. It offers a clean API, and flexible customization options, making it easy to integrate into any Flutter project.

## 📌 Features

✅ **Custom Alert Dialogs** with flexible content  
✅ **Custom Bottom Sheet** with flexible content  
✅ **Blurred Background & Customizable Colors**
✅ **Lightweight & Easy to Use**

## Example:

**Flutter Pop Alert Dialog**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_pop_kit/flutter_pop_kit.dart';

void showCustomDialog(BuildContext context) async {
    await flutterPopAlertDialog(
        context: context,
        contentPadding: EdgeInsets.all(40.0),
        barrierDismissible: true,
        barrierColor: const Color.fromARGB(48, 0, 0, 0),
        blur: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        backgroundColor: Colors.white,
        borderRadius: BorderRadius.circular(20),
        content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Text(
                "Cool Pop Alert!",
                style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
            ),
            SizedBox(height: 30),
            Icon(Icons.bolt, color: Colors.blueAccent, size: 80),
            SizedBox(height: 30),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Center(
                    child: Text(
                    "Try It Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                    ),
                    ),
                ),
                ),
            ),
            ],
        ),
    );
}
```

| Flutter Pop Alert Dialog                                                                                                             | Flutter Pop Alert Dialog Active                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| <img width="300" src="https://github.com/preciousMzembe/flutter_pop_kit/blob/main/example/flutter_pop_alert_dialog_1.png?raw=true"/> | <img width="300" src="https://github.com/preciousMzembe/flutter_pop_kit/blob/main/example/flutter_pop_alert_dialog_2.png?raw=true"/> |

**Flutter Pop Bottom Sheet**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_pop_kit/flutter_pop_kit.dart';

void showCustomBottomSheet(BuildContext context) {
    await flutterPopBottomSheet(
        context: context,
        contentPadding: EdgeInsets.all(40),
        contentMargin: EdgeInsets.all(20),
        borderRadius: BorderRadius.circular(20),
        barrierDismissible: true,
        blur: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        backgroundColor: Colors.white,
        content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Text(
                "Cool Pop Bottom Sheet",
                style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
            ),
            SizedBox(height: 30),
            Icon(Icons.bolt, color: Colors.blueAccent, size: 80),
            SizedBox(height: 30),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Center(
                    child: Text(
                    "Try It Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                    ),
                    ),
                ),
                ),
            ),
            ],
        ),
    );
}
```

| Flutter Pop Bottom Sheet                                                                                                             | Flutter Pop Bottom Sheet Active                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| <img width="300" src="https://github.com/preciousMzembe/flutter_pop_kit/blob/main/example/flutter_pop_bottom_sheet_1.png?raw=true"/> | <img width="300" src="https://github.com/preciousMzembe/flutter_pop_kit/blob/main/example/flutter_pop_bottom_sheet_2.png?raw=true"/> |

## Installation

1. Add `flutter_pop_kit` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_pop_kit: ^1.1.1
```

2. Run the following command to install the package:

```dart
flutter pub get
```

## Flutter Pop Alert Dialog Attributes

| Attribute            | Type           | Description                                                              |
| -------------------- | -------------- | ------------------------------------------------------------------------ |
| `content`            | `Widget`       | The content to be displayed inside the popup.                            |
| `contentPadding`     | `EdgeInsets`   | The padding to apply inside the popup's content area.                    |
| `barrierDismissible` | `bool`         | Determines if the popup can be dismissed by tapping outside the barrier. |
| `barrierColor`       | `Color`        | The color of the barrier (background) that appears behind the popup.     |
| `blur`               | `ImageFilter?` | The blur effect to apply to the barrier. This is optional.               |
| `backgroundColor`    | `Color`        | The background color of the popup.                                       |
| `borderRadius`       | `BorderRadius`       | The radius of the popup's corners, defining its rounded shape.           |


## Flutter Pop Bottom Sheet Attributes

| Parameter            | Type            | Description |
|----------------------|----------------|-------------|
| `context`           | `BuildContext`  | The build context for displaying the popup. |
| `content`           | `Widget`        | The main widget content to display in the popup. |
| `contentPadding`    | `EdgeInsets`    | Padding around the content inside the popup. |
| `contentMargin`     | `EdgeInsets`    | Margin around the popup container. |
| `barrierDismissible`| `bool`          | Determines if tapping outside the popup closes it. |
| `blur`             | `ImageFilter?`   | Background blur effect behind the popup. |
| `backgroundColor`   | `Color`         | Background color of the popup. |
| `borderRadius`      | `BorderRadius`        | Border radius of the popup container. |
