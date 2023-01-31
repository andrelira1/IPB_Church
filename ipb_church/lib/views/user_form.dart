import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ipb_church/models/user.dart';
import 'package:ipb_church/provider/users.dart';
import 'package:provider/provider.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  // final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Usuário'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                final isValid = _form.currentState?.validate();

                if (isValid != null) {
                  _form.currentState?.save();
                  /*      Provider.of<Users>(context, listen: false).put(
                    User(
                      id: _formData['id'],
                      name: _formData['nome'],
                      email: _formData['email'],
                      avatarUrl: _formData['avatarUrl'],
                    ),
                  );
*/
                  Navigator.of(context).pop();
                }
                /*else {
                 _form.currentState?.save();
                  Navigator.of(context).pop();
                }*/
              },
              icon: Icon(Icons.save))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Informe um nome!';
                  }
                  if (value.trim().length < 3) {
                    return 'Nome muito curto. No mínimo 3 letras';
                  }
                  //  return 'Ocorreu um erro';
                  return null;
                },
                onSaved: (value) {
                  print(value);
                },
                //  onSaved: (value) => _formData['name'] = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
                //  onSaved: (value) => _formData['email'] = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'URL do Avatar'),
                //   onSaved: (value) => _formData['avatarUrl'] = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
