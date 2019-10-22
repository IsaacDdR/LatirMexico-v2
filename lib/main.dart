import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'El app';

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

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOption = <Widget> [
    ListView(
      children: <Widget> [
	Padding(
	  padding: EdgeInsets.all(8.0),
	  child: Card(
	    child: Column(
	      children: <Widget> [
	        Text(
                  "Hello"
	      ), //Text
             ],
	    ), //Column
	  ), //Card
	), //Padding
      ],
    ),

    ListView(
      children: <Widget> [
        Container(
          child: Column(
            children: <Widget> [
              Text("Tour"),
            ],
          ),
        ),
      ],
    ),

    ListView(
      children: <Widget> [
        Container(
          child: Column(
            children: <Widget> [
              Text("Tres"),
            ],
          ),
        ),
      ],

    ),
  ];


  void _onTapped (int index) {
    setState((){
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("El App"),
      ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Hotel"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            title: Text("Tour"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day),
            title: Text("Calendario")
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onTapped,
      ),
    );
  }
}



