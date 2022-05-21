import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class statefullscreen extends StatefulWidget {
  const statefullscreen({Key? key}) : super(key: key);

  @override
  State<statefullscreen> createState() => _statefullscreenState();
}

class _statefullscreenState extends State<statefullscreen> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Stateful widget',
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Container(
            child: Center(
                child: Text(
              x.toString(),
              style: TextStyle(fontSize: 50),
            )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
