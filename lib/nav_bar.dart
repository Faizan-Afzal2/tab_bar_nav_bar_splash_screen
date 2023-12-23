import 'package:flutter/material.dart';
import 'package:tab_nav_bar/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  
  @override
  void initState() {
    super.initState();
  }


  int currentIndex = 0;
  List<Widget> screens = [
    Home(),
    Center(
      child: Text('Chat screen '),
    ),
    Center(
      child: Text('status screen '),
    ),
    Center(
      child: Text('setting screen '),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'N A V B A R',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        // bottomNavigationBar: NavigationBar(
        //   onDestinationSelected: (index) {
        //     print("Clicked");
        //     setState(() {
        //       currentIndex = index;
        //     });
        //   },
        //   selectedIndex: currentIndex,
        //   destinations:<Widget>[
        //     NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        //     NavigationDestination(icon: Icon(Icons.chat), label: 'Chat'),
        //     NavigationDestination(
        //         icon: Icon(Icons.restart_alt), label: 'Status'),
        //     NavigationDestination(
        //         icon: Icon(Icons.settings), label: 'Settings'),
        //   ],
        // ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.deepPurple,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.restart_alt), label: 'status'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'settings'),
            ]),
        body: screens[currentIndex]);
  }
}
