import 'package:flutter/material.dart';
import 'model.dart';

class Result extends StatelessWidget {
  Model model;

  Result({required this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Result'), backgroundColor: Colors.green,),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('You Are Healthy '
                'Keep Doing Daily Exercise', style: TextStyle(fontSize: 22)),

          ],
        ),
      ),
    ));
  }
}

