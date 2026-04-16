import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestModel {
  final String title;
  final String reward;
  const QuestModel({
    required this.title,
    required this.reward,
  });
}

class QuestWidget extends StatelessWidget {
  final QuestModel quest;
  const QuestWidget({super.key, required this.quest});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: CupertinoColors.destructiveRed.withAlpha(14),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.deepPurpleAccent),
          boxShadow: [
            BoxShadow(
              color: Colors.amber,
              blurRadius: 10,
              offset: const Offset(0, 4)
            )
          ]
        ),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.blue.withAlpha(12),
                borderRadius: BorderRadius.circular(23),
              ),
              child: Icon(Icons.task_alt, color: Colors.deepOrange),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(quest.title),
                  SizedBox(height: 3),
                  Text(quest.reward),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}