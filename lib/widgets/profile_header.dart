import 'package:flutter/material.dart';
import 'profile_photo.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String nim;
  final double radius;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.nim,
    this.radius = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePhoto(radius: radius),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'NIM: $nim',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}