import 'package:flutter/material.dart';
import 'package:uprava/page/car_low_widget.dart';
import 'package:uprava/page/shop_low_widget.dart';
import 'package:uprava/page/street_low_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 0;
  final List<Widget> _widgetOptions = <Widget>[
    ZakonCarPanelList(),
    ShopLowPanelListe(),
    DropdownButtonExample(),
    ShopLowPanelListe(),
  ];

  void onSelectTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ДОКАЗ'),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Center(child: _widgetOptions[_selectedTab]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car), label: 'Авто'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Магазин'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_search), label: 'Документи'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Тести'),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
