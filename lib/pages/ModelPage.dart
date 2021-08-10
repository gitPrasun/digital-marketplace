import 'package:digital_marketplace/components/commonDrawer.dart';
import 'package:digital_marketplace/components/domainCard.dart';
import 'package:flutter/material.dart';

class ModelPage extends StatefulWidget {
  @override
  _ModelPageState createState() => _ModelPageState();
}

class _ModelPageState extends State<ModelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer(),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Domains", style: Theme.of(context).textTheme.headline5),
                  ),
                  Divider(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(10, (index) {
                        return DomainCard();
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
