import 'package:flutter/material.dart';
import 'package:ipb_church/components/user_tile.dart';
import 'package:ipb_church/data/dummy_users.dart';

class UserList extends StatelessWidget {
  //const UserList({super.key});
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
        backgroundColor: Color.fromARGB(199, 9, 120, 11),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
      /*  body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),*/
    );
  }
}
