

import 'package:flutter/material.dart';
import 'package:testtable/shared/widgets/table/single_table_elements/single_table_cell.dart';

class CustomTableRow extends StatelessWidget {
  List<String> cellContent;
  CustomTableRow({Key? key, required this.cellContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...cellContent.map((e) => SingleTableCell(text: e))
      ],
    );
  }
}
