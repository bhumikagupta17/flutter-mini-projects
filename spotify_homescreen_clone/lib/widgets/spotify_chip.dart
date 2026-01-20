import 'package:flutter/material.dart';

class SpotifyChip extends StatelessWidget {
  const SpotifyChip({super.key, required this.heading, required this.imageUrl});
  final String heading;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color:  const Color(0xFF2A2A2A),
        
      ),
      child: Row(
        children: [
          Image.asset(imageUrl,  height: double.infinity,width: 56,),
          SizedBox(width: 8,),
          Text(
          textAlign: TextAlign.right,
          heading,
          style: const TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold,),
        ),
        ]
      ),
    );
  }
}