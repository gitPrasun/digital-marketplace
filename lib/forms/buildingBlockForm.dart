import 'dart:html';

import 'package:flutter/material.dart';

class BuildingBlockForm extends StatefulWidget {
  @override
  _BuildingBlockFormState createState() => _BuildingBlockFormState();
}

class _BuildingBlockFormState extends State<BuildingBlockForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        //height: 500,
        child: Form(
            child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text('Building Block'),
                  subtitle: Text('Enter Details'),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                      TextFormField(),
                  ],),
                ),

                ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Create'),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('Cancel'),
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
