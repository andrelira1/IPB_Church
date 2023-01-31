import 'package:flutter/material.dart';
import 'package:ipb_church/homepage.dart';
//import 'package:ipb_church/views/user_list.dart';

/*
class FirstPage extends StatelessWidget {
  //const FirstPage({ Key? key }) : super(key: key);

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
} */
class EmBreve extends StatefulWidget {
  //MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<EmBreve> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: UserList(), //--Teste
      home: Scaffold(
        appBar: AppBar(
          title: Text('2ª IPB Petrolina-PE'),
          backgroundColor: Color.fromARGB(199, 9, 120, 11),
        ),
        /*   body: Center(
          child: Image.asset(
              'assets/images/logo-ipb-color.png'), //---# Logo da IPB Página inicial
          //body: Image.asset('assets/images/6048028.png'),
        ),
        */
        //---# Botão de Acessar (Login)
        /*  floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[600],
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () {
            // print('Entrar Pressionado');
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage()));
          },
          tooltip: 'Increment',
          //child: const Icon(Icons.add),
          child: const Icon(Icons.login),
        ), */
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/5315605.png'), //---# Logo da IPB Página inicial
              const Text(
                "Estamos Trabalhando Nisso!",
                style: TextStyle(fontSize: 25, color: Colors.blueGrey),
              ),
              ElevatedButton(
                child: const Text('Voltar'),
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
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
