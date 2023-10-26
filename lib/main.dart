import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("counter"),
      ),
      body: Counter(),
    ),
  ));
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$count"),
        FloatingActionButton.extended(onPressed: (){}, label: Text("reset"))
      ],
    );
  }
}
