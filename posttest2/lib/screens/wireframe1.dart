import 'package:flutter/material.dart';
import '../wireframe2.dart';
import '../wireframe4.dart'; 
import '../signin_page.dart'; // Pastikan Anda mengimpor SignInPage
import '../signup_page.dart'; // Pastikan Anda mengimpor SignUpPage

class Wireframe1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendataan Team dan Player MPL ID'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.lightBlue[50], // Warna latar belakang
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container untuk judul
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blueAccent, width: 2), // Border di sekitar Container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // posisi bayangan
                    ),
                  ],
                ),
                child: Text(
                  'Pendataan Team dan Player MPL ID',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              
              // Button untuk navigasi ke halaman Wireframe2
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Warna latar belakang tombol
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Padding tombol
                  textStyle: const TextStyle(fontSize: 18), // Ukuran teks tombol
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Wireframe2()),
                  );
                },
                child: const Text('Next'),
              ),
              
              const SizedBox(height: 20),
              
              // Button untuk navigasi ke halaman Wireframe4
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Wireframe4()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: const Text(
                    'Informasi Tentang MPL ID',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              
              // Button untuk Sign In
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Warna latar belakang tombol
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Padding tombol
                  textStyle: const TextStyle(fontSize: 18), // Ukuran teks tombol
                ),
                onPressed: () {
                  // Navigasi ke halaman Sign In
                  Navigator.pushNamed(context, '/signin');
                },
                child: const Text('Sign In'),
              ),

              const SizedBox(height: 20),
              
              // Button untuk Sign Up
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Warna latar belakang tombol
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Padding tombol
                  textStyle: const TextStyle(fontSize: 18), // Ukuran teks tombol
                ),
                onPressed: () {
                  // Navigasi ke halaman Sign Up
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
