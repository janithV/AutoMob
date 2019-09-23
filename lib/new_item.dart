import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() async {
  runApp(MaterialApp(title: 'MyApp', home: AddItem()));
}

class AddItem extends StatefulWidget {
  AddItem();

  @override
  _AddItemState createState() => _AddItemState();


}

class _AddItemState extends State<AddItem> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> formData;
  List<String> cities = [
    'Bangalore',
    'Chennai',
    'New York',
    'Mumbai',
    'Delhi',
    'Tokyo',
  ];
  List<String> countries = [
    'INDIA',
    'USA',
    'JAPAN',
  ];

  _AddItemState() {
    formData = {
      'City': 'Bangalore',
      'Country': 'INDIA',
    };
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: buildFutures(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            default:
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                if (snapshot.data != null)
                  return Scaffold(

                      body: Container(
                        color: Colors.white,
                        constraints: BoxConstraints.expand(),
                        child: Form(
                            key: _formKey,
                            autovalidate: false,
                            child: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[

                                    Divider(
                                        height: 10.0,
                                        color: Theme.of(context).primaryColor),
                                    DropDownField(
                                        value: formData['Country'],
                                        icon: Icon(Icons.map),
                                        required: false,
                                        hintText: 'Choose a country',
                                        labelText: 'Country',
                                        items: countries,
                                        setter: (dynamic newValue) {
                                          formData['Country'] = newValue;
                                        }),
                                  ],
                                ))),
                      ));
                else
                  return LinearProgressIndicator();
              }
          }
        });
  }

  Future<bool> buildFutures() async {
    return true;
  }
}