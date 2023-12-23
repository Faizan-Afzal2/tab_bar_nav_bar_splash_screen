// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tab_nav_bar/home_screen.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'T A B B A R',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          // bottom: TabBar(tabs: [
          //   Tab(
          //     child: Icon(
          //       Icons.home,
          //       color: Colors.white,
          //     ),
          //   ),
          //   Tab(
          //     child: Icon(
          //       Icons.chat,
          //       color: Colors.white,
          //     ),
          //   ),
          //   Tab(
          //     child: Icon(
          //       Icons.restart_alt,
          //       color: Colors.white,
          //     ),
          //   ),
          //   Tab(
          //     child: Icon(
          //       Icons.settings,
          //       color: Colors.white,
          //     ),
          //   ),
          // ]),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.black,
            ),
            TabBar(tabs: [
              Tab(
                child: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.chat,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.restart_alt,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.settings,
                ),
              ),
            ]),
            Expanded(
              child: TabBarView(
                children: [
                  Home(),
                  Center(child: Text('Chat Screen')),
                  Center(child: Text('Status Screen')),
                  Center(child: Text('setting Screen')),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
