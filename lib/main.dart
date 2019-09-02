import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "El latir",
      home: Scaffold(
        appBar: AppBar(
          title:Text("El Latir"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              RaisedButton(
                child: Text('Hello'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Hello 2'),
                onPressed: null,
              ),
            ],
          ),
        ),
      )
    );
  }
}


void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: MyScaffold(),
  ));
}