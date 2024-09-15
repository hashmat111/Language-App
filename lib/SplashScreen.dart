import 'dart:async';
import 'package:flutter/material.dart';
import 'package:languageapp/FirstPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FirstPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.language, size: 100, color: Colors.white),
              SizedBox(height: 20),
              Text(
                "FrançaisFacile",
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Text("Français", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("English", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("پښتو", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("دری", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("العربية", style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
