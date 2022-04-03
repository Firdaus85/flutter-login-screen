import 'package:flutter/material.dart';
import 'package:login_screen/loginScreen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 14.0),
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w800),
                ),
              ),
              alignment: Alignment.topRight,
            ),
            SizedBox(
              height: 34.0,
            ),
            Image.asset("images/image2.png"),
            SizedBox(
              height: 34.0,
            ),
            Text(
              "Go anywhere you want",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(
              "It's Not all about The ride,",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(204, 195, 248, 1),
              ),
            ),
            Text(
              "It's About The Experience",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(204, 195, 248, 1),
                fontWeight: FontWeight.w800,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Get started",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context, LoginScreen.idScreen, (route) => false);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      size: 34,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(8),
                        primary: Color.fromRGBO(147, 141, 210, 1)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
