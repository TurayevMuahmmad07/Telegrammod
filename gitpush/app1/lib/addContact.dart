import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController firsNameCtr = TextEditingController();
  TextEditingController num = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New contact')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'First name(required)',
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'First name(required)',
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide())),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
