import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.blue, actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.apps_sharp),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.density_medium_sharp),
          ),
        ]),
        body: ListView(children: [
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
              child: Text(
                'Account\n+998 880331660',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: TextButton(
              onPressed: () {},
              child: Text(
                '@Apple_iphone_macos\n   Username',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: TextButton(
              onPressed: () {},
              child: Text(
                'Hayotda maqsading yoqmi? Unda maqsadi\nbor odamlarga ishlashga majbursiz',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notification_add),
            title: Text(
              'Notifications and Sounds',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text(
              'Privacy and Security',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.data_array),
            title: Text(
              'Data and Storage',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text(
              'Chat settings',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.adobe_outlined),
            title: Text(
              'Stickers and Emoji',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text(
              'Chat Folder',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.devices),
            title: Text(
              'Devices',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text(
              'Language',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: Color.fromARGB(255, 8, 95, 167),
            ),
            title: Text(
              'Telegram Premium',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text(
              'Help',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.sms),
            title: Text(
              'Ask a Question',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text(
              'Telegram FAQ',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_rounded),
            title: Text(
              'Privace Policy',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
        ]));
  }
}
