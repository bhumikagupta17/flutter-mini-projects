import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
    final String title;
  final String subtitle;
  final String imageUrl;
  final double rating;
  const Tile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.rating,
  });

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        color: const Color(0xFFcac4ce),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFf242038)),),
          contentPadding: EdgeInsets.all(8.0),
          subtitle: Row(
            children: [
              Text(subtitle ,style: TextStyle(fontSize: 18,color: Color(0xff242038)),),
              SizedBox(width: 10),
              Icon(Icons.star, color: Colors.amber, size: 18),
              SizedBox(width: 4),
              Text(rating.toString(),style: TextStyle(fontSize: 18,color: Color(0xff242038)),),
            ],
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.broken_image, size: 50);
              },
              width: 50,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}