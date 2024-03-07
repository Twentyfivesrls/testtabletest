


import 'package:flutter/material.dart';

class TableTitle extends StatelessWidget {
  final String title;
  const TableTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title)
      ],
    );
  }
}
