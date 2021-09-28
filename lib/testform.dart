import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;
import 'model.dart';
import 'result.dart';

class TestForm extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model(temp: '', glucolevel: '', sysbp: '', age: '', oxylevel: '', disysbp: '', pulserate: '');

  @override
  Widget build(BuildContext context) {

    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

    return MaterialApp(
      home: Material(
        child: Form(
          key: _formKey,

          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: MyTextFormField(
                        hintText: 'Enter Your Age',
                        validator: (String value) {
                          if (value.length<2) {
                            return 'Please Enter A valid Age';
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          model.age = value;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: MyTextFormField(
                        hintText: 'Enter Systolic Blood Pressure',
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please Enter Systolic Blood Pressure';
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          model.sysbp = value;
                        },
                      ),
                    )
                  ],
                ),
              ),
              MyTextFormField(
                hintText: 'Enter Diasystolic Blood Pressure',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please Enter Diasystolic Blood Pressure';
                  }
                  return null;
                },
                onSaved: (String value) {
                  model.disysbp = value;
                },
              ),
              MyTextFormField(
                hintText: 'Enter Pulse Rate',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please Enter Pulse Rate';
                  }

                  _formKey.currentState!.save();

                  return null;
                },
                onSaved: (String value) {
                  model.pulserate = value;
                },
              ),
              MyTextFormField(
                hintText: 'Enter Temperature',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please Enter Temperature';
                  }
                  return null;
                },
                onSaved: (String value) {
                  model.temp = value;
                },
              ),
              MyTextFormField(
                hintText: 'Enter Oxygen Level',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please Enter Oxygen Level';
                  }
                  return null;
                },
                onSaved: (String value) {
                  model.oxylevel = value;
                },
              ),
              MyTextFormField(
                hintText: 'Enter Glucose Level',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please Enter Glucose Level';
                  }
                  return null;
                },
                onSaved: (String value) {
                  model.glucolevel = value;
                },
              ),

              RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Result(model: this.model)));
                  }
                },
                child: Text(
                  'Enter',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;


  MyTextFormField({
    required this.hintText,
    required this.validator,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),

      ),
    );
  }
}


