import 'package:flutter/material.dart';


class ChipWidget extends StatelessWidget {
  
  final String label;
  final IconData icon;
  final int value;
  final Color color;
  const ChipWidget({super.key, required this.label, required this.icon, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blue.withAlpha(25),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: const Color.fromARGB(255, 52, 126, 253).withAlpha(50))
      ),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.pinkAccent,),
          SizedBox(width: 8,), 
          Text("$label:"),
          Text("$value", style: const TextStyle(fontWeight: .bold),),

          
        ],
      ),
    );
  }
}