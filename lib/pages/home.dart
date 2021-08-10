import 'package:digital_marketplace/components/commonDrawer.dart';
import 'package:digital_marketplace/forms/buildingBlockForm.dart';
import 'package:digital_marketplace/forms/loginForm.dart';
import 'package:digital_marketplace/forms/metaPropertiesForm.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      drawer: CommonDrawer(),
      body: MetaPropertiesForm(),//BuildingBlockForm(),//LoginForm(),
    );
  }
}

