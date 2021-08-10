import 'package:flutter/material.dart';

class MetaPropertiesForm extends StatefulWidget {
  @override
  _MetaPropertiesFormState createState() => _MetaPropertiesFormState();
}

class _MetaPropertiesFormState extends State<MetaPropertiesForm> {
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
                      leading: Icon(Icons.account_tree_outlined),
                      title: Text('MetaProperty'),
                      subtitle: Text('Enter Details'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter Meta Property Name',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Select Meta Property Type',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter UI Context(Section)',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Select base type',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Select Enterprise entity',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Choose Cardinality',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Choose optionality',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Select list of values',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Default Value',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Min Value',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Max value',
                            ),
                          ),

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
