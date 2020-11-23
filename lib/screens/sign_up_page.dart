import 'package:flutter/material.dart';

enum SingingCharacter { women, men }

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  SingingCharacter _character;

  @override
  Widget build(BuildContext context) {
    double widthPhone = MediaQuery.of(context).size.width;
    double heightPhone = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 120,
                  child: Image.asset("assets/Logo+Yazı.png"),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: buildTextFormField(text: "Email Address", circle: 32),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              child: buildTextFormField(text: "Full Name", circle: 32),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32, left: 32, bottom: 16),
              child: buildTextFormField(text: "Password", circle: 32),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Date Of Birth: ",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF1DB954),
                  ),
                ),
                Container(
                  width: 48,
                  height: 32,
                  child: buildTextFormField(text: "DD", circle: 32),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: 48,
                    height: 32,
                    child: buildTextFormField(text: "MM", circle: 32),
                  ),
                ),
                Container(
                  width: 48,
                  height: 32,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "YY",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: widthPhone / 3,
                    child: RadioListTile(
                      title: Text("Women"),
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                      },
                      value: SingingCharacter.women,
                    ),
                  ),
                  Container(
                    width: widthPhone / 3,
                    child: RadioListTile(
                      title: Text("Men"),
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                      },
                      value: SingingCharacter.men,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 336,
              height: 72,
              padding: EdgeInsets.only(top: 12),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xFF1DB954),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an acoount?",
                  style: TextStyle(color: Colors.grey),
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    " Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1DB954),
                    ),
                  ),
                )
              ],
            )
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
