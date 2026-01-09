import 'package:flutter/material.dart';
import 'package:movie_genre/tile.dart';

class RomMovie extends StatelessWidget {
  const RomMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Romantic Movies",style: TextStyle(color:Color(0xfff7ece1)),),
        backgroundColor:Color(0xFF242038),
        automaticallyImplyLeading: false,
      ),
      body:  ListView(
        children: const [
          Tile(title: "Dilwale Dulhania Le Jayenge", subtitle: "3h 1m", imageUrl: "https://upload.wikimedia.org/wikipedia/en/8/80/Dilwale_Dulhania_Le_Jayenge_poster.jpg", rating: 5),
            Tile(title: "Kabhi Khushi Kabhie Gham", subtitle: "3h 37m", imageUrl: "https://upload.wikimedia.org/wikipedia/en/4/4d/Kabhi_Khushi_Kabhie_Gham..._poster.jpg", rating: 4.4),
            Tile(title: "Veer-Zaara", subtitle: "3h 12m", imageUrl: "https://upload.wikimedia.org/wikipedia/en/1/1e/Veer-Zaara.jpg", rating: 4.3),
            Tile(title: "Maine Pyaar Kiya", subtitle: "3h 12m", imageUrl: "https://upload.wikimedia.org/wikipedia/en/9/96/Maine_Pyar_Kiya.jpg", rating: 4.2),
            Tile(title: "Hum Aapke Hain Koun..!", subtitle: "3h 40m", imageUrl: "https://upload.wikimedia.org/wikipedia/en/8/87/Hum_Aapke_Hain_Koun.._poster.jpg", rating: 4.1),
            Tile(title: "Devdas", subtitle: "3h 5m", imageUrl: "https://upload.wikimedia.org/wikipedia/en/9/9a/Devdas_%282002_Hindi_film%29.jpg", rating: 4.6),
            Tile(
            title: "Jab We Met",
            subtitle: "2h 30m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/9/9f/Jab_We_Met_Poster.jpg",
            rating: 4.5,
          ),
          Tile(
            title: "Barfi!",
            subtitle: "2h 36m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/2/2e/Barfi%21_poster.jpg",
            rating: 4.7,
          ),
          Tile(
            title: "Kal Ho Naa Ho",
            subtitle: "3h 3m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/4/45/Kal_Ho_Naa_Ho.jpg",
            rating: 4.4,
          ),
          Tile(
            title: "Ae Dil Hai Mushkil",
            subtitle: "2h 35m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ec/Ae_Dil_Hai_Mushkil.jpg",
            rating: 4.1,
          ),
          Tile(
            title: "Hum Dil De Chuke Sanam",
            subtitle: "2h 55m",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/2/2f/Hum_Dil_De_Chuke_Sanam.jpg",
            rating: 4.3,
          ),
        ],),
     floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 227, 224, 234),
        onPressed: (){Navigator.pop(context);},
        child: Icon(Icons.home,size: 30,),
        ),
       backgroundColor: const Color(0xFF8d86c9),
  );
  }
}      