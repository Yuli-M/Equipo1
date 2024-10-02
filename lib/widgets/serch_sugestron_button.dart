
import 'package:flutter/material.dart';

class SearchSugestronButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const SearchSugestronButton(this.icon,
    this.text,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          //height: 40,
          //height: Responsive.heightPercentage(context, 0.0),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey), 
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 16, color: Colors.black), 
              Padding(padding: EdgeInsets.only(right: 8),),
              //const SizedBox(width: 8), 
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ],
          ),
        );
  }
}