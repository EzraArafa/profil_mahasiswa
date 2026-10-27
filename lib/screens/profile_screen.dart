import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';

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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const ProfileHeader(
                      name: 'Ezra Muhammad arafa',
                      nim: '23.11.5614',
                    ),
                    const SizedBox(height: 24),
                    const ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'email@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    const SizedBox(height: 24),
                    const SocialMediaRow(),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            const ActionButtons(),
          ],
        ),
      ),
    );
  }
}