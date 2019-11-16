import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'APP';

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
  int _selectedIndex = 1;

  static const TextStyle optionStyle = TextStyle(fontSize: 29, fontWeight: FontWeight.bold);

  List<Widget> _widgetOption = <Widget> [
    ListView(
      children : <Widget> [
        Container(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Image.asset("assets/hotel.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.hotel),
                  title: Text('La pradera'),
                  subtitle: Text('El mejor lugar para disfrutar'),
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('RESERVAR'),
                        onPressed: () { /* ... */ },
                      ),
                      FlatButton(
                        child: const Text('UBICACION'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    

    ListView(
      children : <Widget> [
        Container(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Image.asset("assets/tour.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.directions_bus),
                  title: Text('Los dolidos'),
                  subtitle: Text('Un recorrido para aquellos dolidos del alma'),
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('RESERVAR'),
                        onPressed: () { /* ... */ },
                      ),
                      FlatButton(
                        child: const Text('UBICACION'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),

    ListView(
      children : <Widget> [
        Container(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Image.asset("assets/antro.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('La waska'),
                  subtitle: Text('Si no waskeas, pierdes'),
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('RESERVAR'),
                        onPressed: () { /* ... */ },
                      ),
                      FlatButton(
                        child: const Text('UBICACION'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
        leading: Icon(Icons.search),
        actions: <Widget> [
          Icon(Icons.calendar_today),
        ],
        title: Text("El App"),
      ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text("Restaurantes"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            title: Text("Tour"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              title: Text("Antros")
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[799],
        onTap: _onTapped,
      ),
    );
  }
}



//Meter boton antros


