import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex  = 0;

  List _pages = [
    Text('Page1'),
    Text('Page2'),
    Text('Page3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:_pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Account'))
      ], currentIndex: _selectedIndex,
      onTap: _onItemTapped,),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
