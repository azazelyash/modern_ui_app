import 'package:firebase_login/components/signin_button.dart';
import 'package:firebase_login/components/square_tile.dart';
import 'package:firebase_login/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /* ---------------------------- Text Controllers ---------------------------- */

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  /* ----------------------------- SignIn Function ---------------------------- */

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /* ---------------------------------- Image --------------------------------- */

              const SizedBox(
                height: 30,
              ),
              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.black87,
              ),

              /* ---------------------------------- Title --------------------------------- */

              const SizedBox(
                height: 40,
              ),
              Text(
                'Welcome back you\'ve been missed!',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ),

              /* ----------------------------- Username Field ----------------------------- */

              const SizedBox(
                height: 25,
              ),
              MyTextField(
                hintText: "Username",
                controller: userNameController,
                obscureText: false,
              ),

              /* ----------------------------- Password Field ----------------------------- */

              const SizedBox(
                height: 10,
              ),
              MyTextField(
                hintText: "Password",
                controller: passwordController,
                obscureText: true,
              ),

              /* ----------------------------- Forgot Password ---------------------------- */

              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600])),
                    ),
                  ],
                ),
              ),

              /* ------------------------------ SignIn Button ----------------------------- */

              const SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: signUserIn,
              ),

              /* --------------------------------- Or Text -------------------------------- */

              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Or Continue With",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              /* ------------------------------ google logim ------------------------------ */

              const SizedBox(
                height: 25,
              ),
              const SquareTile(imagePath: 'assets/google.png'),

              /* ------------------------------ Register Now ------------------------------ */

              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Register Now',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 8, 69, 175),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
