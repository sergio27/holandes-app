import 'package:flutter/material.dart';

class CategoryCell extends StatelessWidget {
  final category;

  CategoryCell({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("${category}"),
            ),
            Text("1"),
          ],
        ),
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}