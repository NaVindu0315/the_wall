import "package:flutter/material.dart";

import "../components/button.dart";
import "../components/text_field.dart";

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                SizedBox(
                  height: 50,
                ),
                //welcome back message
                //welcome back message
                Text(
                  "welcome Back You've been Missed",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                //email
                MyTextField(
                    controller: emailTextController,
                    hintText: 'Email',
                    obsecureText: false),

                //pwd
                MyTextField(
                    controller: passwordTextController,
                    hintText: 'password',
                    obsecureText: true),
                SizedBox(
                  height: 10,
                ),

                //sign in button
                MyButton(onTap: null, text: "Sign in"),

                //go to register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Register now ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    )
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
