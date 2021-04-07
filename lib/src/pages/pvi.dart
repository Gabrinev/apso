import 'package:flutter/material.dart';


class PviPage extends StatefulWidget {
  @override
  _PviPageState createState() => _PviPageState();
}
class _PviPageState extends State<PviPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programa vida independent'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _usuario(),
          Divider(),
          _sortida(),
          Divider(),
          _te(),
          Divider(),
          _cuina(),
          Divider(),
          _medic(),
          Divider(),
          _compra(),
          Divider(),
          _taller(),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _usuario() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Nom de la persona',
        labelText: 'Usuario',
        helperText: 'Qui rep el servei',
        icon: Icon( Icons.account_circle )
      ),
    );

  }


Widget _sortida() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'On hem anat',
        labelText: 'Sortida',
        icon: Icon( Icons.nature_people)
      ),
    );

  }

  Widget _te() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Que té',
        labelText: 'Té',
        icon: Icon( Icons.local_mall)
      ),
    );

  }

  Widget _cuina() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Que hem cuinat',
        labelText: 'Cuina',
        icon: Icon( Icons.kitchen)
      ),
    );
  }

  Widget _medic() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Acompanyament mèdic',
        labelText: 'Mèdic',
        icon: Icon( Icons.medical_services)
      ),
    );
  }

  Widget _compra() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Que es necessita comprar',
        labelText: 'Compra',
        icon: Icon( Icons.shopping_cart )
      ),
    );
  } 

  Widget _taller() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Que hem fet',
        labelText: 'Taller',
        icon: Icon( Icons.handyman)
      ),
    );

  }

  
}

  


