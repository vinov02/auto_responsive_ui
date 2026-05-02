import 'package:flutter/material.dart';
import 'package:auto_responsive_ui/auto_responsive_ui.dart';

void main() {
  runApp(const MyApp());
}

/// Example app demonstrating auto_responsive_ui usage
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      config: const ResponsiveConfig(
        designWidth: 375,
        designHeight: 812,
      ),
      child: MaterialApp(
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Auto Responsive UI")),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Text(
          "Responsive Text",
          style: TextStyle(fontSize: 18.r),
        ),
      ),
    );
  }
}