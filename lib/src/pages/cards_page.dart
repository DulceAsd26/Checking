import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //blueshade300
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Opciones del programador'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo3(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      color: Colors.grey.shade700,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.assignment_ind, color: Colors.blueAccent),
              title: Text('Editar datos del programador'),
              subtitle: Text(
                  'Herramientas para editar si los datos se encuentran erroneos')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                textColor: Colors.amber,
                child: Text('Cambiar'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      color: Colors.grey.shade700,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.date_range, color: Colors.blueAccent),
              title: Text('Visualizar horarios del programador'),
              subtitle: Text(
                  'Horario del programador para organizarse en sus chequeos')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                textColor: Colors.amber,
                child: Text('Cambiar'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo3() {
    return Card(
      color: Colors.grey.shade700,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.fact_check, color: Colors.blueAccent),
              title: Text('Reportes del día'),
              subtitle: Text('Justificación de entradas y salidas')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                textColor: Colors.amber,
                child: Text('Cambiar'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
