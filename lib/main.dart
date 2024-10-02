import 'package:flutter/material.dart';
import 'package:instagram_equipo1/screens/profile.dart';
import 'package:instagram_equipo1/screens/search.dart';
import 'package:instagram_equipo1/widgets/carrusel_item.dart';
import 'package:instagram_equipo1/widgets/carrusel_view.dart';
import 'package:instagram_equipo1/widgets/nav_bar.dart';
import 'package:instagram_equipo1/widgets/post.dart';

void main() {
  runApp(const MainApp());
  //runApp(const Profile());
  //runApp(const Search());

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 218, 218, 218),
          leading: const Icon(Icons.camera_alt_outlined, color: Colors.black),
          actions: const [
            Icon(Icons.send_outlined, size: 32, color: Colors.black),
          ],
        ),
        body: ListView(
          children:[
            SizedBox(height: 20,),
            SizedBox(
              child: CarruselView(),
            ),
            Post(),
            Post(),
          ],
        ),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}
