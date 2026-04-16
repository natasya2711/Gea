import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/widgets/chip_widget.dart';
import 'package:flutter_application_1/widgets/header_widget.dart';
import 'package:flutter_application_1/widgets/quest_widget.dart'; // ← tambah import ini

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gea Natasya',
      initialRoute: "/Login",
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage()
      }
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // ← data quest disimpan di sini
  static const List<QuestModel> questList = [
    QuestModel(title: "Selamatkan Desa", reward: "500 Gold"),
    QuestModel(title: "Kalahkan Goblin", reward: "300 Gold"),
    QuestModel(title: "Ambil Ramuan Hutan", reward: "150 Gold"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adventure Guild",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            HeaderWidget(name: "Gea", level: 4, role: "semua", rank: "E"),
            SizedBox(height: 8),
            Row(
              children: [
                ChipWidget(color: Colors.tealAccent, icon: Icons.favorite, value: 18, label: "HP"),
                ChipWidget(color: Colors.redAccent, icon: Icons.water_drop, value: 18, label: "MP"),
                ChipWidget(color: Colors.limeAccent, icon: Icons.shield, value: 18, label: "DEF"),
              ],
            ),
            SizedBox(height: 8),
            Text("Quest List"),
            SizedBox(height: 8),

            // ← list quest dinamis dikirim ke QuestWidget
            Expanded(
              child: ListView.separated(
                itemCount: questList.length,
                separatorBuilder: (_, __) => SizedBox(height: 8),
                itemBuilder: (context, index) {
                  return QuestWidget(quest: questList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}