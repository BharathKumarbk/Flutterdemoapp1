import 'package:demo/usable.dart';
import 'package:flutter/material.dart';

void main() => runApp(FoodApp());

class FoodApp extends StatefulWidget {
  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> with TickerProviderStateMixin {
  List<Widget> _tabs = <Widget>[
    tabBar('1 kg'),
    tabBar('2 kg'),
    tabBar('3 kg'),
    tabBar('4 kg'),
  ];
  var count = 0;

  List<Widget> _tabViews = [
    Image.asset('images/1.png'),
    Image.asset('images/2.png'),
    Image.asset('images/3.png'),
    Image.asset('images/4.png'),
  ];
  TabController _tabController;
  Color ycolor = Color(0xff7c7618);
  Color bcolor = Color(0xff2f304f);
  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          backgroundColor: Color(0xff2f304f),
          appBarTheme: AppBarTheme(color: Color(0xff2f304f)),
          accentColor: Color(0xff2f304f),
          scaffoldBackgroundColor: Color(0xff2f304f)),
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios),
            elevation: 0.0,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.assistant),
              )
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  navHeading('Fruit cake', Colors.white, 30.0),
                  navHeading('Strawberry and Kiwi special', ycolor, 18.0),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Container(
                      height: 30.0,
                      child: TabBar(
                        unselectedLabelColor: ycolor,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            color: ycolor,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                                color: ycolor,
                                width: 1.0,
                                style: BorderStyle.solid)),
                        tabs: _tabs,
                        controller: _tabController,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 200.0,
                      height: 180.0,
                      color: bcolor,
                      child: TabBarView(
                        children: _tabViews,
                        controller: _tabController,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              (count == 15) ? count = 15 : count++;
                            });
                          },
                          child: Icon(
                            Icons.expand_less,
                            color: Colors.white,
                            size: 50.0,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: ycolor,
                          child: Text(
                            '$count',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              (count == 0) ? count = 0 : count--;
                            });
                          },
                          child: Icon(
                            Icons.expand_more,
                            color: Colors.white,
                            size: 50.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(right: 16.0),
                    child: Text(
                      'Rs 84/-',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: itemRow('egg.png', '4 eggs')),
                      Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.white,
                                          style: BorderStyle.solid),
                                      right: BorderSide(
                                          color: Colors.white,
                                          style: BorderStyle.solid))),
                              child: itemRow('ice.png', '2 tsp vennila'))),
                      Expanded(child: itemRow('sugar.png', '1 cup sugar')),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                child: Divider(
                  height: 1.0,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.map,
                      color: Colors.white70,
                      size: 100.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'DELIVARY',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '45 , Amarlands',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          'Nr.Hamer Road, London',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                child: Divider(
                  height: 1.0,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Ratings',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '(25)',
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: FlatButton(
                    splashColor: Colors.black38,
                    onPressed: () {
                      showDialog<bool>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: const Text(
                              'Message',
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      'Add to cart',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
