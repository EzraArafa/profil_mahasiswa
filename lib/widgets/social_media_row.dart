import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Membuka $platform'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          // Guna FaIcon dan FontAwesomeIcons.instagram
          icon: const FaIcon(FontAwesomeIcons.instagram),
          color: Colors.pink,
          iconSize: 28,
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        IconButton(
          // Guna FaIcon dan FontAwesomeIcons.linkedin
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blue[700],
          iconSize: 28,
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        IconButton(
          // Guna FaIcon dan FontAwesomeIcons.github
          icon: const FaIcon(FontAwesomeIcons.github),
          color: Colors.black,
          iconSize: 28,
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}