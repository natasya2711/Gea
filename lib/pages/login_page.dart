import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController levelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Login"),
          
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(label: Text("nama")),
              ),

              TextFormField(
                controller: levelController,
                decoration: InputDecoration(label: Text("nama")),
              ),

              SizedBox(
                child: ElevatedButton(onPressed: () {
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(namaController.text)));
                  };
                  Navigator.pushNamed(context, "/");
                }, 
                child: Text("Ayo Loginn")),
              )
            ],
          ),
        ),
      ),
    );
  }
}