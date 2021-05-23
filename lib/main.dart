import 'package:flutter/material.dart';

void main() => runApp(CastilloApp());

class CastilloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heladeria Castillo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Heladeria Castillo'),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 0), child: Image.asset("assets/helados.jpg")),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre del cliente',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sabor del helado',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize:15,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical:15,horizontal: 30 ),
                  onPressed: () {},
                ), //fin flat button
                RaisedButton(
                  child: Text(
                    'Confirmar',
                    style: TextStyle(
                      fontSize:15,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical:15,horizontal: 30 ),
                  onPressed: () {},
                ), //fin raised button
              ],
            ),
          ],
        ),
      ),
    );
  }
}
