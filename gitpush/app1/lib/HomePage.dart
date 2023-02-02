// ignore_for_file: prefer_const_constructors

import 'package:app1/pages/SearchPage.dart';
import 'package:app1/pages/contactpage.dart';
import 'package:app1/tabBar/allpag.dart';
import 'package:app1/tabBar/botspage.dart';
import 'package:app1/tabBar/channels.dart';
import 'package:app1/tabBar/group.dart';
import 'package:app1/tabBar/privatepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Muhammad'),
                accountEmail: Text(
                  '+99880331660',
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/icon/photo.jpg')),
                otherAccountsPictures: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
                ],
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('New group'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('New secret CHat'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('New Channel'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Contacts'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Chat Folder'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('People Nearby'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Saved Messages'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Calls'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profile(),
                      ),
                    );
                  },
                  child: Text('Settings'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Plus Settings'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Categories'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Download themes'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Theming'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Support Group'),
                ),
              ),
              ListTile(
                leading: TextButton(
                  onPressed: () {},
                  child: Text('Chats Counters'),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green,
          // ignore: prefer_const_constructors
          title: Text(
            'Plus Messenger',
            style: TextStyle(color: Colors.white),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15),
            tabs: [
              Text(
                'All',
                style: TextStyle(),
              ),
              Text('Private'),
              Text('Group'),
              Text(
                'Channels',
                maxLines: 1,
              ),
              Text('Bots'),
            ],
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            // ignore: prefer_const_constructors

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.folder,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Allpage(),
            PrivatePage(),
            Grouppage(),
            Channels(),
            BotsPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          focusColor: Colors.green,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Contact(),
              ),
            );
          },
        ),
      ),
    );
  }
}
