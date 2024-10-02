import 'package:flutter/material.dart';

class CarruselItem extends StatelessWidget {
  final String displayText;
  const CarruselItem(
    this.displayText,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
          ),
          Text(displayText)
        ],
      ),
    );
  }
}

