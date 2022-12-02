import 'dart:math';
import 'package:flutter/material.dart';

class HeadsAndTailsPage extends StatefulWidget {
  const HeadsAndTailsPage({Key? key}) : super(key: key);

  @override
  State<HeadsAndTailsPage> createState() => _HeadsAndTailsPageState();
}

class _HeadsAndTailsPageState extends State<HeadsAndTailsPage> {
  TextStyle _buttonTextStyle = const TextStyle(
      color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold);

  List<Icon> _results = [];

  Widget _resultPanel() {
    return Container(
      height: 40.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _results,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange, title: const Text("GOOD LUCK")),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 240, 240, 240),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Center(
                      child: Text(
                        "🪙",
                        style: TextStyle(fontSize: 84.0),
                      ))),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (Random().nextBool() == true) {
                        _results.add(Icon(Icons.check, color: Colors.green));
                      } else {
                        _results.add(Icon(Icons.clear, color: Colors.red));
                      }
                    });
                  },
                  child: Container(
                      color: Colors.brown,
                      alignment: Alignment.center,
                      child: Text("Heads", style: _buttonTextStyle)),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (Random().nextBool() == true) {
                        _results.add(Icon(Icons.check, color: Colors.green));
                      } else {
                        _results.add(Icon(Icons.clear, color: Colors.red));
                      }
                    });
                  },
                  child: Container(
                      color: Colors.purple,
                      alignment: Alignment.center,
                      child: Text("Tails", style: _buttonTextStyle)),
                ),
              ),
              _resultPanel()
            ],
          ),
        ),
      ),
    );
  }
}
