// ignore: file_names
import 'package:flutter/material.dart';
import 'package:session_7/layout/screen/home_screen.dart';

import '../widget/login_text_filed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'I',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const TextSpan(
                        text: 'Shop',
                        style: TextStyle(
                          color: Color(0xff0D0D0D),
                          letterSpacing: 1.2,
                          fontSize: 38,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                'Login',
                style: TextStyle(
                  color: Color(0xff0D0D0D),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 45),
              formBuilder('EMAIL', 'johndoe@gmail.com'),
              const SizedBox(height: 20),
              formBuilder('PASSWORD', '*******'),
              const SizedBox(height: 20),
              GestureDetector(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Forgot',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' Password?',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(height: 70),
              Center(
                child: primaryButton(
                  'LOGIN',
                  () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      )),
                  false,
                  context,
                ),
              ),
              const SizedBox(height: 17),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                        BorderSide(color: Theme.of(context).primaryColor)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 45,
                    ),
                    child: Text(
                      'Sign In with Google',
                      style: TextStyle(
                        fontSize: 19,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 100),
              Center(
                child: GestureDetector(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                            text: 'Don`t have an account?',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                          text: ' Sign Up',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
