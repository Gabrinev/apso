import 'package:flutter/material.dart';


class ApsPage extends StatefulWidget {
  @override
  _ApsPageState createState() => _ApsPageState();
}
class _ApsPageState extends State<ApsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atenció psico-social'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _usuario(),
          Divider(),
          _tramits(),
          Divider(),
          _valoracio(),
          Divider(),
          _gestions(),
          Divider(),
          _medic(),
          Divider(),
          _altres(),
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

  Widget _tramits() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Tràmits socials',
        labelText: 'Tràmits socials',
        icon: Icon( Icons.description)
      ),
    );
  }


Widget _valoracio() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Valoració del progrés',
        labelText: 'Valoració',
        icon: Icon( Icons.assessment)
      ),
    );
  }

    Widget _gestions() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Gestions',
        labelText: 'Gestions',
        icon: Icon( Icons.category)
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

  Widget _altres() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Altres',
        labelText: 'Altres',
        icon: Icon( Icons.chat)
      ),
    );
  }
}

  


