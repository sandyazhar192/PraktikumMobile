import 'package:flutter/material.dart';

void main() {
  runApp(const tabBarDemo());
}

class tabBarDemo extends StatelessWidget {
  const tabBarDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
                appBar: AppBar(
                  bottom: const TabBar(
                    tabs: [
                      Tab(
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          text: ("Home")),
                      Tab(
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          text: "Profile"),
                      Tab(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: "Settings"),
                      Tab(
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          text: "Notifications"),
                      Tab(
                          icon: Icon(
                            Icons.help,
                            color: Colors.white,
                          ),
                          text: "Help"),
                    ],
                  ),
                  title: const Text(
                    "Tab Bar Demo",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.blue,
                ),
                body: const TabBarView(
                  children: [
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home, size: 200, color: Colors.blue),
                        Text('Home Screen',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    )),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, size: 200, color: Colors.blue),
                        Text('Profile Screen',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    )),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings, size: 200, color: Colors.blue),
                        Text('Settings Screen',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    )),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications,
                            size: 200, color: Colors.blue),
                        Text('Notifications Screen',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    )),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.help, size: 200, color: Colors.blue),
                        Text('Help Screen',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    )),
                  ],
                ))));
  }
}
