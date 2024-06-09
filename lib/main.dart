import 'package:flutter/material.dart';
import 'package:yagmur/core/constants/color_constants.dart';
import 'package:yagmur/screen/home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: ColorConstants.bgColor),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
