import 'package:flutter/material.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String? selectedUserType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),

        
                // Charity Text (Yellow)
                Text(
                  "Charity",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[700],
                  ),
                ),
        
                // Sign Up Text (Black)
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),


        const SizedBox(height: 20,),
                // Stack for Side Lines & Signup Card
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Signup Card
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
                          // User Type Selection
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "type",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ChoiceChip(
                                      label: const Text("Donars"),
                                      selected: selectedUserType == "Donars",
                                      onSelected: (bool selected) {
                                        setState(() {
                                          selectedUserType = selected ? "Donars" : null;
                                        });
                                      },
                                      backgroundColor: Colors.grey[200],
                                      selectedColor: Colors.amber[700],
                                      labelStyle: TextStyle(
                                        color: selectedUserType == "Donars"
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: ChoiceChip(
                                      label: const Text("Requester"),
                                      selected: selectedUserType == "Requester",
                                    /*  onSelected: (bool selected) {
                                        setState(() {
                                          selectedUserType = selected ? "Requester" : null;
                                        });
                                      },*/
                                      // In SignUpPage's Requester ChoiceChip:
                                      onSelected: (bool selected) {
                                        setState(() {
                                          selectedUserType = selected ? "Requester" : null;
                                        });
                                        if (selected) {
                                       /*   Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const BecomeRequesterPage()),
                                          );*/
                                        }
                                      },

                                      backgroundColor: Colors.grey[200],
                                      selectedColor: Colors.amber[700],
                                      labelStyle: TextStyle(
                                        color: selectedUserType == "Requester"
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
        
                          const SizedBox(height: 15),
        
                          // Full Name TextField
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Full Name",
                              hintText: "Enter Full Name",
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
        
                          const SizedBox(height: 15),
        
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
        
                          // Phone TextField
                          TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: "Phone No.",
                              hintText: "Enter Phone No.",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
        
                          const SizedBox(height: 20),
        
                          // Sign Up Button
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber[700],
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 80),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              // Sign Up functionality
                            },
                            child: const Text(
                              "SIGNUP",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        
                const SizedBox(height: 20),
        
                // Sign In Button
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Go back to login
                  },
                  child: const Text(
                    "SIGN IN",
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