import 'package:flutter/material.dart';
import 'package:gec_modasa/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'CountExample',
          style: TextStyle(fontSize: 20),
        )),
      ),
      body: Center(child: Consumer<CountProvider>(
        builder: (context, value, child) {
          print('only this widget');
          return Text(
            value.count.toString(),
            style: TextStyle(fontSize: 50),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
