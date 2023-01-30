//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ipb_church/homepage.dart';
import 'package:ipb_church/views/user_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: UserList(), //--Teste
        home: HomePage());
  }
}
/*
class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("VAI"),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => UserList()));
        },
      ),
    );
  }
}      
       Scaffold(
        appBar: AppBar(
          title: Text('2ª IPB Petrolina'),
          backgroundColor: Color.fromARGB(199, 9, 120, 11),
        ),
        /*   body: Center(
          child: Image.asset(
              'assets/images/logo-ipb-color.png'), //---# Logo da IPB Página inicial
          //body: Image.asset('assets/images/6048028.png'),
        ),
        */
        //---# Botão de Acessar (Login)
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[600],
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserList()),
            );
          },
          tooltip: 'Increment',
          //child: const Icon(Icons.add),
          child: const Icon(Icons.login),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/logo-ipb-color.png'), //---# Logo da IPB Página inicial
              const Text(
                "Bem vindo a tela inicial do APP.",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text("Login:",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              IconButton(
                //--TESTE 1 PRICIPAL
                /*   onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserList()),
                  );
                },*/
                //--TESTE 3
                /* onPressed: () => Navigator.pushNamed(
                    context, "/ipb_church/views/user_list.dart"),
                //--FIM TESTE 3*/
                //--TESTE 4
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserList()),
                  );
                },
                //--FIM TESTE 4
                icon: const Icon(Icons.login),
              )
              //--## FIM Teste FloatButton
            ],
          ),
        ),
      ),
    );
  }
}
*/