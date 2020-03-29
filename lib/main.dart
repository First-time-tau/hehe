// Mobile Application Programming (SCSJ3623)
// Semester 2, 2019/2020

// Exercise 1: State management with Stateful Widgets

// Write your name and your partner's.
// Only one submission is required per pair
// Submit only the source code file (main.dart)

//! Name 1:  Nurhasnatul Aida Binti Suhizlizani Ihsan
//! Name 2:  Nur Nabila Binti Zakaria

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'MAP Exercise 1',
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {

  double _size = 150.00;

  get size => _size;
  set size(value) => setState(()=> _size = value);

  double _size2 = 0.0;
  var _circ;

  Color _color = Colors.blue;

  get size2 => _size2;
  set size2(value) => setState(()=> _size2 = value);

  double _size1 = 0.00;
  get size1 => _size1;
  set size1(value) => setState(()=> _size1 = value);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
        child: FlutterLogo(size: _size),  
        alignment: Alignment.center,  
        decoration: BoxDecoration(
          color: _color,
           border: Border.all(
             color: _color,
             width: 8,
           ),
        borderRadius: BorderRadius.circular(_circ),
        ),
      ),
      ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
        FloatingActionButton.extended
        (
        onPressed: ()=> setState(()=>_color = Colors.blue),
        label: Text('Color'),
        backgroundColor: Colors.blue,
        icon: Icon(Icons.color_lens),
        ),
         FloatingActionButton.extended
        (
        onPressed: ()=> setState(()=>_color = Colors.green),
        label: Text('Color'),
        icon: Icon(Icons.color_lens),
        backgroundColor: Colors.green,
        ), FloatingActionButton.extended
        (
        onPressed: ()=> setState(()=>_color = Colors.red),
        label: Text('Color'),
        icon: Icon(Icons.color_lens),
        backgroundColor: Colors.red,
        )
       ]
          
        ),
      bottomNavigationBar: 
      SizedBox(
        height: 100.0,
        child: Slider(
          min: 0.0,
          max: 300.0,
          value: size2,
          onChanged: (value) => _size = value,
        ),
      ),
      bottomSheet: SizedBox(
        height: 100.0,
        child: Slider(


          min: 0.0,
          max: 300.0,
          value: size1,
          onChanged: (value) => _circ = value,
        ),
      ),
    );
  }
}
