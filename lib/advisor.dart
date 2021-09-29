import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Advisor extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Builder(
      builder: (context) =>
          Scaffold(
            appBar: AppBar(title: Text('Advisor'), backgroundColor: Colors.green ,),
            body: Column(
              children: <Widget>[
                Center(
                  child: Expanded(
                      child:  TextButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                        onPressed: () {},
                        icon: Image.asset('assets/exercise.jpg'),
                        label: Text(
                          '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: new Text(
                      "Exercise",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )),
                Expanded(
                  child:  TextButton.icon(

                    style: ButtonStyle(

                        backgroundColor:
                        MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    icon: Image.asset('assets/yoga.jpg'),

                    label: Text(
                      '',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )

                ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: new Text(
                      " Yoga ",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )),
                Expanded(
                  child:  TextButton.icon(
                        style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white)),
                        onPressed: () {},
                        icon: Image.asset('assets/meditation.jpg'),
                        label: Text(
                        '',
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                  ),
                  ),
                  )

                ),
                Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: new Text(
                      " Meditation ",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )),
                Expanded(
                    child:  TextButton.icon(
                       
                        style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white)),
                        onPressed: () {},
                        icon: Image.asset('assets/remedies.jpg'),
                        label: Text(
                        '',
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                ),
                ),
                )
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: new Text(
                      " Home Remedies ",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )),

              ],
            ),
          ),
    ),
  );
}
}