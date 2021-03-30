import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';

  TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Entradas de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearNombre(),
          Divider(),
          _crearApellidos(),
          Divider(),
          _crearRfc(),
          Divider(),
          _crearNumeroEmpleado(),
        ],
      ),
    );
  }

  Widget _crearNombre() {
    return Container(
      padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
      decoration: BoxDecoration(
        color: Colors.amber[300].withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child:TextField(
        autofocus: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            //counter: Text('Caracteres ${_nombre.length}'),
            hintText: 'Nombre',
            //labelText: 'Nombre',
            icon: Icon(Icons.account_circle,  color: Colors.amber)),
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
            //print(_nombre);
          });
        },
      )
    );
  }

  Widget _crearApellidos() {
    return Container(
      padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
      decoration: BoxDecoration(
        color: Colors.amber[300].withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child:TextField(
        autofocus: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            //counter: Text('Caracteres ${_nombre.length}'),
            hintText: 'Apellidos',
            //labelText: 'Nombre',
            icon: Icon(Icons.account_circle,  color: Colors.amber)),
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
            //print(_nombre);
          });
        },
      )
    );
  }

  Widget _crearRfc() {
    return Container(
      padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
      decoration: BoxDecoration(
        color: Colors.amber[300].withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child:TextField(
        autofocus: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            //counter: Text('Caracteres ${_nombre.length}'),
            hintText: 'RFC',
            //labelText: 'Nombre',
            icon: Icon(Icons.account_circle,  color: Colors.amber)),
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
            //print(_nombre);
          });
        },
      )
    );
  }

  Widget _crearNumeroEmpleado() {
    return Container(
      padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
      decoration: BoxDecoration(
        color: Colors.amber[300].withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child:TextField(
        autofocus: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            //counter: Text('Caracteres ${_nombre.length}'),
            hintText: 'Numero de empleado: 223',
            //labelText: 'Nombre',
            icon: Icon(Icons.account_circle,  color: Colors.amber)),
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
            //print(_nombre);
          });
        },
      )
    );
  }

  
}