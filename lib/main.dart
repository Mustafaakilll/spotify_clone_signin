import 'package:flutter/material.dart';

import 'screens/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Spotify UI',
      home: SingInPage(),
    );
  }
}
