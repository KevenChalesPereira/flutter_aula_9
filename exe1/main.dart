import 'dart:io' show Platform;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('SO Checker')),
        body: Center(
          child: Platform.isAndroid
              ? Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/3/3e/Android_logo_2019.png')
              : Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/4/48/Windows_logo_-_2021.svg'),
        ),
      ),
    );
  }
}
