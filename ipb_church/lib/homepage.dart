import 'package:flutter/material.dart';
import 'package:ipb_church/views/em_breve.dart';
//import 'package:ipb_church/components/user_login.dart';
import 'package:ipb_church/views/user_list.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

//-----##### TELA APÓS LOGIN #####-----//
class HomePage extends StatelessWidget {
  //const FirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2ª IPB Petrolina'),
        /*  actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],*/
        backgroundColor: Color.fromARGB(199, 9, 120, 11),
      ),

      /*  body: Center(
      child: RaisedButton(
        child: Text("Seja Bem Vindo!"),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => UserList()));
        },
      ),*/
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo-ipb-branco.png'),
              //Color(Colors.green.shade50),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "Bem vindo ao App IPB",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ), //---# Logo da IPB Página inicial
              //body: Image.asset('assets/images/6048028.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            //MaterialPageRoute(builder: (context) => UserList()),
                            MaterialPageRoute(builder: (context) => UserList()),
                          );
                        },
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        iconSize: 40,
                        color: Colors.blue,
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('Usuários'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            //MaterialPageRoute(builder: (context) => UserList()),
                            MaterialPageRoute(builder: (context) => EmBreve()),
                          );
                        },
                        icon: Icon(Icons.book_rounded),
                        iconSize: 40,
                        color: Colors.brown,
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('Salas'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            //MaterialPageRoute(builder: (context) => UserList()),
                            MaterialPageRoute(builder: (context) => EmBreve()),
                          );
                        },
                        icon: Icon(Icons.text_snippet_rounded),
                        iconSize: 40,
                        color: Colors.grey,
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('Relatórios'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            //MaterialPageRoute(builder: (context) => UserList()),
                            MaterialPageRoute(builder: (context) => EmBreve()),
                          );
                        },
                        icon: Icon(Icons.monetization_on),
                        iconSize: 40,
                        color: Colors.green,
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('Ofertas'),
                      ),
                    ],
                  ),
                  /*    IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.book_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.text_snippet_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.monetization_on),
                  ),
                  */
                ],
              )
            ],
          ),
        ),
        //color: Colors.green.shade50,
        color: Colors.green.shade100,
      ),

      /*   bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // title: Text('Usuários'),
          ),
        ],
      ),*/
    );
  }
}
/*
class HomePage extends StatefulWidget {
  //MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    return Scaffold(
      // home: UserList(), //--Teste
      //   home: Scaffold(
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[600],
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserLogin()),
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
                  //MaterialPageRoute(builder: (context) => UserList()),
                  MaterialPageRoute(builder: (context) => UserLogin()),
                );
              },
              //--FIM TESTE 4
              icon: const Icon(Icons.login),
            )
            //--## FIM Teste FloatButton
          ],
        ),
      ),
    );
  }
}
*/