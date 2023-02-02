import 'package:app1/item/image.dart';
import 'package:app1/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Allpage extends StatefulWidget {
  const Allpage({super.key});

  @override
  State<Allpage> createState() => _AllpageState();
}

class _AllpageState extends State<Allpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, index) {
          return chatItem(context, chatList[index]);
        },
      ),
    );
  }
}
