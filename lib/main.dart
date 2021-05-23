import 'package:flutter/material.dart';

void main() => runApp(CastilloApp());

class CastilloApp extends StatefulWidget {
  @override
  _CastilloAppState createState() => _CastilloAppState();
}

class _CastilloAppState extends State<CastilloApp> {
  @override
  int _value = 1;
  int _value2 = 1;
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
            ),//fin de padding
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sabor del helado',
                ),
              ),
            ),//fin de padding
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: DropdownButton(
                value: _value,
            items: [
              DropdownMenuItem(
                child: Text("Vaso"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Cono"),
                value: 2,
              )
            ],
             
            onChanged: (int value) {
              setState(() {
                _value = value;
              });
            },
            hint:Text("Select item")
              ),
            ),//fin de padding
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: DropdownButton(
                value: _value2,
            items: [
              DropdownMenuItem(
                child: Text("Ingrediente"),
                value: 0,
              ),
              DropdownMenuItem(
                child: Text("Chocolate"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Gomitas"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Nuez"),
                value: 3,
              )
            ],
             
            onChanged: (int value) {
              setState(() {
                _value2 = value;
              });
            },
            hint:Text("Select item")
              ),
            ),//fin de padding
              ],//fin de <widget>
            ),//fin de row
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
              ],//fin de <widget>
            ),//fin de row
          ],//fin de <widget>
        ),//fin de column
      ),//fin de scaffold
    );
  }
}