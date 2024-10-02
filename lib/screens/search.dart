import 'package:flutter/material.dart';
import 'package:instagram_equipo1/widgets/nav_bar.dart';
import 'package:instagram_equipo1/widgets/serch_sugestron_button.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white, 
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200], 
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search), 
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.circle, color: Colors.black), 
            onPressed: () {},
          ),
        ],
      ),
      
      body:Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              SearchSugestronButton(Icons.live_tv, 'Reels'),
              SearchSugestronButton(Icons.live_tv, 'Reels'),
              SearchSugestronButton(Icons.live_tv, 'Reels'),
              SearchSugestronButton(Icons.live_tv, 'Reels'),
            ],
          ),
          SizedBox(height: 20,),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
              ),
              itemCount: 12, 
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    //child: Icon(Icons.photo, color: Colors.grey[600]),
                  ),
                );
              },
            )
        ],
      ),
      bottomNavigationBar: NavBar(),
      ),
    );
  }
}
