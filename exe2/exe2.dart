import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('LayoutBuilder Example')),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth <= 400) {
                return Container(width: 100, height: 100, color: Colors.blue);
              } else if (constraints.maxWidth <= 800) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 180, height: 180, color: Colors.blue),
                    SizedBox(width: 20),
                    Container(width: 180, height: 180, color: Colors.red),
                  ],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 250, height: 250, color: Colors.blue),
                    SizedBox(width: 20),
                    Container(width: 250, height: 250, color: Colors.red),
                    SizedBox(width: 20),
                    Container(width: 250, height: 250, color: Colors.green),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
