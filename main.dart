import 'package:flutter/material.dart';
import 'package:scrollable_tab_flutter_app/Fragment/AlarmFragment.dart';
import 'package:scrollable_tab_flutter_app/Fragment/BalanceFragment.dart';
import 'package:scrollable_tab_flutter_app/Fragment/ContactFragment.dart';
import 'package:scrollable_tab_flutter_app/Fragment/EmailFragment.dart';
import 'package:scrollable_tab_flutter_app/Fragment/HomeFragment.dart';
import 'package:scrollable_tab_flutter_app/Fragment/PersonFragment.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}
class  HomeActivity extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        bottom: const TabBar(
          isScrollable: true,
            tabs:[
              Tab(icon: Icon(Icons.home),text: 'Home',),
              Tab(icon: Icon(Icons.email),text: 'Email',),
              Tab(icon: Icon(Icons.contact_mail),text: 'Contact',),
              Tab(icon: Icon(Icons.person),text: 'Person',),
              Tab(icon: Icon(Icons.alarm),text: 'Alarm',),
              Tab(icon: Icon(Icons.account_balance),text: 'Balance',),
              Tab(icon: Icon(Icons.search),text: 'Search',),
              Tab(icon: Icon(Icons.settings),text: 'Setting',),

        ]),
      ),
          body: const TabBarView(
            children: [
              HomeFragment(),
              EmailFragment(),
              ContactFragment(),
              PersonFragment(),
              AlarmFragment(),
              BalanceFragment(),

            ],
      ),
    )
    );
  }
}
