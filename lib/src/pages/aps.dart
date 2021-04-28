import 'package:flutter/material.dart';


class ApsPage extends StatefulWidget {
  @override
  _ApsPageState createState() => _ApsPageState();
}
class _ApsPageState extends State<ApsPage> {
  String _dataInicio  = '';
  String _tipo = '';
  String _hora = '';
  String _minuto = '';
  String _horaInicio = '';
  String _dia = '';
  String _mes = '';
  String _anyo = '';

  TextEditingController _inputFieldDateIController = new TextEditingController();
  TextEditingController _inputTimeController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atenció psico-social'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearData(context, _tipo='inicio', _inputFieldDateIController),
          Divider(),
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
          _crearTime(context, _inputTimeController),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ButtonBar(
              children: <Widget>[
                ElevatedButton(
                onPressed: () {},
                child: Text('Actualitzar'),
                ),
                ElevatedButton(
                onPressed: () {},
                child: Text('Enviar'),
                ),
              ],
            )
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

  Widget _crearData( BuildContext context, String tipo, TextEditingController controller ) {

    return TextField(
      enableInteractiveSelection: false,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Dia y hora Inicio',
        labelText: 'Dia y Hora Inicio',
        icon: Icon( Icons.calendar_today )
      ),
      onTap: (){ 

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context, tipo, controller );
        
      },
    );

  }

  Widget _crearTime( BuildContext context, TextEditingController controller ) {

    String tipo = '';
    String date = '';

    return TextField(
      enableInteractiveSelection: false,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Hora Final',
        labelText: 'Hora Final',
        icon: Icon( Icons.calendar_today )
      ),
      onTap: (){ 

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectTime( context, controller, tipo, date );     
        
      },
    );

  }

  _selectDate(BuildContext context, String tipo, TextEditingController controller) async {

    DateTime picked = (await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('ca', 'ES')
    ))!;
    if ( picked != null ) {
        setState(() {
          _dia = picked.day.toString();
          _mes = picked.month.toString();
          _anyo = picked.year.toString();
          _dataInicio = _dia+"/"+_mes+"/"+_anyo;
      });  

      FocusScope.of(context).requestFocus(new FocusNode());
      _selectTime(context, controller, tipo, _dataInicio);
    
    }
  }

  _selectTime(BuildContext context, TextEditingController controller, String tipo, String date ) async{
    TimeOfDay picked = (await showTimePicker
    (context: context, 
    initialTime: new TimeOfDay.now()
    ))!;
    if (picked != null && tipo == ''){
      setState(() {
        _hora = picked.hour.toString();
        _minuto = picked.minute.toString();
        _horaInicio = _hora + ":" + _minuto;
        controller.text = _horaInicio;
      });
    }else{
      setState(() {
        _hora = picked.hour.toString();
        _minuto = picked.minute.toString();
        _horaInicio = _hora + " : " + _minuto;
        controller.text = date + " " + _horaInicio;
      });
    }
  }
  
}

  


