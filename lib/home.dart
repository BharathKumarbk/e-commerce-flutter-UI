import 'package:ecommerceflutterbapp/homebody.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class EcomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _EcomAppBarState createState() => _EcomAppBarState();
  @override
  Size get preferredSize => Size.fromHeight(200.0);
}

class _EcomAppBarState extends State<EcomAppBar> with TickerProviderStateMixin {
  static Widget menuBar(String title, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        "$title",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  final List<Tab> _tabs = <Tab>[
    Tab(
      child: menuBar("Entertainment", 0),
    ),
    Tab(
      child: menuBar("Gadgets", 1),
    ),
    Tab(
      child: menuBar("Mobiles", 2),
    ),
    Tab(
      child: menuBar("Movies", 3),
    ),
    Tab(
      child: menuBar("Groceries", 4),
    ),
    Tab(
      child: menuBar("Laptops", 5),
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(
            Icons.menu,
            color: Colors.green[400],
            size: 30.0,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                LineIcons.gears,
                color: Colors.green[400],
                size: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                LineIcons.cart_arrow_down,
                color: Colors.green[400],
                size: 30.0,
              ),
              
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(140.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.green[200]),
                        focusColor: Colors.black,
                        hintText: "Do you want anything?",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Colors.green, width: 1.0)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 32.0),
                          child: Icon(
                            LineIcons.search,
                            color: Colors.black,
                            size: 25.0,
                          ),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30.0)),
                    isScrollable: true,
                    controller: _tabController,
                    tabs: _tabs,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: TabBarView(
              children: <Widget>[
                GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                   gridHome(1,'joker.jpg','Joker','2019',context),
                   gridHome(2,'2.jpeg','The Lion King','2019',context),
                   gridHome(3,'3.jpg','MIB','2019',context),
                   gridHome(4,'4.jpg','Hobbs and Shaw','2019',context),
                   gridHome(5,'5.jpg','21 Bridges','2019',context),
                   gridHome(6,'6.jpg','Angel ha Fallen','2019',context),
                   gridHome(7,'7.jpg','Hunger Games','2014',context),
                   gridHome(8,'8.jpg','Rouge One','2019',context),
                
                 ],
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                   gridHome(1,'joker.jpg','Joker','2019',context),
                   gridHome(2,'2.jpeg','The Lion King','2019',context),
                   gridHome(3,'3.jpg','MIB','2019',context),
                   gridHome(4,'4.jpg','Hobbs and Shaw','2019',context),
                   gridHome(5,'5.jpg','21 Bridges','2019',context),
                   gridHome(6,'6.jpg','Angel ha Fallen','2019',context),
                   gridHome(7,'7.jpg','Hunger Games','2014',context),
                   gridHome(8,'8.jpg','Rouge One','2019',context),
                
                 ],
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                   gridHome(1,'joker.jpg','Joker','2019',context),
                   gridHome(2,'2.jpeg','The Lion King','2019',context),
                   gridHome(3,'3.jpg','MIB','2019',context),
                   gridHome(4,'4.jpg','Hobbs and Shaw','2019',context),
                   gridHome(5,'5.jpg','21 Bridges','2019',context),
                   gridHome(6,'6.jpg','Angel ha Fallen','2019',context),
                   gridHome(7,'7.jpg','Hunger Games','2014',context),
                   gridHome(8,'8.jpg','Rouge One','2019',context),
                
                 ],
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                   gridHome(1,'joker.jpg','Joker','2019',context),
                   gridHome(2,'2.jpeg','The Lion King','2019',context),
                   gridHome(3,'3.jpg','MIB','2019',context),
                   gridHome(4,'4.jpg','Hobbs and Shaw','2019',context),
                   gridHome(5,'5.jpg','21 Bridges','2019',context),
                   gridHome(6,'6.jpg','Angel ha Fallen','2019',context),
                   gridHome(7,'7.jpg','Hunger Games','2014',context),
                   gridHome(8,'8.jpg','Rouge One','2019',context),
                
                 ],
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                   gridHome(1,'joker.jpg','Joker','2019',context),
                   gridHome(2,'2.jpeg','The Lion King','2019',context),
                   gridHome(3,'3.jpg','MIB','2019',context),
                   gridHome(4,'4.jpg','Hobbs and Shaw','2019',context),
                   gridHome(5,'5.jpg','21 Bridges','2019',context),
                   gridHome(6,'6.jpg','Angel ha Fallen','2019',context),
                   gridHome(7,'7.jpg','Hunger Games','2014',context),
                   gridHome(8,'8.jpg','Rouge One','2019',context),
                
                 ],
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                   gridHome(1,'joker.jpg','Joker','2019',context),
                   gridHome(2,'2.jpeg','The Lion King','2019',context),
                   gridHome(3,'3.jpg','MIB','2019',context),
                   gridHome(4,'4.jpg','Hobbs and Shaw','2019',context),
                   gridHome(5,'5.jpg','21 Bridges','2019',context),
                   gridHome(6,'6.jpg','Angel ha Fallen','2019',context),
                   gridHome(7,'7.jpg','Hunger Games','2014',context),
                   gridHome(8,'8.jpg','Rouge One','2019',context),
                
                 ],
                ),
                
              

                
              
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
