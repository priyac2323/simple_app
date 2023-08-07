import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.indigo
        ),
      ),
      body:
          CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink[100],borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text("Jasmine",
                        style: TextStyle(color: Colors.yellow[900],
                            fontSize: 30),)),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink[200],borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('Rapunzel',
                          style: TextStyle(color: Colors.yellow[900],
                              fontSize: 30)),),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink[300],borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('Cinderella',
                          style: TextStyle(color: Colors.yellow[700],
                              fontSize: 30))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink[400],borderRadius: BorderRadius.circular(20)),
                      child: Center(child:  Text('Belle',
                          style: TextStyle(color: Colors.yellow[600],
                              fontSize: 30))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('Snowwhite',
                          style: TextStyle(color: Colors.yellow[500],
                              fontSize: 30))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink[600],borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('Aurora',
                          style: TextStyle(color: Colors.yellow[400],
                              fontSize: 30))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink[700],borderRadius: BorderRadius.circular(20)),
                      child: Center(child:  Text('Ariel',
                          style: TextStyle(color: Colors.yellow[300],
                              fontSize: 30))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink[800],borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('Moana',
                          style: TextStyle(color: Colors.yellow[200],
                              fontSize: 30))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.pink[900],borderRadius: BorderRadius.circular(20)),
                      child: Center(child:  Text('Elsa',
                          style: TextStyle(color: Colors.yellow[100],
                              fontSize: 30))),
                    ),
                  ],
                ),
              ),
            ],
          ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Barbie'),
              accountEmail: Text('barbie@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images3.png'),
              ),
            ),
            ListTile(
              title: Text('My Profile'),
              leading: Icon(CupertinoIcons.person),
            ),
            ListTile(
              title: Text('Themes'),
              leading: Icon(CupertinoIcons.color_filter),
            ),
            ListTile(
              title: Text('Fonts'),
              leading: Icon(Icons.font_download_outlined),
            ),
            ListTile(
              title: Text('Favorites'),
              leading: Icon(CupertinoIcons.heart),
            ),
            ListTile(
              title: Text('Downloads'),
              leading: Icon(CupertinoIcons.arrow_down_to_line),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(CupertinoIcons.settings),
            ),
          ],
        ),
      ),
    );
  }
}