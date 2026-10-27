import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String programStudi;
  final String email;
  final String lokasi;

  const ProfileInfo({
    super.key,
    required this.programStudi,
    required this.email,
    required this.lokasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.school, color: Colors.blue),
          title: Text(programStudi),
        ),
        ListTile(
          leading: const Icon(Icons.email, color: Colors.blue),
          title: Text(email),
        ),
        ListTile(
          leading: const Icon(Icons.location_on, color: Colors.blue),
          title: Text(lokasi),
        ),
      ],
    );
  }
}