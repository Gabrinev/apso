import 'package:flutter/material.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nom = '';
  String _email  = '';
  String _data  = '';
  String _time = '';

  String _opcioSeleccionada = 'Passeig';

  List<String> _accions = ['Passeig', 'Musica', 'Piscina', 'Manualitats'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seguiment'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearHora( context ),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nom.length }'),
        hintText: 'Nom de la persona',
        labelText: 'Usuario',
        helperText: 'Només és el nom',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_circle )
      ),
      onChanged: (valor){
        setState(() {
          _nom = valor;
        });
      },
    );

  }

  Widget _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Estado de animo',
        labelText: 'Estado de animo',
        suffixIcon: Icon( Icons.child_care),
        icon: Icon( Icons.child_care )
      ),
      onChanged: (valor) =>setState(() {
        _email = valor;
      })
    );

  }

  Widget _crearPassword(){

     return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Notas',
        labelText: 'Notas',
        suffixIcon: Icon( Icons.chat_outlined ),
        icon: Icon( Icons.chat_rounded )
      )
    );

  }


  Widget _crearHora( BuildContext context ) {

    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Hora inici',
        labelText: 'Hora inici',
        suffixIcon: Icon( Icons.access_time ),
        icon: Icon( Icons.access_time_rounded )
      ),
      onTap: (){ 

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );

  }

  _selectDate(BuildContext context) async {

    TimeOfDay picked = await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if ( picked != null ) {
      setState(() {
          _time = picked.toString();
          _inputFieldDateController.text = _time;
      }); 
    }

  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {

    List<DropdownMenuItem<String>> llista = new List();

    _accions.forEach( (accio){

      llista.add( DropdownMenuItem(
        child: Text(accio),
        value: accio,
      ));

    });

    return llista;

  }

  Widget _crearDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),   
        Expanded(
          child: DropdownButton(
            value: _opcioSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _opcioSeleccionada = opt;
              });
            },
          ),
        )

      ],
    );
    
    
    
    

  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nom: $_nom'),
      subtitle: Text('Animo: $_email'),
      trailing: Text(_opcioSeleccionada),
    );

  }

}