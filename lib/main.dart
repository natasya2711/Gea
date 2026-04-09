import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/chip_widget.dart';
import 'package:flutter_application_1/widgets/header_widget.dart';
import 'package:flutter_application_1/widgets/quest_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure Guild',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Adventure Guild",
            style: TextStyle(fontWeight: .bold, color: Colors.greenAccent),
          ),
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [  
              HeaderWidget(name: "Nama saya", Level:10, role: "hdjdg"),
              SizedBox(height: 8,),
              Row(
                spacing: 8,
                children: [
                  ChipWidget(label: "Hp", value: 80, icon: Icons.favorite,),
                  ChipWidget(label: "gea", value: 80, icon: Icons.headset),
                  ChipWidget(label: "nata", value: 80, icon: Icons.mobile_off)
                ],
              )
              Text("queen"),
              QuestWidget()
            ],
          ),
        ),
      ),
    );
  }
}
