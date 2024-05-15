import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              print("Tab");
            },
          ),
          Icon(Icons.add),
        ],
      ),
      body: TestWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bug_report),
        onPressed: (){
          print("Tab! Fab!");
        },
      ),
    ),
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 60, color: Colors.black),
        ),
      ),
    );
  }
}
