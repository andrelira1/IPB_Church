import 'package:flutter/material.dart';
import 'package:ipb_church/models/user.dart';

class UserTile extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
        leading: avatar,
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
                color: Colors.orange,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.red,
              ),
            ],
          ),
        ));
  }
}
