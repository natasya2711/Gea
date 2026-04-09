import 'package:flutter/material.dart';


class QuestWidget extends StatelessWidget {
  const QuestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.tealAccent.withAlpha(14),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.black.withAlpha(20))
          boxShadow: [
            BoxShadow(
              color: Colors.cyan.withAlpha(10),
              blurRadius: 10,
              offset: const Offset(0, 4))
            )
          ]
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.amber.withAlpha(12),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Icon(Icons.task, color: Colors.blueAccent,),
            )
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text("Gea"),
                  SizedBox(height: 2,),
                  Text("Reward: 20+ Gold")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}