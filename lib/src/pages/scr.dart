import 'package:flutter/material.dart';


class SrcPage extends StatefulWidget {
  @override
  _SrcPageState createState() => _SrcPageState();
}
class _SrcPageState extends State<SrcPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suport en centres residencials'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _usuario(),
          Divider(),
          _sortida(),
          Divider(),
          _compra(),
          Divider(),
          _seguiment(),
          Divider(),
          _tramits(),
          Divider(),
          _medic(),
          Divider(),
          _activitat(),
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

Widget _seguiment() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Seguiment o escolta',
        labelText: 'Seguimient',
        icon: Icon( Icons.account_circle )
      ),
    );
  }

Widget _tramits() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Gestió de tràmits',
        labelText: 'Tràmits',
        icon: Icon( Icons.description)
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

Widget _activitat() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Quina?',
        labelText: 'Activitat',
        icon: Icon( Icons.local_florist)
      ),
    );
  }
  
}


