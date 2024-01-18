import 'package:flutter/material.dart';
import 'package:untitled5/utils/routes.dart';


class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imageurl="https://cdn-icons-png.flaticon.com/512/3135/3135715.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child:UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  margin: EdgeInsets.zero,
                accountName: Text("Hardik Sehgal"),
                  accountEmail: Text("hardiksehgal00@gmail.com"),
                  currentAccountPicture: Image.network(imageurl),

                ),
            ),
            ListTile(
              leading: Icon(Icons.home_filled,
                  color: Colors.white),

              title: Text("HOME",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            ListTile(
               onTap:  () =>Navigator.pushNamed(context, MyRoutes.loginRoute),
              leading: Icon(Icons.edit,
                  color: Colors.white),
              title: Text("Edit Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
