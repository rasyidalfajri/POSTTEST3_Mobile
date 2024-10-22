import 'package:flutter/material.dart';
import 'package:posttest2/screens/wireframe1.dart';
import 'signin_page.dart';  
import 'signup_page.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pendataan Team dan Player MPL ID',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Menetapkan Wireframe1 sebagai halaman utama
      home: Wireframe1(),
      routes: {
        '/signin': (context) => SignInPage(),  
        '/signup': (context) => SignUpPage(),  
      },
    );
  }
}
