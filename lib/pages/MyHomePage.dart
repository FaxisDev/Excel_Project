import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _colorTop = Color.fromRGBO(28, 52, 89, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(174, 192, 252, 1),
      appBar: AppBar(
        title: Center(
            child: Text('Scanxel', style: TextStyle(fontFamily: 'Damion', fontSize: 36.0))),
        backgroundColor: _colorTop,
        elevation: 0.0,
      ),
      body: contenidoPrincipal(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Escanear',
        splashColor: Color.fromRGBO(200, 150, 50, 1),
        child: Icon(Icons.photo_camera),
        backgroundColor: Color.fromRGBO(200, 50, 50, 1),
        elevation: 1.0,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  contenidoPrincipal() {
    return ListView(children: <Widget>[
      contenidoTop(),
    ]);
  }

  Container contenidoTop() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
            top: Radius.zero, bottom: Radius.circular(55)),
        color: _colorTop,
      ),
      padding: EdgeInsets.all(35.0),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage(
              'assets/excel.png',
            ),
            width: 156,
            fit: BoxFit.cover,
          ),
          Divider(),
          Text(
            'Scanea tus tablas y conviertelas a un archivo de Excel!',
            style: TextStyle(
              fontFamily: 'InriaSans',
              fontSize: 16.0,
              color: Color.fromRGBO(255, 255, 255, 0.7),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.photo_camera,
                        color: Colors.white70,
                      ),
                      Text(
                        'Captura',
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.scanner,
                        color: Colors.white70,
                      ),
                      Text(
                        'Procesa',
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.import_export,
                        color: Colors.white70,
                      ),
                      Text(
                        'Exporta',
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
