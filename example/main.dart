import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_pop_kit/flutter_pop_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App For Custom Alert Dialog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Flutter Pop Alert Dialog",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "flutterPopAlertDialog is a customizable alert dialog function from the Flutter Pop Kit package. It provides a sleek and modern popup experience",
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),

              // Buton
              GestureDetector(
                onTap: () async {
                  // Call the flutterPopAlertDialog function to show the dialog
                  await flutterPopAlertDialog(
                    context: context,
                    contentPadding: EdgeInsets.all(40.0),
                    barrierDismissible: true,
                    barrierColor: const Color.fromARGB(48, 0, 0, 0),
                    blur: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),

                    // Pass in any content that you want to be in the dialog body (Widget)
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
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "Show Popup",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
