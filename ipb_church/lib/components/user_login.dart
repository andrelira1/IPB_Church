import 'package:flutter/material.dart';
import 'package:ipb_church/homepage.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Tela de Login')),
        /*  actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],*/
        backgroundColor: Color.fromARGB(199, 9, 120, 11),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Insira seus dados Cadastrais',
                style: TextStyle(fontSize: 20),
              ),
            ),
            // Text('E-mail:'),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            //  Text('Senha:'),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),
            ElevatedButton(
              child: const Text('Entrar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green[400],
                //onPrimary:
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                // print('Entrar Pressionado');
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Text('Esqueceu a senha?'),
          ],
        ),
      ),
      //---### Meu AppBar
      /* 
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),*/ //---### Fim do Meu AppBar
    );
  }
}
