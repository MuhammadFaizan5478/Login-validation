import 'package:flutter/material.dart';
import 'change_password.dart';
import 'confirmation.dart';
import 'forget_password.dart';
import 'login.dart';
import 'signup.dart';
import 'sucessful_register.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.redAccent,
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        suffixIconColor: Colors.red,
      ),
      hintColor: Colors.black,
    ),
    debugShowCheckedModeBanner: false,
    home: const Home(),
    routes: {
      '/login': (context) => LoginPage(),
      '/forget': (context) => forget_password(),
      '/signup': (context) => signup(),
      '/registered': (context) => const registered(),
      '/Confirmation': (context) => Confirmation(),
      '/changepass': (context) => changepass(),
    },
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0),
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Navigation buttons to follow up the pages',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                /**** 1 Column *********/
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                              elevation: 5,
                              shadowColor: Colors.black12,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(image: AssetImage('assets/enter.png')),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        // forget password Button
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              elevation: 5,
                              shadowColor: Colors.black12,
                            ),
                            child: Column(
                              children: const [
                                Image(image: AssetImage('assets/add-user.png')),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Sign Up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                /**** 1 Column End *********/
                const SizedBox(
                  height: 15.0,
                ),
                /**** 2 Column *********/
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/forget');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              elevation: 5,
                              shadowColor: Colors.black12,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(image: AssetImage('assets/forgot.png')),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Forget Password',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        // forget password Button
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/registered');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              elevation: 5,
                              shadowColor: Colors.black12,
                            ),
                            child: Column(
                              children: const [
                                Image(image: AssetImage('assets/user.png')),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Registered',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                /***** 2 Column End  *****/
                const SizedBox(
                  height: 15.0,
                ),
                /***** 3 Column   *****/
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Confirmation');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              elevation: 5,
                              shadowColor: Colors.black12,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(image: AssetImage('assets/confirm.png')),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Confirmation',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        // forget password Button
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/changepass');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              elevation: 5,
                              shadowColor: Colors.black12,
                            ),
                            child: Column(
                              children: const [
                                Image(image: AssetImage('assets/padlock.png')),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Change Password',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                /***** 3 Column End  *****/

                const SizedBox(
                  height: 30.0,
                ),
                Column(
                  children: const [
                    Text(
                      'Design by Muhammd Faizan',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Student ID: 210218304',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
