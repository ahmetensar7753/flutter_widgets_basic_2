import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widgets 2"),
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createRow(),
              Expanded(child: createColumn()),
            ],
          ),
        ),
      ),
    );
  }

  Row createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        createContainer("D", Colors.orange.shade200),
        createContainer("A", Colors.orange.shade400),
        createContainer("R", Colors.orange.shade600),
        createContainer("T", Colors.orange.shade800),
      ],
    );
  }

  Column createColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: createContainer("E", Colors.orange.shade100, margin: 10)),
        Expanded(
            child: createContainer("R", Colors.orange.shade200, margin: 10)),
        Expanded(
            child: createContainer("S", Colors.orange.shade300, margin: 10)),
        Expanded(
            child: createContainer("L", Colors.orange.shade400, margin: 10)),
        Expanded(
            child: createContainer("E", Colors.orange.shade500, margin: 10)),
        Expanded(
            child: createContainer("R", Colors.orange.shade600, margin: 10)),
        Expanded(
            child: createContainer("I", Colors.orange.shade700, margin: 10)),
      ],
    );
  }

  Container createContainer(String harf, Color renk, {double margin = 0}) {
    return Container(
      width: 75,
      height: 75,
      color: renk,
      margin: EdgeInsets.only(top: margin),
      alignment: Alignment.center,
      child: Text(
        harf,
        style: const TextStyle(fontSize: 48),
      ),
    );
  }
}
