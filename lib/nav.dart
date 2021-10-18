import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedindex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Profile'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav Bar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Person'),
          ),
        ],
        currentIndex: _selectedindex,
        onTap: _onItemTap,
      ),
    );
  }
}
