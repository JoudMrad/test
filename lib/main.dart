import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:programming_languages/application/experHome_page.dart';
import 'package:programming_languages/application/expertDetails_page.dart';
import 'package:programming_languages/application/welcome_page.dart';
import 'package:programming_languages/calculator/bloc_observer.dart';
import 'package:programming_languages/calculator/counter_screen.dart';
import 'package:programming_languages/first_screen.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  // Use cubits...
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpertDetailsPage(),
    );
  }
}

