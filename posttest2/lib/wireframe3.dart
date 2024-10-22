import 'package:flutter/material.dart';

class Wireframe3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendataan Team MPL ID'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey[100], // Warna latar belakang
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputField('Nama Player:', 'Masukkan Nama Player'),
              _buildInputField('Asal Negara:', 'Masukkan Asal Negara'),
              _buildInputField('Usia:', 'Masukkan Usia Player'),
              _buildInputField('Role:', 'Masukkan Role Player'),
              SizedBox(height: 20), // Jarak sebelum tombol
              ElevatedButton(
                onPressed: () {
                  // Tindakan saat tombol ditekan
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Data berhasil disimpan!')),
                  );
                },
                child: const Text('Kirim Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label, String hint) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4, // Menambahkan bayangan pada card
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8), // Jarak antara label dan field
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: hint,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
