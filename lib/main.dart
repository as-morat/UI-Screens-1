import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mr_ui/screen/bottom_bar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mr. UI',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: const BottomBarScreen(),
    );
  }
}
