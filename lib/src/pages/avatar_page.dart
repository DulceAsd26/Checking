import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Control del programador'),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            StreamBuilder(
              initialData: false,
              stream: slimyCard.stream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                final String mensaje = (snapshot.data)
                    ? '¡Hola programador, bienvenido!'
                    : 'Checa tus entradas y salidas';
                return SlimyCard(
                  color: Colors.amber,
                  topCardWidget: CustomTop(mensaje),
                  bottomCardWidget: CustomBottom(),
                );
              },
            ),
          ],
        ));
  }
}

class CustomTop extends StatelessWidget {
  final String texto;
  const CustomTop(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.texto,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Dulce Concepción Juárez Soledad',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
