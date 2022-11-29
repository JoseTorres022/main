import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //varibla para cambiar el tamaño con la propiedad size
    final double iconoTalla = 40.0;

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Informacion'),
        ),
        body: new Container(
            child: Center(
                child: new Column(
          //para ocucupar toda la pantalla
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
                titulo: new Text(
                  "Desarrollo de aplicaciones moviles",
                  style: new TextStyle(color: Colors.green),
                ),
                icono: new Icon(
                  Icons.mobile_friendly,
                  size: iconoTalla,
                  color: Colors.redAccent,
                )),
            new MyCard(
                titulo: new Text("Itcj campus 1"),
                icono: new Icon(
                  Icons.house,
                  size: iconoTalla,
                  color: Colors.blueAccent,
                )),
            new MyCard(
                titulo: new Text("Aprendiendo Dart"),
                icono: new Icon(
                  Icons.file_copy,
                  size: iconoTalla,
                  color: Colors.orangeAccent,
                )),
            new MyCard(
                titulo: new Text("Aprendiendo Flutter"),
                icono: new Icon(
                  Icons.screen_lock_portrait,
                  size: iconoTalla,
                  color: Colors.orangeAccent,
                )),
            new Equipo(
              integrante: new Text("Creado por:"),
            ),
            new Equipo(
              integrante: new Text("Alekx Galvan"),
            ),
            new Equipo(
              integrante: new Text("Mauro Beltran"),
            ),
          ],
        ))));
  }
}

class MyCard extends StatelessWidget {
  final Widget titulo;
  final Widget icono;
  MyCard({required this.titulo, required this.icono});

  @override
  Widget build(BuildContext context) {
    return new Container(
      //definir un padding, para separar lo elementos
      padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.titulo, this.icono],
          ),
        ),
      ),
    );
  }
}

class Equipo extends StatelessWidget {
  final Widget integrante;

  Equipo({required this.integrante});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(children: <Widget>[this.integrante]),
    );
  }
}
