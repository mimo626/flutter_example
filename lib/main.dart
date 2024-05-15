import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Text(
          "Hello Flutter",
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
  ));
}