import 'dart:html';

import 'package:digital_marketplace/components/domainCard.dart';
import 'package:flutter/material.dart';

class NestedTabBar extends StatefulWidget {

  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}
class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late TabController _nestedTabController;

  int noOfItems = 10;
  var sbbVisibility = false;
  var abbVisibility = false;

  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 2, vsync: this);

  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {



    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.orange,
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              text: "Enterprise Building Blocks",
            ),
            Tab(
              text: "Solution Building Blocks",
            ),

          ],
        ),
        Container(
          height: screenHeight * 0.75,
          margin: EdgeInsets.only(left: 0.70, right: 0.0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionPanelList(
                        expansionCallback: (int item, bool status) {
                          print('Invoked with'+item.toString()+' and '+status.toString() + ' and ' + abbVisibility.toString() );
                          setState(() {
                            print('Reached here '+ abbVisibility.toString());
                            abbVisibility = !abbVisibility;
                            print('leaving here '+ abbVisibility.toString());
                          });
                        },
                        children: [
                          ExpansionPanel(
                              headerBuilder: (BuildContext context, bool isExpanded){
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Text('Header Domain'),
                                  ),
                                );
                              },
                              body: GridView.count(
                                shrinkWrap: true,
                                crossAxisCount: 3,
                                children: List.generate(noOfItems, (index) {
                                  return DomainCard();
                                }),
                              ),
                              isExpanded: abbVisibility,
                          )

                         ],

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blueGrey[300],
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}