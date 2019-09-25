// Flutter code sample for

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

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
  List cards = new List.generate(20, (i)=>new CustomCard());

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Container(
      child: ListView(
        children: cards,
      )
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
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

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return  new Card(
        child: new Column(
          children: <Widget>[
            new Image.network('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
            new Padding(
              padding: new EdgeInsets.all(7.0),
              child: new Row(
                children: <Widget>[
                 new Padding(
                   padding: new EdgeInsets.all(7.0),
                   child: new Icon(Icons.thumb_up),
                 ),
                 new Padding(
                   padding: new EdgeInsets.all(7.0),
                   child: new Text('Like',style: new TextStyle(fontSize: 18.0),),
                 ),
                 new Padding(
                   padding: new EdgeInsets.all(7.0),
                   child: new Icon(Icons.comment),
                 ),
                 new Padding(
                   padding: new EdgeInsets.all(7.0),
                   child: new Text('Comments',style: new TextStyle(fontSize: 18.0)),
                 )

                ],
              )
            )
          ],
        ),
      );
  }
}