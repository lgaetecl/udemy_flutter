import 'package:flutter/material.dart';

import 'package:udemy_flutter_tarea1/text_output.dart';

class _FormData {
  String _value = 'Texto por Defecto';
}

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  final _formKey = GlobalKey<FormState>();
  _FormData _data = new _FormData();

  void _submit() {
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.text_fields),
                  title: TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Nueva palabra para Texto'),
                    validator: (val) => val.isEmpty ? 'Texto requerido' : null,
                    onSaved: (String val) {
                      setState(() {
                        this._data._value = val;
                      });
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: _submit,
                  child: Text('Cambiar Texto'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: TextOutput(_data._value),
              )
            ],
          ),
        )
      ],
    );
  }
}
