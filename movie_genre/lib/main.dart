import 'package:flutter/material.dart';
import 'package:movie_genre/rom_movie.dart';
import 'package:movie_genre/thriller_mov.dart';
import 'package:movie_genre/com_movie.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScreenOne(),
      // theme: ThemeData(
      //  primaryColor: Colors.green,
      //   textTheme: const TextTheme(
      //     titleMedium: TextStyle(
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //       color: Color.fromARGB(255, 255, 255, 255),
      //     ),
      //     bodyMedium: TextStyle(
      //       fontSize: 18,
      //       color: Color.fromARGB(255, 168, 183, 163),
      //     ),
      //   ),
      // ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Lists",style: TextStyle(color: Color(0xfff7ece1)),),
        backgroundColor: Color(0xff242038),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFcac4ce),
              Color(0xFF9067c6)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=> const RomMovie()));
            } ,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(54,54),
              backgroundColor: Color(0xff242038)
            ), 
            child: Text("Romantic movies",style: TextStyle(fontSize: 18,color: Color(0xfff7ece1),),)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const ThrillerMovie()));
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(54,54),
              backgroundColor: Color(0xff242038)
            ), 
             child:Text("Thriller movies",style: TextStyle(fontSize: 18,color: Color(0xfff7ece1),))),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const ComMovie()));
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(54,54),
              backgroundColor: Color(0xff242038)
            ), 
            child: Text("Comedy movies",style: TextStyle(fontSize: 18,color: Color(0xfff7ece1),))),
          ],
        ),
      ),
      );    
  }
}
