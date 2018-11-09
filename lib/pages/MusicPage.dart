import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MusicPageState();
  }
}

class _MusicPageState extends State<MusicPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('MusicPage'),
        ),
      ),
    );
  }
}