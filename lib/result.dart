import 'package:flutter/material.dart';
import 'model.dart';

class Result extends StatelessWidget {
  Model model;

  Result({required this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.age, style: TextStyle(fontSize: 22)),
            Text(model.sysbp, style: TextStyle(fontSize: 22)),
            Text(model.disysbp, style: TextStyle(fontSize: 22)),
            Text(model.pulserate, style: TextStyle(fontSize: 22)),
            Text(model.temp, style: TextStyle(fontSize: 22)),
            Text(model.oxylevel, style: TextStyle(fontSize: 22)),
            Text(model.glucolevel, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}

