import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/usuario': (context) => TabScreen(),

      '/tours': (context) => ToursScreen(),

      '/calendario':(context) => CalendarScreen(),
    },
  ));
}

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_bus)),
                Tab(icon: Icon(Icons.map)),
                Tab(icon: Icon(Icons.calendar_today)),
              ],
            ),
            title: Text("¿A dónde?"),
          ),
          body: TabBarView(
            children: <Widget> [
              Container(
                child: Column(
                  children: <Widget> [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget> [
                        

                      ],
                    ),
                    ListTile(
                      title: Text("Tour 1"),
                    ),
                    ListTile(
                      title: Text("Tour 2"),
                    ),
                    ListTile(
                      title: Text("Tour 3"),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget> [
                    ListTile(
                      title: Text("Usuario"),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text("Tour 2"),
              ),

            ],
          ),
        ),

      ),

    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Login'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                onPressed: () {
                  Navigator.pushNamed(context, '/usuario');
                },
                child: Text("USUARIO")
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              onPressed: () {
                Navigator.pushNamed(context, '/tours');
              },
              child: Text("TOUR"),
            ),
          ],
        ),
      ),
    );
  }
}
class UsuarioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuario Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calendar');
              },
              child: Text("CALENDARIO"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/restaurantes');
              },
              child: Text("RESTAURANTES"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tours');
              },
              child: Text("TOURS"),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
      ),
      body: Center(
        child: Row(
          children: <Widget> [
            RaisedButton(
              onPressed: () {

              },

            ),
          ],
        ),

      ),
    );
  }
}

class ToursScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tours"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Tour 1"),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Tour 2"),
          ),
        ],

      ),
    );
  }
}
