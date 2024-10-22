import 'package:flutter/material.dart';
import '../wireframe2.dart';  // Pastikan Anda mengimpor Wireframe2

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Setelah berhasil Sign In, navigasi ke halaman Wireframe2
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Wireframe2()),
              );
            },
            child: Text('Sign In'),
          ),
          SizedBox(height: 16),
          TextButton(
            onPressed: () {
              // Navigasi ke halaman Sign Up
              Navigator.pushNamed(context, '/signup');
            },
            child: Text('Don\'t have an account? Sign Up'),
          ),
        ],
      ),
    );
  }
}
