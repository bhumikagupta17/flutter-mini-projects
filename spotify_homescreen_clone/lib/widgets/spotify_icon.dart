import 'package:flutter/material.dart';

Widget spotifyIcon(IconData icon) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey.shade900,
    ),
    child: IconButton(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
    ),
  );
}