import 'package:flutter/material.dart';

class ModelCard extends StatelessWidget {
  const ModelCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Build a minimal ROLEMODEL Object
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView(
        children: [
          Card(
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width /
                  2, // MediaQuery.of(context).size.width/4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('Central Model'),
                      subtitle: Text(
                        'Description of the Model',
                        style: TextStyle(
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                      trailing: IconButton(onPressed: (){},icon: Icon(Icons.navigate_next),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12.0),
                      child: Text('Access'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.brightness_1_outlined,
                        size: 12,
                      ),
                      title: Text('Service ',
                          style: TextStyle(fontSize: 12)),
                    ),
                    ListTile(
                      leading:
                      Icon(Icons.brightness_1, size: 12),
                      title: Text('Capability ',
                          style: TextStyle(fontSize: 12)),
                    ),
                    ListTile(
                      leading:
                      Icon(Icons.brightness_2, size: 12),
                      title: Text('Domain ',
                          style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
