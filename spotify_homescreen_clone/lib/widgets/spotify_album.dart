import "package:flutter/material.dart";

class SpotifyAlbum extends StatelessWidget {
  const SpotifyAlbum({super.key, required this.albumTitle, required this.artistName, required this.albumArtUrl});
  final String albumTitle;
  final String artistName ;
  final String albumArtUrl ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        children: [
          Image.asset(albumArtUrl, height: 150, width: 150, fit: BoxFit.cover,),
          SizedBox(height: 8,),
          Text(
            albumTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4,),
          Text(
            artistName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      )
    );
  }
}