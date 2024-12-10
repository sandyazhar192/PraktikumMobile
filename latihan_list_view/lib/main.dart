import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("FTI UNISKA"),
                accountEmail: Text("fti@uniska-bjm.ac.id"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 50),
                ),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  // Handle Home tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Profile"),
                onTap: () {
                  // Handle Profile tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {
                  // Handle Settings tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("ListView"),
          actions: [
            IconButton(
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.lightGreen,
          elevation: 50.0,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open the drawer
            },
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.black,
              child: Icon(Icons.person, color: Colors.white, size: 50),
            ),
            Center(
              child: Text(
                'FTI Tutorial',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Text(
              "Ini adalah constructor standar untuk class ListView. ListView secara sederhana menggunakan list widget dan membuatnya dapat di-scroll. Biasanya, ListView digunakan dengan beberapa child sebagai list, dan akan membangun elemen-elemen tak terlihat dalam list. Oleh karena itu, menggunakan terlalu banyak widget dapat mengurangi efisiensi list.",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
