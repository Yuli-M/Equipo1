
import 'package:flutter/material.dart';

class HighlightedStories extends StatelessWidget {
  const HighlightedStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            //const SizedBox(height: 10), 
            SizedBox(
              height: 80, // 
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // cuantas historias
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[300],
                          child: Icon(Icons.add),
                          //child: IconButton(
                            //icon: const Icon(Icons.add, color: Colors.black),
                            //onPressed: () {
                              // 
                            //},
                          //),
                        ),
                        // imagen
                        // CircleAvatar(
                        //   radius: 30,
                        //   backgroundImage: NetworkImage('url_de_la_imagen'),
                        // ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
  }
}