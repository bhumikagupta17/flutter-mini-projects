import 'package:flutter/material.dart';
import 'package:movie_genre/tile.dart';
class ThrillerMovie extends StatelessWidget {
  const ThrillerMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thriller Movies",style: TextStyle(color:Color(0xfff7ece1)),),
        backgroundColor: Color(0xFF242038),
        automaticallyImplyLeading: false,
      ),
      body:ListView(
        children: const[
          Tile(
            title: "Andhadhun",
            subtitle: "2h 20m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/4/47/Andhadhun_poster.jpg",
            rating: 4.8,
          ),
          Tile(
            title: "Drishyam",
            subtitle: "2h 12m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/thumb/8/8a/Drishyam_2015_film.jpg/250px-Drishyam_2015_film.jpg",
            rating: 4.6,
          ),
          Tile(
            title: "Kahaani",
            subtitle: "2h 3m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/f/f2/Kahaani_poster.jpg",
            rating: 4.7,
          ),
          Tile(
            title: "Badla",
            subtitle: "1h 58m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/0/0c/Badla_poster.jpg",
            rating: 4.4,
          ),
          Tile(
            title: "Ittefaq",
            subtitle: "1h 50m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/f/f0/Ittefaq_%282017%29.jpg",
            rating: 4.1,
          ),
          Tile(
            title: "Talaash: The Answer Lies Within",
            subtitle: "2h 19m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/f/f3/Talaash_poster.jpg",
            rating: 4.3,
          ),
          Tile(
            title: "A Wednesday!",
            subtitle: "1h 40m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/7/77/A_Wednesday_Poster.JPG",
            rating: 4.6,
          ),
          Tile(
            title: "Gupt",
            subtitle: "2h 3m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/6/62/Gupt_poster.jpg",
            rating: 4.0,
          ),
          Tile(
            title: "Raat Akeli Hai",
            subtitle: "2h 15m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/c/cd/Raat_Akeli_Hai_film_poster.jpg",
            rating: 4.2,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 227, 224, 234),
        onPressed: (){Navigator.pop(context);},
        child: Icon(Icons.home,size: 30,),
        ),
        backgroundColor: const Color(0xFF8d86c9),);
  }
}