import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final categories;

  CategoryList({required this.categories});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: getCategoryWidgets(categories),
    );
  }

  List<Container> getCategoryWidgets(List<String> strings) {
    List<Container> list = [];
    for(var i = 0; i < strings.length; i++){
      list.add(new Container(
        height: 50,
        child: Center(child: Text(strings[i])),
      ),);
    }
    return list;
  }
}