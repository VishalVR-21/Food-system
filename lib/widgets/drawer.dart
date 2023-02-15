import 'package:delvivery/screens/profile_section.dart';
import 'package:delvivery/screens/setting.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              // color: Colors.orange,
              color: Theme.of(context).primaryColor,
              child: DrawerHeader(
                child: Stack(children: [
                  Positioned(
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: MediaQuery.of(context).size.height * .5,
                          child: FittedBox(
                              fit: BoxFit.fill,
                              child: Icon(
                                Icons.person,
                                size: 40,
                              )))),
                  Positioned(
                      width: MediaQuery.of(context).size.width * .9,
                      bottom: 0,
                      child: CircleAvatar(
                        child: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {},
                        ),
                      )),
                ]),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.input),
                title: Text('Main Screen'),
                onTap: () => {},
              ),
            ),
            Divider(thickness: 0.5),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.verified_user),
                title: Text('Profile'),
                onTap: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Profile()))
                },
              ),
            ),
            Divider(thickness: 0.5),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingsPage()))
                },
              ),
            ),
            Divider(thickness: 0.5),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.border_color),
                title: Text('Feedback'),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ),
            Divider(thickness: 0.5),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () => {Navigator.of(context).pop()},
              ),
            )
          ],
        ),
      ),
    );
  }
}
