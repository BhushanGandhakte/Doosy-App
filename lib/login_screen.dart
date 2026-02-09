import 'package:flutter/material.dart';
import 'package:practice_ui/bottom_navigation_bar.dart';
import 'package:practice_ui/signup_screen.dart';

import 'home_screen.dart';

class Login extends StatefulWidget{

  const Login({super.key});

  @override
  State<Login> createState() {
    return LoginScreen();
  }
}

class LoginScreen extends State<Login>{

  Color  buttonColor = Color.fromRGBO(0, 217, 174, 1);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Log In",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                elevation: 2,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                borderOnForeground: true,
                child: TextFormField(
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone",
                    labelStyle: TextStyle(
                      color: Colors.grey
                    ),

                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(0, 217, 174, 1), width: 1,),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(0, 217, 174, 1), width: 1,),
                    )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Click Here For Email Login",
                      style: TextStyle(
                        fontSize: 12.5,
                        color: Colors.grey,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey,
                      ),
                    ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 12.5,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNav()));
                setState(() {
                  buttonColor = Color.fromRGBO(0, 217, 174, 1);
                });
              },
              child: Ink(
                height: 48,
                width: 315,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                  "Or Log In Using Social Media",
                style: TextStyle(
                 color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48,
                  width: 146,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(0, 127, 255, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                          'assets/images/facebook.png',
                        height: 17,
                        width: 17,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 48,
                  width: 146,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(3, 3)
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/google-icon.png',
                        height: 17,
                        width: 17,
                      ),
                      Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Guest User",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 217, 174, 1),
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromRGBO(0, 217, 174, 1),
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Don't have an account ?"
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                    },
                    child: Text(
                        "SIGN UP",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 217, 174, 1),
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}