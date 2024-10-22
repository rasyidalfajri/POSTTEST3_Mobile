import 'package:flutter/material.dart';

class Wireframe4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi MPL ID'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Apa itu MPL ID?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'MPL ID (Mobile Legends Professional League Indonesia) adalah liga profesional yang diadakan untuk permainan Mobile Legends: Bang Bang di Indonesia. Liga ini memberikan kesempatan bagi tim-tim untuk bersaing di tingkat tinggi dan meraih prestasi di kancah nasional maupun internasional.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Tujuan MPL ID',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '1. Meningkatkan kualitas permainan Mobile Legends di Indonesia.\n'
              '2. Memberikan platform bagi pemain dan tim untuk menunjukkan bakat mereka.\n'
              '3. Menjadi ajang kompetisi yang menarik dan profesional di dunia eSports.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Format Liga',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'MPL ID biasanya terdiri dari beberapa fase, termasuk penyisihan grup dan babak playoff, di mana tim-tim terbaik bersaing untuk menjadi juara. Liga ini diadakan secara berkala dan diikuti oleh banyak tim dari seluruh Indonesia.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigasi kembali ke halaman sebelumnya
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
