
import 'package:flutter/material.dart';
import 'package:instagram_equipo1/widgets/carrusel_item.dart';

class CarruselView extends StatelessWidget {
  const CarruselView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          //padding: const EdgeInsets.all(10),
          //margin: const EdgeInsets.only(top:10),
          height: 100,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CarruselItem("story"),
              CarruselItem('story'),
              CarruselItem('story'),
              CarruselItem('story'),
              CarruselItem('story'),
              CarruselItem('story'),
              CarruselItem('story'),
              CarruselItem('story'),
            ],
          ),
        );
  }
}
