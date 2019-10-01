import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    ListView(
      children: <Widget> [
        Card(
          child: InkWell(
            splashColor: Colors.orange.withAlpha(30),
            child: Container(
              width: 300,
              height: 100,
              child: Center(
                child: Text(
                  "Restaurante",
                ),
              ),
            ),
          ),
        ),
      ],
    ),
    ListView(
      children: <Widget> [
        Card(
          child: InkWell(
            splashColor: Colors.orange.withAlpha(30),
            child: Container(
              width: 300,
              height: 100,
              child: Center(
                child: Text(
                  'Tours',
                ),
              ),
            ),
          ),
        ),
      ],
    ),
    ListView(
      children: <Widget> [
        Card(
          child: InkWell(
            splashColor: Colors.orange.withAlpha(30),
            child: Container(
              height: 300,
              width: 100,
              child: Center(
                child: Text(
                  "Calendario",
                ),
              ),
            ),
          ),

        ),
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}