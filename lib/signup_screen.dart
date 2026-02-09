import 'package:flutter/material.dart';
import 'package:practice_ui/home_screen.dart';
import 'package:practice_ui/login_screen.dart';

class SignUp extends StatefulWidget{

  const SignUp({super.key});

  @override
  State<SignUp> createState() {
    return SignupScreen();
  }
}

class SignupScreen extends State<SignUp>{

  Color buttonColor = Color.fromRGBO(0, 217, 174, 1);

  bool? isChecked = false;

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
              "Sign Up",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  children: [
                    Expanded(
                      child: Material(
                        elevation: 3,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "First Name",
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
                      width: 10,
                    ),
                    Expanded(
                      child: Material(
                        elevation: 2,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        borderOnForeground: true,
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "Last Name",
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
                  ],
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 2,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                borderOnForeground: true,
                child: TextFormField(
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
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
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  overlayColor: WidgetStatePropertyAll(Color.fromRGBO(0, 217, 174, 1)),
                  side: BorderSide(color : Color.fromRGBO(0, 217, 174, 1)),
                  activeColor: Color.fromRGBO(0, 217, 174, 1),
                    value: isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue;
                      });
                    }
                ),
                Text(
                  "By CLicking SignUp You Agree To",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                  ),
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color:  Color.fromRGBO(0, 217, 174, 1),
                          fontSize: 10,
                        decoration: TextDecoration.underline,
                        decorationColor:  Color.fromRGBO(0, 217, 174, 1),
                      ),
                    )
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Home()));
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
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Or Sign UP Using Social Media",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
              height: 20,
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Already have an account ?"
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                    },
                    child: Text(
                      "LOG IN",
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