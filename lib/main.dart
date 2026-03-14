// Flutter 网格视图
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: Center(child: Text('Item $index')),
            );
          },
        ),
      ),
    );
  }
}
