import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: UniChat()));

class UniChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UniChat 🥷")),
      body: Center(child: Text("UniChat 🥷\nReady", style: TextStyle(fontSize: 30), textAlign: TextAlign.center)),
    );
  }
}
