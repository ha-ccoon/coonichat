import 'package:coonichat/components/rounded_text_form.dart';
import 'package:coonichat/components/top_background.dart';
import 'package:coonichat/config/palette.dart';
import 'package:coonichat/routes.dart';
import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignUpScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          /// top background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: isSignUpScreen
                ? const TopBackground(
                    titleText: 'to Yummy chat',
                    continueText: 'Sign up to continue',
                  )
                : const TopBackground(
                    titleText: 'back',
                    continueText: 'Sign in to continue',
                  ),
          ),

          /// loginSignup field
          Positioned(
            top: 180,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              height: 280.0,

              /// widget to rebuild automatically whenever any field of the MediaQueryData changes
              /// ex. MediaQuery.sizeOf and MediaQuery.paddingOf
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignUpScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignUpScreen
                                    ? Palette.activeColor
                                    : Palette.textColor1,
                              ),
                            ),
                            if (!isSignUpScreen)
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),

                      /// A widget that detects gestures
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignUpScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSignUpScreen
                                    ? Palette.activeColor
                                    : Palette.textColor1,
                              ),
                            ),
                            if (isSignUpScreen)
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (!isSignUpScreen)
                    Container(
                      margin: const EdgeInsets.only(top: 20),

                      /// grouping multiple form field widgets
                      child: const Form(
                        child: Column(
                          children: [
                            RoundedTextForm(
                              inputValue: 'Username',
                              icon: Icons.account_circle,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            RoundedTextForm(
                              inputValue: 'Email',
                              icon: Icons.email,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            RoundedTextForm(
                              inputValue: 'Password',
                              icon: Icons.lock,
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (isSignUpScreen)
                    Container(
                      margin: const EdgeInsets.only(top: 20),

                      /// grouping multiple form field widgets
                      child: const Form(
                        child: Column(
                          children: [
                            RoundedTextForm(
                              inputValue: 'Username',
                              icon: Icons.account_circle,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            RoundedTextForm(
                              inputValue: 'Email',
                              icon: Icons.email,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),

          // arrow button
          Positioned(
            top: 430,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.red,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 1,
                          spreadRadius: 1,

                          /// 그림자가 위치할 위치를 정의 (x 축으로 0, y 축으로 1)
                          offset: const Offset(0, 1) // spreadRadius: 5,
                          )
                    ],
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 100,
            right: 100,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Text(
                style: TextStyle(
                  color: Colors.black,
                ),
                'Go!',
              ),
            ),
          ),
          // googleSignup button
          Positioned(
              top: MediaQuery.of(context).size.height - 125,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  const Text('or Sign up with'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(155, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Palette.googleColor,
                    ),
                    icon: const Icon(Icons.add),
                    label: const Text('Google'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
