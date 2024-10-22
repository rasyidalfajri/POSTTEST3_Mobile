import 'package:flutter/material.dart';
import 'wireframe3.dart';

class Wireframe2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Team MPL ID'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TeamSelectionWidget(teamName: 'EVOS', logoPath: 'assets/evos.png'),
            SizedBox(height: 16),
            TeamSelectionWidget(teamName: 'RRQ', logoPath: 'assets/rrq.png'),
            SizedBox(height: 16),
            TeamSelectionWidget(teamName: 'ONIC', logoPath: 'assets/onic.png'),
          ],
        ),
      ),
    );
  }
}

class TeamSelectionWidget extends StatelessWidget {
  final String teamName;
  final String logoPath;

  TeamSelectionWidget({required this.teamName, required this.logoPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman Wireframe3
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Wireframe3()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8), // Jarak antar logo
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2), // Border di sekitar container
          borderRadius: BorderRadius.circular(10), // Membuat sudut membulat
          image: DecorationImage(
            image: AssetImage(logoPath),
            fit: BoxFit.cover, // Atur ukuran gambar sesuai container
          ),
          color: Colors.grey[200], // Warna latar belakang jika gambar tidak ada
        ),
        height: 100, // Tinggi container
        width: double.infinity, // Lebar penuh
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Teks dengan border
            Text(
              teamName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.transparent, // Membuat teks di bawah transparan
              ),
            ),
            // Teks border
            Text(
              teamName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.black, // Warna border
              ),
            ),
            // Teks asli di atas
            Text(
              teamName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna teks asli
              ),
            ),
          ],
        ),
      ),
    );
  }
}
