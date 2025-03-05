import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  final String leading;
  final String title;

  const MyListTitle({super.key, required this.leading, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(leading),
      title: Text(title),
    );
  }
}

