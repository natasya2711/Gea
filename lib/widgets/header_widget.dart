import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String role;
  final int level;
  final String rank;

  const HeaderWidget({super.key, required this.name, required this.role, required this.level, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.amberAccent],
          begin: .topStart,
          end: .bottomEnd
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://picsum.photos/id/237/200/300"),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8, vertical: 9,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Colors.pink
                  ),
                  child: Text(" Level $level",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 10,
                    fontWeight: .bold
                  ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text("Gea",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: .w400,
                  fontSize: 20,
                ),
                ),
                Text("Ball")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(4)
            ),
            child: Text(
              rank,
              style: GoogleFonts.bubblegumSans(
                textStyle: TextStyle(fontSize: 64, color: Colors.blueAccent.withAlpha(50)) ) ),
          )
        ],
      ),
    );
  }
}