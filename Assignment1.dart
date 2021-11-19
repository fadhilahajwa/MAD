import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assi(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Assi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AssiState();
  }
}

class _AssiState extends State<Assi> {
  var colors = ['Candy Pink', 'Indigo', 'Khaki', 'Emerald green', 'Navy blue'];
  final textController = TextEditingController();
  String? printedcolours;
  String wrongInput = 'Wrong Input';
  String textcolours = 'The Colour is: ';

  void setColours() {
    final inputNumber = int.parse(textController.text);

    setState(() {
      if (inputNumber == 1) {
        printedcolours = textcolours  +  colors[0];
      } else if (inputNumber == 2) {
        printedcolours = textcolours  + colors[1];
      } else if (inputNumber == 3) {
        printedcolours = textcolours  + colors[2];
      } else if (inputNumber == 4) {
        printedcolours = textcolours  + colors[3];
      } else if (inputNumber == 5) {
        printedcolours = textcolours  + colors[4];
      } else {
        printedcolours = wrongInput;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Using List in Flutter', textAlign: TextAlign.center),
        ),
        body: Column(children: [
          SizedBox(height: 30),
          Text('Choose number between 1-5:', textAlign: TextAlign.center,
          ),
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                  labelText: 'Enter number here'),
              controller: textController,
              keyboardType: TextInputType.numberWithOptions(decimal: false),
            ),
          ),
          RaisedButton(child: Text('Enter'), onPressed: setColours),
          SizedBox(height: 20),
          Text(printedcolours == null
              ? 'No value entered'
              : ' ' + printedcolours.toString())
        ]),
      ),
    );
  }
}