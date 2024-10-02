import 'package:flutter/material.dart';
import 'package:instagram_equipo1/widgets/highlighted_stories.dart';
import 'package:instagram_equipo1/widgets/nav_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('username'), // username
              //Icon(Icons.expand_more),
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 218, 218, 218),
          actions: const [
            Icon(Icons.menu, size: 32),
          ],
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          //margin: EdgeInsets.only(top: 10),
          //padding: EdgeInsets.all(10),
          children: [ 
            Padding(padding: EdgeInsets.all(10)),
            //Padding(padding: EdgeInsets.only(right: 20)),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 35,
                      ),
                    ],
                  ),
                   SizedBox(width: 50),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("55",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("Post")
                          ],
                        ),
                        Column(
                          children: [
                            Text("152",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("Followers")
                          ],
                        ),
                        Column(
                          children: [
                            Text("50",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("Following")
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(padding: const EdgeInsets.all(10),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text('Your name'),
                        Text('Description'),
                        Text('Bio'),
                        Text(
                          'www.website.com',
                          //style: TextStyle(color: Colors.blueAccent),
                        ),
                  ],
                ),
            ),
            Padding(padding:  EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      width: 80,
                      height: 37,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      //child: TextButton(onPressed: () {},
                      //style: TextButton.styleFrom(
                        //backgroundColor: Colors.white,
                        //foregroundColor:Colors.black,
                      //),
                      child: Center(
                          child: Text('Following'),
                        ),
                      ),
                    //),
                    Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text('Message'),
                        ),
                      ),
                       Container(
                          height: 37,
                          width: 45,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz),
                            ),
                          ), 
                        )
                  ],
                  //HighlightedStories()
              ),
            ),
            HighlightedStories(),
            SizedBox(height: 20),


            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
              ),
              itemCount: 6, 
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
