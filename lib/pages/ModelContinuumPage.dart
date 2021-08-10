import 'package:digital_marketplace/components/commonDrawer.dart';
import 'package:digital_marketplace/components/domainCard.dart';
import 'package:digital_marketplace/components/nestedTabBar.dart';
import 'package:digital_marketplace/pages/ModelPage.dart';
import 'package:flutter/material.dart';

class ModelContinuumPage extends StatefulWidget {
  @override
  _ModelContinuumPageState createState() => _ModelContinuumPageState();
}

class _ModelContinuumPageState extends State<ModelContinuumPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Building Blocks'),
          bottom: TabBar(
            isScrollable: true,
            automaticIndicatorColorAdjustment: true,
            tabs: [
              Text('Fundamental'),
              Text('Common Systems'),
              Text('Industry'),
              Text('Organization')
            ],
          ),
        ),
        drawer: CommonDrawer(),
        body: Center(
          child: Card(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.55,
              height: MediaQuery.of(context).size.height * 0.9,
              child: TabBarView(
                children: [
                  // ExpansionPanelList(
                  //   children: [
                  //     ExpansionPanel(
                  //       headerBuilder: (context, isExpanded) {
                  //         return ListTile(title: Text('tab1'));
                  //         },
                  //       body: SizedBox(
                  //         height: 50,
                  //         width: 50,
                  //         child: Text(''),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  NestedTabBar(),
                  Text('tab2'),
                  Text('tab3'),
                  Text('tab 4'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
