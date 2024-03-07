
import 'package:flutter/material.dart';
import 'package:testtable/shared/widgets/table/table.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {

  List<String> headers = [];
  List<List<String>> data = [];


  @override
  void initState() {
    // call API to get data, to see in BLOC lesson
    headers.add("Nome");
    headers.add("Cognome");
    headers.add("Indirizzo");
    headers.add("Peni");
    headers.add("Ciao");

    for(int i = 0; i<10; i++){
      List<String> newData = List.empty(growable: true);
      newData.add("Nome $i");
      newData.add("Cognome $i");
      newData.add("Indirizzo $i");
      newData.add("$i");
      newData.add("Ciao $i");
      data.add(newData);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Titolo"),),
      body: CustomTable(data: data, headers: headers,),
    );;
  }
}
