import 'package:flutter/material.dart';
import 'package:grocery_app/ui/grocery_list.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Groceries',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 249, 223, 223), 
          brightness: Brightness.light, 
          surface: const Color.fromARGB(255, 255, 208, 199)
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 251, 239, 239),
        textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
      ),
      home: const GroceryList(),
    );
  }
}
