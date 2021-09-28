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
                          'Exercise',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                ),
                Expanded(
                  child:  TextButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    icon: Image.asset('assets/yoga.jpg'),
                    label: Text(
                      'Yoga',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ),
                Expanded(
                  child:  TextButton.icon(
                        style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white)),
                        onPressed: () {},
                        icon: Image.asset('assets/meditation.jpg'),
                        label: Text(
                        'Meditation',
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
  ),
  ),
  )

                ),
                Expanded(
                    child:  TextButton.icon(
                        style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white)),
                        onPressed: () {},
                        icon: Image.asset('assets/remedies.jpg'),
                        label: Text(
                        'Home Remedies',
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                ),
                ),
                )
                ),

              ],
            ),
          ),
    ),
  );
}
}