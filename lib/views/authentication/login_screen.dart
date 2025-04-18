import 'package:charity_app/views/authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:charity_app/consts/colors.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                const SizedBox(height: 20),

                // Charity Text (Yellow)
                Text(
                  "Charity",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: yellowColor,
                  ),
                ),

                // Sign In Text (Black)
                const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 20,),

                // Stack for Side Lines & Login Card
                Stack(
                  alignment: Alignment.center,
                  children: [

                    // Login Card
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Email TextField
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Email Address",
                              hintText: "Enter email Address",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          // Password TextField
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Enter Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),

                          // Forget Password Right-Aligned
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                // Forgot Password Action
                              },
                              child: const Text(
                                "Forget password",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                          ),

                          // Login Button
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: yellowColor,
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 80),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              // Login Functionality
                            },
                            child: const Text(
                              "LOG IN",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Sign Up Button
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignupScreen()),
                    );

                  },
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
