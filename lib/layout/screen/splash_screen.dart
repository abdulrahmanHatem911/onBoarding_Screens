import 'package:flutter/material.dart';
import 'package:session_7/layout/screen/Login_screen.dart';
import 'package:session_7/layout/screen/home_screen.dart';
import 'package:session_7/layout/screen/on_boarding_screen.dart';
import 'package:session_7/model/cash_helper.dart';
import 'package:session_7/model/on_bording_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateTO();
    super.initState();
  }

  navigateTO() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    bool onBoarding = CacheHelper.getData(key: 'onBoarding') ?? false;
    late Widget widget;
    print('yhe valu in on boarding ==>> ${onBoarding}');
    setState(() {
      if (onBoarding == true) {
        widget = const LoginScreen();
      } else {
        widget = const OnBoardingScreen();
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              child: const Image(
                image: AssetImage('assest/image/02.gif'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
