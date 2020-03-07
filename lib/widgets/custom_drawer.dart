import 'package:creativetodo/database/models/person.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Person person;

  CustomDrawer({
    this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          35.0,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            person.picture.medium,
                          ),
                        ),
                      ),
                    ),
                  ),
                  accountName: Text(
                    '${person.name.title} ${person.name.first} ${person.name.last}',
                  ),
                  accountEmail: Text(
                    person.email,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Teste 1',
                  ),
                  trailing: Icon(
                    Icons.arrow_upward,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Teste 2',
                  ),
                  trailing: Icon(
                    Icons.arrow_downward,
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: [
                    Divider(),
                    ListTile(
                      title: Text(
                        'Close',
                      ),
                      trailing: Icon(
                        Icons.close,
                      ),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
