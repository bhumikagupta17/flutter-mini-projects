import 'package:flutter/material.dart';

class SpotifyArtist extends StatelessWidget {
  const SpotifyArtist({super.key, required this.artistName, required this.artistImageUrl});
  final String artistName;
  final String artistImageUrl;
  final String subtitle="Artist";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(75),
            child: Image.asset(artistImageUrl, height: 150, width: 150, fit: BoxFit.cover,),
          ),
          SizedBox(height: 8,),
          Text(
            artistName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4,),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      )
    );
  }
}