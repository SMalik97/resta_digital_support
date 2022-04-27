import 'package:flutter/material.dart';
import 'package:support/customer_chat.dart';
import 'package:support/delivery_chat.dart';
import 'package:support/restaurant_chat.dart';

class ChatSupport extends StatefulWidget {
  const ChatSupport({Key? key}) : super(key: key);

  @override
  State<ChatSupport> createState() => _ChatSupportState();
}

class _ChatSupportState extends State<ChatSupport> {
  String customer="Customer";
  String restaurant="Restaurant";
  String delivery="Delivery";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[100],
              child: _tabBar,
            ),
          ),
        ),
        body: TabBarView(
          //controller: _tabController,
          children: [
            customer_chat(),
            restaurant_chat(),
            delivery_chat()
          ],
        ),
      ),
    );
  }

  TabBar get _tabBar =>TabBar(
    indicatorColor: Colors.green[600],
    indicatorWeight: 4,
    labelColor: Colors.green[600],
    labelStyle: new TextStyle(fontWeight: FontWeight.w900, fontSize: 14,),
    unselectedLabelStyle: new TextStyle( fontSize: 14,fontWeight: FontWeight.w500,),
    unselectedLabelColor: Color(0xff414345),
    isScrollable: false,
    tabs: [
      Tab(
          child: Text(customer,)
      ),
      Tab(
          child: Text(restaurant,)
      ),
      Tab(child: Text(delivery))
    ],
  );

}
