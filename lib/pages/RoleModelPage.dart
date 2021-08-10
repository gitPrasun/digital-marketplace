import 'package:digital_marketplace/components/commonDrawer.dart';
import 'package:digital_marketplace/components/modelCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoleModelPage extends StatefulWidget {
  @override
  _RoleModelPageState createState() => _RoleModelPageState();
}

class _RoleModelPageState extends State<RoleModelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer(),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.width * 0.9,
          width: MediaQuery.of(context).size.width / 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Models',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    ModelCard(),
                    ModelCard()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

