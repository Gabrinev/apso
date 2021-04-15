import 'package:apso/src/pages/pep.dart';
import 'package:flutter/material.dart';
import 'package:apso/src/pages/scr.dart';
import 'package:apso/src/pages/sll.dart';
import 'package:apso/src/pages/pvi.dart';
import 'package:apso/src/pages/aps.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:apso/src/pages/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ca', 'ES'),
        const Locale('es', 'ES'),
      ],
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/pep': (context) => InputPage(),
      '/scr': (context) => SrcPage(),
      '/sll': (context) => SllPage(),
      '/pvi': (context) => PviPage(),
      '/aps': (context) => ApsPage(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipo de servicio'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
            ),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.pushNamed(context, '/scr');
              },
              color: Colors.lightBlue,
              child: Text('Suport en centres residencials',
                  style: TextStyle(color: Colors.white)),
            ),
            Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
            ),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.pushNamed(context, '/sll');
              },
              color: Colors.lightBlue,
              child: Text('Suport a la llar',
                  style: TextStyle(color: Colors.white)),
            ),
            Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
            ),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.pushNamed(context, '/pvi');
              },
              color: Colors.lightBlue,
              child: Text('Programa vida independent',
                  style: TextStyle(color: Colors.white)),
            ),
            Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
            ),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.pushNamed(context, '/aps');
              },
              color: Colors.lightBlue,
              child: Text('Atenció psico-social',
                  style: TextStyle(color: Colors.white)),
            ),
            Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
