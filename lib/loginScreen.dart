import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  static const String idScreen = "login";
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 34, 8, 4),
                child: Image.asset("images/image1.png"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's",
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "get started!",
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "Please enter your details below to continue",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(204, 195, 248, 1),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 45.0,
                    ),
                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color.fromRGBO(204, 195, 248, 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        labelText: "Email address",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(204, 195, 248, 1),
                          fontSize: 20.0,
                        ),
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(204, 195, 248, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromRGBO(204, 195, 248, 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(204, 195, 248, 1),
                          fontSize: 20.0,
                        ),
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(204, 195, 248, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(147, 141, 210, 1),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          minimumSize: Size(double.infinity, 50)),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Do not have an account? Register here"),
                      style: TextButton.styleFrom(
                          primary: Color.fromRGBO(204, 195, 248, 1)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
