import 'package:flutter/material.dart';
import 'package:untitled/advisor.dart';
import 'package:validators/validators.dart';
import 'package:untitled/testform.dart';
import 'package:untitled/model.dart';
import 'package:untitled/result.dart';
import 'package:untitled/advisor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) =>
            Scaffold(
        appBar: AppBar(title: Text('Home'), backgroundColor: Colors.green ,),
        body: Column(
          children: <Widget>[
        Center(
          child: Expanded(
                child: Container(
                  width: 180.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/monitor.png'),
                    ),
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TestForm() )
                      );
                    },
                    child: Container(

                    ) ,
                  ),
                ),
              ),
        ),
            Expanded(
              child: Container(
                width: 180.0,
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/advisor.png'),
                  ),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Advisor() )
                    );
                  },
                  child: Container(

                  ) ,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 180.0,
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/doctor.png'),
                  ),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    debugPrint('button clicked');
                  },
                  child: Container(

                  ) ,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 180.0,
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/pharmacy.png'),
                  ),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    debugPrint('button clicked');
                  },
                  child: Container(

                  ) ,
                ),
              ),
            ),
            ],
        ),
    ),
      ),
    );
  }
}