import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContanerPage extends StatefulWidget {
  @override
  _AnimatedContanerPageState createState() => _AnimatedContanerPageState();
}

class _AnimatedContanerPageState extends State<AnimatedContanerPage> {
  
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.yellow;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          curve: Curves.linearToEaseOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color

          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _cambiaforma,
        child: Icon(Icons.play_arrow),
        ),

    );
  }

  void _cambiaforma(){

    final random = Random();
   
    setState(() {
       _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255), 
        random.nextInt(255), 
        1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    }); 
  }
}