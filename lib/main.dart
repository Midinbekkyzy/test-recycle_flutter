import 'package:flutter/material.dart';

import 'car_list_screen.dart';

void main() {
  runApp(const TestRecycleApp());
}

class TestRecycleApp extends StatelessWidget {
  const TestRecycleApp({super.key});

  @override
  Widget build(BuildContext context) {
    const purple = Color.fromARGB(255, 154, 27, 27);

    return MaterialApp(
      title: 'Список машин',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 248, 241, 241),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 98, 7, 7),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 74, 6, 6),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const CarListScreen(),
    );
  }
}
