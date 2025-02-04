import 'package:flutter/material.dart';
import 'package:rankify/auth/screens/signin.dart';
import 'package:rankify/constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
    theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Signin(),
    );
  }
}

