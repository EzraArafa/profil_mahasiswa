import 'package:flutter/material.dart';
import '../widgets/profile_photo.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // a) Bagian profil dibungkus Expanded + SingleChildScrollView di dalamnya
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    SizedBox(height: 16),
                    ProfilePhoto(radius: 60),
                    SizedBox(height: 24),
                    ProfileInfo(
                      name: 'Ezra Muhammad arafa',
                      nim: '23.11.5614',
                      programStudi: 'S1 Informatika',
                      email: 'email@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    SizedBox(height: 24),
                    SocialMediaRow(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),

            // b) Tombol aksi dibungkus Flexible sejajar langsung di Column utama
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.info),
                    label: const Text('Tentang'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}