import 'package:flutter/material.dart';

import 'sign_up_page.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthPhone = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                SizedBox(width: widthPhone / 2.5),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/Logo.png"),
                ),
              ],
            ),
            Text(
              "Spotify",
              textScaleFactor: 2,
              style: TextStyle(
                fontSize: 32,
                color: Color(0xFF1DB954),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: buildTextFormField(text: "Username", circle: 32),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 64, left: 64, top: 16, bottom: 5),
              child: buildTextFormField(text: "Password", circle: 32),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150, bottom: 32),
              child: InkWell(
                child: Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              width: 272,
              height: 48,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: BorderSide(
                    color: Color(0xFF1DB954),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Sign In",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xFF1DB954),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    ),
                    child: Text(
                      " Sign Up",
                      style: TextStyle(color: Color(0xFF1DB954), fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField({String text, double circle}) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: text,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(circle),
        ),
      ),
    );
  }
}
