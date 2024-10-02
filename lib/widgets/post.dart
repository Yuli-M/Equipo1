import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          //padding: const EdgeInsets.all(0),
          padding: EdgeInsetsDirectional.symmetric(horizontal: 0.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                  ),
                  //const SizedBox(width: 10),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Eleazar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('Mexico',
                        style: TextStyle(
                          color: Colors.grey,
                          //fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              ),
              
              //const SizedBox(height: 20),
              Padding(padding: EdgeInsets.only(bottom: 15)),
              Container(
                width: double.infinity,
                height: 300,
                //height: Responsive.heightPercentage(context, 0.50),
                color: Colors.grey,
                //child: Image.network('https://www.',
                //fit: BoxFit.cover,),
                child: Center(
                child: Icon(Icons.photo, color: Colors.grey[600]),
              ),

              ),
                          
                          const SizedBox(height: 20),
                          
                          const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(padding: EdgeInsets.only(left:15)),
                      Icon(Icons.favorite_outline, color: Colors.black),
                      Padding(padding: EdgeInsets.only(left:10)),
                      Icon(Icons.comment_outlined, color: Colors.black),
                      //SizedBox(width: 10),
                      Padding(padding: EdgeInsets.only(left:10)),
                      Icon(Icons.send_outlined, color: Colors.black),
                    ],
                  ),
                  const Icon(Icons.more_horiz_outlined, color: Colors.blue),
                  const Icon(Icons.bookmark_border_outlined, color: Colors.black),
                ],
              ),
            ],
          ),
        );
  }
}
