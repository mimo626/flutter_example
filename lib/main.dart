import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Study to Container"),
      ),
      body: Body(),
    ),
  ));
}

// 박스
class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        decoration: BoxDecoration(
            color: Color(0xFF3DDC84),
            border: Border.all(
                color: Colors.red, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(6, 6),
                  blurRadius: 10,
                  spreadRadius: 10),
              BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  offset: Offset(-6, -6),
                  blurRadius: 10,
                  spreadRadius: 10),
            ]),
        child: Center(
            child: Container(
                color: Colors.yellow.shade200,
                child: Text(
                    "Hello Container Hello Container Hello Container Hello Container"))),
      ),
    );
  }
}

// 스크롤
class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
    );
  }
}

// Flexible 안에 스크롤뷰
class FlexibleScroll extends StatelessWidget {
  const FlexibleScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
        // Expanded도 가능
        Flexible(
          child: Container(
            width: 100,
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
      ],
    );
  }
}

// Stack 쌓기
class StackBox extends StatelessWidget {
  const StackBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.red,
        ),
        Container(
          width: 400,
          height: 400,
          color: Colors.black,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
        ),
        Positioned(
          bottom: 10,
          right: 20,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
        ),
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(150),
          ),
        ),
      ],
    );
  }
}

// Stack, Align사용
class StackAlign extends StatelessWidget {
  const StackAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(150)
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(140)
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Count 0",
            style: TextStyle(fontSize: 30,
            color: Colors.red),
          ),
        )
      ],
    );
  }
}

// Constraint
class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ConstraintsWidget(),
      ),
    );
  }
}
class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: Container(
          constraints: BoxConstraints.tight(Size(200, 200)),
          color: Colors.red,
          height: 300,
          width: 300,
          child: Container(
            margin: EdgeInsets.all(10),
            color: Colors.green,
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }
}

// Stateless, Stateful의 차이
class StateExample extends StatelessWidget {
  const StateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExampleStateless(),
        ExampleStateful(index: 3,),
      ]
    );
  }
}
class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
class ExampleStateful extends StatefulWidget {
  final int index;
  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}
class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
   textEditingController = TextEditingController();
  }


  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: (){
          setState(() {
            if(_index == 5){
              _index = 0;
              return;
            }
            _index++;
          });
        },
        child: Container(
          color: Colors.blue.withOpacity(_index/5),
          child: Center(
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}





