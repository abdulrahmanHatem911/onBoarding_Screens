import 'package:flutter/material.dart';
import 'package:session_7/layout/screen/Login_screen.dart';
import 'package:session_7/layout/screen/home_screen.dart';
import 'package:session_7/layout/screen/splash_screen.dart';
import 'package:session_7/model/cash_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.inIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFF038C7F),
        fontFamily: 'nmed',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0.0,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff027373),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
