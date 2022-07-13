import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mylogin/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 70),
                // Image(
                //   alignment: Alignment.center,
                //   height: 100.0,
                //   width: 100.0,
                //   image: AssetImage('lib/assets/images/logo.png'),
                // ),
                SizedBox(height: 70),
                Text(
                  "Sign In as a Rider",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontFamily: 'Brand-Bold'),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0,
                            )),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _password,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0,
                            )),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 40),
                      TextButton(
                        onPressed: signIn,
                        child: Text('Login'),
                      )
                      // FillButton(
                      //   title: 'Login',
                      //   color: BrandColors.colorGreen,
                      //   onPressed: () async {
                      //     // Check Network Availability
                      //     var connectivityResult =
                      //         await Connectivity().checkConnectivity();

                      //     if (connectivityResult != ConnectivityResult.mobile &&
                      //         connectivityResult != ConnectivityResult.wifi) {
                      //       showSnackBar("No Internet Connectivity.");
                      //       return;
                      //     }

                      //     if (passwordController.text.length < 8) {
                      //       showSnackBar("Please enter a valid password");
                      //       return;
                      //     }

                      //     login();
                      //   },
                      // ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, RegisterScreen.routeName, (route) => false);
                    },
                    child: Text("Don\'t have an account? Sign Up here."))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _email.text.trim(),
      password: _password.text.trim(),
    );
  }
}
