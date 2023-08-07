import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          const SizedBox(height: 30),
          CircleAvatar(
            radius: 100,
            foregroundImage: AssetImage('assets/images3.png'),
          ),
          const SizedBox(height: 40),
          itemProfile('Name', 'Barbie', CupertinoIcons.person, Colors.black, ),
          const SizedBox(height: 30),
          itemProfile('Phone', '9876543210', CupertinoIcons.phone, Colors.black),
          const SizedBox(height: 30),
          itemProfile('Address', 'Dream-house, Barbie Land', CupertinoIcons.location, Colors.black,),
          const SizedBox(height: 30),
          itemProfile('Email', 'barbie@gmail.com', CupertinoIcons.mail, Colors.black,),
          const SizedBox(height: 50,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  primary: Colors.pink,
                ),
                child: Text('Edit Profile', style: TextStyle(fontSize: 20, color: Colors.pink[100]),)
            ),
          )
        ],
      ),
    ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData, Color color, ) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.orange,
                spreadRadius: 1,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.black),
        tileColor: Colors.pink,
      ),
    );
  }
}