import 'package:flutter/material.dart';

class DomainCard extends StatefulWidget {
  @override
  _DomainCardState createState() => _DomainCardState();
}

class _DomainCardState extends State<DomainCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3,left: 2,right: 2,bottom: 3),
            child: ListTile(
              leading: IconButton(onPressed: () {
                Navigator.pushNamed(context, '/DomainPage');
              },icon:Icon(Icons.info_sharp),),

              title: Text(
                'Domain ',
                style: Theme.of(context).textTheme.button,
              ),
              subtitle: Text('total 10 capabilities', style: Theme.of(context).textTheme.overline,),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Divider(),
          ListTile(title: Text('Digitization Focus:'), trailing: Text('5%'),),
        ],
      ),
    );;
  }
}
