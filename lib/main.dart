import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phunsup Suwannasophon',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 47, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CP-SU LED MATRIX'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const dotsData = [
    // Digit 0
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 1
    [
      [0, 0, 1, 0, 0],
      [0, 1, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 1, 1, 0],
    ],
    // Digit 2
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [1, 1, 1, 1, 1],
    ],
    // Digit 3
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 4
    [
      [0, 0, 0, 1, 0],
      [0, 0, 1, 1, 0],
      [0, 1, 0, 1, 0],
      [1, 0, 0, 1, 0],
      [1, 1, 1, 1, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 0, 1, 0],
    ],
    // Digit 5
    [
      [1, 1, 1, 1, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 6
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 7
    [
      [1, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
    ],
    // Digit 8
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 9
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
  ];
  int count = 0;

  Widget botup() {
    print(count);
    return Container(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            count;
          });
          count++;
          if (count > 99) {
            count = 0;
          }
        },
        child: 
        
        Icon(Icons.arrow_drop_up_rounded, size: 50),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 248, 109, 109),
        border: Border.all(
          color: Colors.black,
        )
      ),
    );
  }

  Widget botdown() {
    print(count);
    return Container(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            count;
          });
          count--;
          if (count < 0) {
            count = 99;
          }
        },
        child: 
        
        Icon(Icons.arrow_drop_down_rounded, size: 50),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 248, 109, 109),
        border: Border.all(
          color: Colors.black,
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: const Color.fromARGB(255, 16, 121, 207),
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255,226,213,241),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: []),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  botup(),
                  SizedBox(height: 20.0,),
                  _buildDisplay(count.toString()),
                  SizedBox(height: 20.0,),
                  botdown(),
                ],
              ),      
            ],
          ),
        ));
  }

  Widget _buildDot(int value) {
    Icon _icon;
    if (value == 0) {
      _icon = Icon(
        Icons.circle,
        color: Color.fromARGB(116, 45, 37, 37),
      );
    } else {
      _icon = Icon(Icons.circle, color: Color.fromARGB(255,226,213,241));
    }
    return Container(    
      child: _icon,
    );
  }

  Widget _buildRow(List<int> dotList) {
    return Row(
      children: [
        for (var row in dotList) _buildDot(row),
      ],
    );
  }

  Widget _buildDigit(List<List<int>> rowList) {
    return Column(
      children: [
        for (var row in rowList) _buildRow(row),
      ],
    );
  }
  Widget _buildDisplay(String value) {
  if(value.length == 1){
    value = "0"+ value[0];
  }
    return Container(
      width: 330.0,
      height: 220.0,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color.fromARGB(255,82,109,133),
        border: Border.all(
          color: Color.fromARGB(255, 82,109,133),
          width: 5.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 197, 81, 4),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),      
      ),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildDigit(dotsData[int.parse(value[0])]),
                SizedBox( width: 15.0, ),
                _buildDigit(dotsData[int.parse(value[1])]),
              ]),
        ],
      ),
    );
  }
}