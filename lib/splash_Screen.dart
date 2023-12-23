import 'package:flutter/material.dart';
import 'package:tab_nav_bar/nav_bar.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }
  void _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              size: 50,
              color: Colors.white,
            ),
            Text(
              'S P L A S H',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
