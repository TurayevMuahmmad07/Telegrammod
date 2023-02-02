import 'package:app1/pages/SearcheContact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
              filled: true,
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search...'),
          onChanged: (val) {
            if (val != '') {
              searcheContact(val);
            } else {
              searchedList.clear();
            }
          },
        ),
      ),
    );
  }
}
