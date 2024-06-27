import 'package:flutter/material.dart';
import 'package:poo_tracker/calender.dart';
import 'package:poo_tracker/create_log.dart';
import 'package:poo_tracker/first_cerate_log.dart';
import 'package:poo_tracker/create_account_screen.dart';
import 'package:poo_tracker/login_screen.dart';
import 'package:poo_tracker/start_screen.dart';

void main() {
  runApp(const MyApp());
}
Color themeColor  = const Color.fromRGBO(1, 170, 79, 1);
Color fontColor  = const Color.fromRGBO(1, 170, 79, 1);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(1, 170, 79, 1),
        scaffoldBackgroundColor: Colors.white
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      // home:  StartScreen(),
      home: LoginPage(),
      // home: CreateAccount(),
      // home: CreateLogScreen(),
      // home: DailyCalender(),
      // home: CreateLog(),
    );
  }
}

