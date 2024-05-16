import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

const assetImagePath = 'assets/images';
const bannerImage = '$assetImagePath/banner.png';

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
                color: Colors.red, borderRadius: BorderRadius.circular(150)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(140)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Count 0",
            style: TextStyle(fontSize: 30, color: Colors.red),
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
    return Column(children: [
      ExampleStateless(),
      ExampleStateful(
        index: 3,
      ),
    ]);
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
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
            _index++;
          });
        },
        child: Container(
          color: Colors.blue.withOpacity(_index / 5),
          child: Center(
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}

// 입력 요소들
class InputItems extends StatelessWidget {
  const InputItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      TestCheckBox(),
      TestRadioButton(),
      TextSlider(),
      TestSwitch(),
      TestPopupMenu(),
    ]);
  }
}

// 체크 박스
class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false, false, true];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value: value)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value: value)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value: value)),
        Checkbox(
          value: values[3],
          onChanged: (value) => changeValue(3, value: value),
        ),
        Checkbox(
          value: values[4],
          onChanged: (value) => changeValue(4, value: value),
        )
      ],
    );
  }

  void changeValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}

// 라디오 버튼
class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}
enum TestValue {
  test1,
  test2,
  test3,
  test4,
}
class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.test1,
            groupValue: selectValue,
            onChanged: (value) => setState(
              () => selectValue = value!,
            ),
          ),
          title: Text(TestValue.test1.name),
          onTap: () => setState(() {
            if (selectValue != TestValue.test1) {
              selectValue = TestValue.test1;
            }
          }),
        ),
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.test2,
            groupValue: selectValue,
            onChanged: (value) => setState(
              () => selectValue = value!,
            ),
          ),
          title: Text(TestValue.test1.name),
          onTap: () => setState(() {
            if (selectValue != TestValue.test2) {
              selectValue = TestValue.test2;
            }
          }),
        ),
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.test3,
            groupValue: selectValue,
            onChanged: (value) => setState(
              () => selectValue = value!,
            ),
          ),
          title: Text(TestValue.test3.name),
          onTap: () => setState(() {
            if (selectValue != TestValue.test3) {
              selectValue = TestValue.test3;
            }
          }),
        ),
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.test4,
            groupValue: selectValue,
            onChanged: (value) {
              if (selectValue != TestValue.test4) {
                selectValue = TestValue.test4;
              }
            },
          ),
          title: Text(TestValue.test4.name),
          onTap: () {
            setState(() {
              if (selectValue != TestValue.test4) {
                selectValue = TestValue.test4;
              }
            });
          },
        )
      ],
    );
  }
}

// 슬라이더
class TextSlider extends StatefulWidget {
  const TextSlider({super.key});

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  double value = 0;
  double value1 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${value.round()}'),
        Slider(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
          divisions: 100,
          max: 100,
          min: 0,
          label: value.round().toString(),
          activeColor: Colors.green,
        ),
        Slider(
          value: value1,
          onChanged: (newValue) => setState(() => value1 = newValue),
          divisions: 50,
          max: 50,
          min: 0,
          label: value1.round().toString(),
          activeColor: Colors.blue,
        )
      ],
    );
  }
}

// 스위치
class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}
class _TestSwitchState extends State<TestSwitch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue)),
        CupertinoSwitch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue)),
        Switch(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
          activeColor: Colors.yellow,
        )
      ],
    );
  }
}

// 팝업 메뉴
class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}
class _TestPopupMenuState extends State<TestPopupMenu> {
  TestValue selectValue = TestValue.test1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectValue.name),
        PopupMenuButton(
          itemBuilder: (context) {
            return TestValue.values
                .map((value) =>
                    PopupMenuItem(value: value, child: Text(value.name)))
                .toList();
          },
          onSelected: (newValue) => setState(() => selectValue = newValue),
        ),
      ],
    );
  }
}

// 콜백 이벤트
class Callback extends StatelessWidget {
  const Callback({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}
class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}
class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Count : $value",
          style: const TextStyle(fontSize: 30),
        ),
        TestButton(addCounter, addCounter2),
      ],
    );
  }

  void addCounter(){
    setState(() => ++value);
  }

  void addCounter2(int addValue) => setState(() => value += addValue);

}
class TestButton extends StatelessWidget {
  const TestButton(this.callback, this.callback2, {super.key});

  final VoidCallback callback;

  final Function(int) callback2;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        child: Column(
          children: [
            InkWell(
              onTap: () => callback.call(),
              child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(border: Border.all()),
                    child: const Text(
                      'Up Counter 1',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8)),
            InkWell(
              onTap: () => callback2.call(5),
              onDoubleTap: () => callback2.call(10),
              onLongPress: () => callback2.call(20),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Text(
                    'Up Counter more',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}

// 오픈소스 라이브러리
class OpenSource extends StatelessWidget {
  const OpenSource({super.key});

  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}
class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList
        .map((word) => Text(
      word.asString,
      style: TextStyle(fontSize: 32),)
    ).toList();

    return Column(
      children:
        widgets,
    );
  }
}

class ImageAsset extends StatelessWidget {
  const ImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(bannerImage),
    );
  }
}


