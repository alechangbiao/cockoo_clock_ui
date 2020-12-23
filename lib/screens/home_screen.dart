import 'package:cockoo_clock/screens/setting_screen.dart';
import 'package:cockoo_clock/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/logo.png"),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 25),
                  Image.asset("assets/clock.png", height: 100),
                  Spacer(),
                  RaisedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SettingScreen(),
                      ),
                    ),
                    color: Colors.blue,
                    child: Text(
                      'ADD CLOCK',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
