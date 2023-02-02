import 'package:app1/item/contactitem.dart';
import 'package:app1/models/ContactModel.dart';
import 'package:app1/pages/SearchPage.dart';
import 'package:app1/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  void initState() {
    contacts.sort((a, b) => a.lastSeenTime.compareTo(b.lastSeenTime));
  }

  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'New Messenger',
            style: TextStyle(fontSize: 15),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchPage(),
                    ));
              },
              icon: Icon(
                Icons.search,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Stack(
                children: [
                  Icon(Icons.sort),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Text(
                      'A',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ]),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, index) {
          return ContactItem(context, contacts[index]);
        },
      ),
    );
  }
}
