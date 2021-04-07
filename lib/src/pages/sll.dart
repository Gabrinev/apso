import 'package:flutter/material.dart';


class SllPage extends StatefulWidget {
  @override
  _SllPageState createState() => _SllPageState();
}
class _SllPageState extends State<SllPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suport en la llar'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _usuario(),
          Divider(),
          _hud(),
          Divider(),
          _sortida(),
          Divider(),
          _taller(),
          Divider(),
          _compra(),
          Divider(),
          _medic(),
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

  Widget _hud() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Habilitats vida diaria',
        labelText: 'Habilitats vida diaria',
        icon: Icon( Icons.house)
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
}

  


