import 'package:flutter/material.dart';
import 'package:movie_genre/tile.dart';
class ComMovie extends StatelessWidget {
  const ComMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comedy Movies",style: TextStyle(color: Color(0xfff7ece1)),),
        backgroundColor: Color(0xFF242038),
        automaticallyImplyLeading: false,
      ),
      body:ListView(
        children: const[
          Tile(
          title: "Hera Pheri",
          subtitle: "2h 36m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/a/a5/Hera_Pheri_2000_poster.jpg",
          rating: 4.7,
        ),
        Tile(
          title: "Munna Bhai M.B.B.S.",
          subtitle: "2h 37m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/8/84/Munna_Bhai_M.B.B.S._poster.jpg",
          rating: 4.6,
        ),
        Tile(
          title: "Golmaal: Fun Unlimited",
          subtitle: "2h 46m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/b/b4/Golmaal-Fun_Unlimited.jpg",
          rating: 4.3,
        ),
        Tile(
          title: "Phir Hera Pheri",
          subtitle: "2h 33m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/3/3a/Still-phir-hera-phir.jpg",
          rating: 4.4,
        ),
        Tile(
          title: "Bhagam Bhag",
          subtitle: "2h 33m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/c/c3/BhagamBhag.jpg",
          rating: 4.1,
        ),
        Tile(
          title: "Welcome",
          subtitle: "2h 30m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/f/f4/Welcome_poster_2007.jpg",
          rating: 4.0,
        ),
        Tile(
          title: "Bhool Bhulaiyaa",
          subtitle: "2h 34m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/6/6f/Bhool_bhulaiyaa.jpg",
          rating: 4.5,
        ),
        Tile(
          title: "3 Idiots",
          subtitle: "2h 48m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/d/df/3_idiots_poster.jpg",
          rating: 4.8,
        ),
        Tile(
          title: "Chashme Baddoor",
          subtitle: "2h 3m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/9/92/Chashme_Baddoor_%282013_film%29_Poster.jpg",
          rating: 4.0,
        ),
        Tile(
          title: "Pagalpanti",
          subtitle: "2h 29m",
          imageUrl: "https://upload.wikimedia.org/wikipedia/en/4/43/Pagalpanti_film_poster.jpg",
          rating: 3.8,
        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 227, 224, 234),
        onPressed: (){Navigator.pop(context);},
        child: Icon(Icons.home,size: 30,),
        ),
        backgroundColor: const Color(0xFF8d86c9),
    );
  }
}