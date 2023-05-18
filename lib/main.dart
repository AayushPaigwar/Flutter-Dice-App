import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftnumber = 1;
  int rightnumber = 6;
  void changediceface() {
    leftnumber = Random().nextInt(6) + 1;
    rightnumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              //BY default Flex size is 1.
              //Flex is used to change the size in ratios eg- flex=2 , ratio 2:1
              ///flex:2, twice the width of other flex
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changediceface();
                    });
                    //what will happen after press in {}
                  },
                  child: Image.asset('images/dice$leftnumber.png'))),
          Expanded(
            //flex: 1,
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    changediceface();
                  },
                );
              },
              child: Image.asset('images/dice$rightnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
