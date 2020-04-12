import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalObjectKey<ScaffoldState>('HomeScreen');

  @override
  Widget build(BuildContext context) {
    SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
        ),
        key: _scaffoldKey,
        body: Placeholder(),
      ),
    );
  }
}
