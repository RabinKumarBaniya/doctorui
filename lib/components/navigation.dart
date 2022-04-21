import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doctorui/screens/home_screen.dart';
class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
   int _selectedIndex = 0;
   static final List<Widget> _widgetOptions = <Widget>[
     Home(),
     Center(child: Text('compass')),
     Center(child: Text('book')),
     Center(child: Text('person')),
    
   ];

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ), 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
           icon: FaIcon(FontAwesomeIcons.home),
           label: '',
          ),
          BottomNavigationBarItem(
           icon: FaIcon(FontAwesomeIcons.compass),
           label: '',
          ),
           BottomNavigationBarItem(
           icon: FaIcon(FontAwesomeIcons.book),
           label: '',
          ),
           BottomNavigationBarItem(
           icon: FaIcon(FontAwesomeIcons.person),
           label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconSize: 30.0,


      ),
    );
  }
}