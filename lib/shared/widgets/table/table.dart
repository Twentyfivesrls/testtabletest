
import 'package:flutter/material.dart';
import 'package:testtable/shared/widgets/table/single_table_elements/table_row.dart';
import 'package:testtable/shared/widgets/table/single_table_elements/table_top_part.dart';

class CustomTable extends StatelessWidget {
  final String tableTitle;
  final List<String> headers;
  final List<List<String>> data;
  const CustomTable({Key? key, this.tableTitle = "Tabella", required this.data, required this.headers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            topPart(),
            bodyPart(),
            bottomPart()
          ],
        ),
      ],
    );
  }

  Widget topPart(){
    // intestazione
    return TableTitle(title: tableTitle);
  }
  Widget bodyPart(){
    // headers
    // rows
    return Column(
      children: [
        CustomTableRow(cellContent: headers),
        ...data.map((e) => CustomTableRow(cellContent: e))
      ],
    );
  }
  Widget bottomPart(){
    return Container();
  }





}
