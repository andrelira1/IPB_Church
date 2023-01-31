import 'package:flutter/material.dart';
import 'package:ipb_church/components/user_tile.dart';
import 'package:ipb_church/models/user.dart';
import 'package:ipb_church/provider/users.dart';
import 'package:provider/provider.dart';
import 'package:ipb_church/routes/app_routes.dart';

class UserList extends StatelessWidget {
  //const UserList({super.key});
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
                // arguments: users,
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
        backgroundColor: Color.fromARGB(199, 9, 120, 11),
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
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
