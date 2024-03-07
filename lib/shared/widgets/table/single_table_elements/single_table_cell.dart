

import 'package:flutter/material.dart';

class SingleTableCell extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color borderColor;
  const SingleTableCell({Key? key, required this.text, this.width = 100, this.height = 60, this.borderColor = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor)
      ),
      child: Center(child: Text(text)),
    );
  }
}
