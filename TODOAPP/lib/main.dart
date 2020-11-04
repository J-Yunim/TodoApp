import 'package:TODOAPP/UI/Intray/intray_page.dart';
import 'package:flutter/material.dart';
import 'package:TODOAPP/models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
              children: [
                TabBarView(
                  children: [
                    IntrayPage(),
                    new Container(
                      color: Colors.orange,
                    ),
                    new Container(
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Intray",
                        style: myDefault,
                      ),
                      Container()
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(
                      top: 140,
                      left: MediaQuery.of(context).size.width * 0.5 - 40),
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      size: 70,
                    ),
                    backgroundColor: myRed,
                    onPressed: () {},
                  ),
                )
              ],
            ),
            appBar: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.rss_feed),
                ),
                Tab(
                  icon: new Icon(Icons.perm_identity),
                ),
              ],
              labelColor: myRed,
              unselectedLabelColor: darkgrey,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
