import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Ejemplo con ExpansionTile',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.black87),
          bodyText2: TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación de Ejemplo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            ExpansionTile(
              title: Text(
                'Detalles del Elemento 1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              leading: Icon(Icons.info_outline, color: Colors.indigo),
              children: <Widget>[
                ListTile(
                  title: Text('Descripción Completa del Elemento 1'),
                  subtitle: Text('Información adicional sobre el Elemento 1.'),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Detalles del Elemento 2',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              leading: Icon(Icons.info_outline, color: Colors.indigo),
              children: <Widget>[
                ListTile(
                  title: Text('Descripción Completa del Elemento 2'),
                  subtitle: Text('Información adicional sobre el Elemento 2.'),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Detalles del Elemento 3',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              leading: Icon(Icons.info_outline, color: Colors.indigo),
              children: <Widget>[
                ListTile(
                  title: Text('Descripción Completa del Elemento 3'),
                  subtitle: Text('Información adicional sobre el Elemento 3.'),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
