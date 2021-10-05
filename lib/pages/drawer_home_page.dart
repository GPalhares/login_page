import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';
import 'package:rive/rive.dart';

class DrawerHomePage extends StatelessWidget {
  const DrawerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink.shade600,
            ),
            child: CircleAvatar(
                backgroundColor: Colors.black12,
                child: RiveAnimation.asset('assets/images/tree.riv')),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
            ),
          ),
          GestureDetector(
            child: SizedBox(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
            ),
          ),
          GestureDetector(
            child: SizedBox(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 100)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.pink.shade600),
              onPressed: () {},
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
