import 'package:flutter/material.dart';

import 'src/presentation/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: false,
        scaffoldBackgroundColor: const Color(0xff1C1A1E),
        brightness: Brightness.dark
      ),
      home: const DashboardScreen(),
    );
  }
}
