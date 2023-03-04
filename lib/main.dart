import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Paimon",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Paimon"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hi Rabbit"),
          ],
        ),
      ),
    ),
  ));
}
