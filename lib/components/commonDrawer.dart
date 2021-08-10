import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Column(
        children: [
          DrawerHeader(child: null,),
          TextButton(onPressed: () {Navigator.pushNamed(context, '/');}, child: ListTile(leading: Icon(Icons.home),title: Text("Home"),)),
          TextButton(onPressed: () {Navigator.pushNamed(context, '/RoleModelPage');}, child: ListTile(leading: Icon(Icons.ac_unit),title: Text("My Models"),)),
          TextButton(onPressed: () {Navigator.pushNamed(context, '/ModelPage');}, child: ListTile(leading: Icon(Icons.anchor),title: Text("My Default Model"),)),
          TextButton(onPressed: () {Navigator.pushNamed(context, '/KPIPage');}, child: ListTile(leading: Icon(Icons.bar_chart),title: Text("My KPIs"),)),
          TextButton(onPressed: () {Navigator.pushNamed(context, '/ProfilePage');}, child: ListTile(leading: Icon(Icons.account_circle_outlined),title: Text("My Profile"),)),
          TextButton(onPressed: () {}, child: ListTile(leading: Icon(Icons.info_rounded),title: Text("About Marketplace"),)),
          Divider(),
          TextButton(onPressed: () {Navigator.pushNamed(context, '/DomainPage');}, child: ListTile(leading: Icon(Icons.info_rounded),title: Text("TBR Capability"),)),
          TextButton(onPressed: (){Navigator.pushNamed(context, '/ModelContinuumPage');}, child: ListTile(leading: Icon(Icons.account_balance),title: Text('My Continuum'),)),
        ],
      ),
    );
  }
}
