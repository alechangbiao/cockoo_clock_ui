import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cockoo_clock/screens/ble_test.dart';
import 'package:cockoo_clock/screens/settings/setting_screen.dart';
import 'package:cockoo_clock/services/navigation_service.dart';

class HomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: NavigationService.kHomeStack,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) => _homeScreen(context));
      },
    );
  }

  Scaffold _homeScreen(BuildContext context) {
    NavigationService _nav = Provider.of<NavigationService>(context);

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Clock Model',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Serial Number',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SettingScreen(),
                                  fullscreenDialog: true,
                                ),
                              );
                            },
                            color: Colors.blue,
                            child: Row(
                              children: [
                                Icon(Icons.settings, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  'Settings',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            child: Row(
                              children: [
                                Icon(Icons.play_arrow, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  'Play',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 350,
                child: RaisedButton(
                  onPressed: () => _nav.tabIndex = 1,
                  color: Colors.blue,
                  child: Text(
                    'Search Clock',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(
              builder: (context) => BleTest(),
              fullscreenDialog: true,
            ),
          );
        },
        child: Icon(Icons.bluetooth),
      ),
    );
  }
}
