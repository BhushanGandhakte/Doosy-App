import 'package:flutter/material.dart';
import 'package:practice_ui/login_screen.dart';
import 'package:practice_ui/signup_screen.dart';

class Welcome extends StatefulWidget{

  const Welcome({super.key});

  @override
  State<Welcome> createState() {
    return _WelcomeScreen();
  }
}

class _WelcomeScreen extends State<Welcome>{

  Color buttonColor =  Color.fromRGBO(0, 217, 174, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body  :
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 96,
                ),
                Image.asset(
                    'assets/images/welcome_icon.png',
                  height: 187.37,
                  width: 283.7,
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 8,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: CircleAvatar(
                        radius: 2,
                        backgroundColor: Color.fromRGBO(0, 217, 174, 1),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 8,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                    "WELCOME",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 56,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      buttonColor = Color.fromRGBO(0, 217, 174, 1);
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
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
                  height: 26,
                ),
                InkWell(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp())),
                  },
                  child: Container(
                    height: 48,
                    width: 315,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(214, 214, 214, 1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      "Guest User",
                          style : TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromRGBO(0, 217, 174, 1),
                            color: Color.fromRGBO(0, 217, 174, 1),
                          )
                    )
                )
              ],
            ),
          ),
        ),
    );
  }

}