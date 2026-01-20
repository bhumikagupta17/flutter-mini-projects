import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_homescreen_clone/widgets/spotify_album.dart';
import 'package:spotify_homescreen_clone/widgets/spotify_artist.dart';
import 'package:spotify_homescreen_clone/widgets/spotify_chip.dart';
import 'package:spotify_homescreen_clone/widgets/spotify_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
            
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Good Evening",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.white),),
                      Row(
                        children: [
                          spotifyIcon(Icons.notifications_none),
                          spotifyIcon(Icons.settings),
            
                        ],
                      ),
                      
                    ],
                )
                ),
                // Additional widgets can be added here to complete the home screen
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GridView.count(crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 8,
                  shrinkWrap: true,
                  childAspectRatio: 3.5,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SpotifyChip(heading: "Liked Song",imageUrl: "assets/likedsong.png",),
                    SpotifyChip(heading: "Chill Hits",imageUrl: "assets/chillhits.png",),
                    SpotifyChip(heading: "Top Songs",imageUrl: "assets/topsongs.png",),
                    SpotifyChip(heading: "Daily Mix 1",imageUrl: "assets/dailymix1.png",),
                  ],
                  )
                ),
                SizedBox(height: 24,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Recommended for You",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),)
                      ),
                    SizedBox(height: 12,),
                    SizedBox(height: 240,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const ScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()
                        ),
                        primary: false,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        children: [
                          SpotifyAlbum(albumTitle: "Ishq Da Chehra", artistName: "Diljit Dosanjh,Sachet Tandon", albumArtUrl: "assets/IshqdaChehra.png",),
                          SizedBox(width: 16,),
                          SpotifyAlbum(albumTitle: "Finding Her", artistName: "Kushagra,Bharath,Saaheal", albumArtUrl: "assets/findingHer.png",),
                          SizedBox(width: 16,),
                          SpotifyAlbum(albumTitle: "Saiyaara", artistName: "Tanishk Bagchi, Faheem Abdullah", albumArtUrl: "assets/saiyaara.png",),
                          SizedBox(width: 16,),
                          SpotifyAlbum(albumTitle: "Shararat", artistName: "Shashwat Sachdev,Madhubanti Bagchi", albumArtUrl: "assets/shararat.png",),
                          SizedBox(width: 16,),
                          SpotifyAlbum(albumTitle: "Boyfriend", artistName: "Karan Aujla, Ikky", albumArtUrl: "assets/boyfriend.png",),
                          SizedBox(width: 16,),
                          SpotifyAlbum(albumTitle: "Pasoori", artistName: "Ali Sethi, Shae Gill", albumArtUrl: "assets/pasoori.png",),
                      
                        ],
                      ),
                    ),
                     SizedBox(height: 24,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          textAlign: TextAlign.start,
                          "Popular artists",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
                          )
                        ),
                        SizedBox(height: 12,),
                        SizedBox(height: 210,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const ScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()
                            ),
                            primary: false,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            children: [
                             SpotifyArtist(artistName: "Pritam", artistImageUrl: "assets/pritam.png",),
                             SizedBox(width: 16,),
                             SpotifyArtist(artistName: "Arijit Singh", artistImageUrl: "assets/arijit.png",),
                             SizedBox(width: 16,),
                             SpotifyArtist(artistName: "Neha Kakkar", artistImageUrl: "assets/nehakakkar.png",),
                             SizedBox(width: 16,),
                             SpotifyArtist(artistName: "Badshah", artistImageUrl: "assets/badshah.png",),
                             SizedBox(width: 16,),
                             SpotifyArtist(artistName: "Shreya Ghoshal", artistImageUrl: "assets/shreyaghoshal.png",),
                             SizedBox(width: 16,),
                            SpotifyArtist(artistName: "Darshan Raval", artistImageUrl: "assets/darshan.png",),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          textAlign: TextAlign.start,
                          "Popular albums and singles",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
                          )
                        ),
                        SizedBox(height: 12,),
                        SizedBox(height: 240,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const ScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()
                            ),
                            primary: false,
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            children: [
                              SpotifyAlbum(albumTitle: "Aashiqui 2", artistName: "Mithoon, Ankit Tiwari, Jeet Gannguli", albumArtUrl: "assets/aashiqui.png",),
                              SizedBox(width: 16,),
                              SpotifyAlbum(albumTitle: "Yeh Jawaani Hai Deewani", artistName: "Pritam", albumArtUrl: "assets/yjhd.png",),
                              SizedBox(width: 16,),
                              SpotifyAlbum(albumTitle: "Raanjhan (From 'Do Patti')", artistName: "Sachet-Parampara, Parampara Tandon,", albumArtUrl: "assets/raanjhan.png",),
                              SizedBox(width: 16,),
                              SpotifyAlbum(albumTitle: "Making Memories", artistName: "Karan Aujla, Ikky", albumArtUrl: "assets/making.png",),
                            ],
                          ),
                        ),
                  ],
                ),
              ],
            ),
          ],),
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black.withOpacity(0.6),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.white,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music,color: Colors.white,),
            label: 'Your Library',
          ),
        ] ),
    ));
  }
}