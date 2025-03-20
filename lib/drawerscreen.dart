import 'package:flut/metlist.dart';
import 'package:flutter/material.dart';

class Drawerscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: AppBar(
            title: const Text("Drawer Screen"),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            backgroundColor: const Color.fromARGB(218, 216, 118, 224),
            foregroundColor: const Color.fromARGB(255, 242, 245, 248),
            toolbarHeight: 40,
          ),
        ),
      ),
      body: Center(child: Text('A drawer is an invisible side screen.')),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Wares"),
                accountEmail: Text("md.abdulwares@outlook.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/DSC_0023.JPG"),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Metlist()),
                );
              },
            ),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
            ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
          ],
        ),
      ),
    );
  }
}
