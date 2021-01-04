import 'package:flutter/material.dart';
import 'package:cockoo_clock/services/navigation_service.dart';
import 'package:cockoo_clock/screens/settings/setting_screen.dart';

class SearchStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: NavigationService.kSearchStack,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) => _searchScreen(context));
      },
    );
  }

  Scaffold _searchScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Search Clock'),
        actions: [
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.asset("assets/logo.png"),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 25),
                Text(
                  'Select clock',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Clock model',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Serial Number',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SettingScreen(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Icon(Icons.settings, color: Colors.white),
                      SizedBox(width: 5),
                      Text('Settings', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 10),
                    Text('Scan Again', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
