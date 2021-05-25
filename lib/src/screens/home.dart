import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _styleText = TextStyle(fontSize: 25);

  int _counter = 0;

  void addCounter() => setState(() => _counter++);

  void minusCounter() => setState(() => _counter--);

  void resetCounter() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Number of taps',
              style: _styleText,
            ),
            Text(
              _counter.toString(),
              style: _styleText,
            )
          ],
        ),
      ),
      floatingActionButton: _setFloatingButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _setFloatingButtons() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            isExtended: true,
            onPressed: resetCounter,
            child: Icon(Icons.exposure_zero),
          ),
          Row(
            children: [
              FloatingActionButton(
                onPressed: minusCounter,
                child: Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: addCounter,
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
