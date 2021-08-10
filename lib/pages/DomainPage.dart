import 'package:digital_marketplace/components/commonDrawer.dart';
import 'package:flutter/material.dart';

class DomainPage extends StatefulWidget {
  @override
  _DomainPageState createState() => _DomainPageState();
}

class _DomainPageState extends State<DomainPage> {
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
                  Text('Capabilities'),
                  Divider(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(10, (index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 7,
                          child: Column(
                            children: [
                              ListTile(
                                leading: IconButton(icon: Icon(Icons.info_sharp),onPressed: (){},),
                                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),
                                title: Text('<<Capability Name>>'),
                                subtitle: Text('total 5 Services'),
                              )
                            ],
                          ),
                        );
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
