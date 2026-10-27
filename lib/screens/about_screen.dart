import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center, 
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),

            // b) Teks "Tentang Aplikasi" di tengah
            const Text(
              'Tentang Aplikasi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            // c) Tombol "Kembali" di pojok kiri atas menggunakan Positioned
            Positioned(
              top: 16, // Jarak dari atas
              left: 16, // Jarak dari kiri
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  // Sesuai petunjuk c: Kembali ke halaman sebelumnya
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}