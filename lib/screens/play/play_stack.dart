import 'package:cockoo_clock/services/navigation_service.dart';
import 'package:flutter/material.dart';

class PlayStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: NavigationService.kPlayStack,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) => _playScreen(context));
      },
    );
  }

  Scaffold _playScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Play'),
        actions: [
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset("assets/logo.png"),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/clock.png",
                      height: 100,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Beautiful Chalet Cuckoo Clock",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 58.0),
                    child: Text(
                      "Music on phone",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DropdownButton(
                        items: [
                          DropdownMenuItem(child: Text("Dilemma")),
                          DropdownMenuItem(child: Text("Deja Vu")),
                        ],
                        onChanged: (value) {},
                      ),
                      RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.play_arrow),
                            Text('Play'),
                          ],
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 58.0),
                    child: Text(
                      "Music on clock",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DropdownButton(
                        items: [
                          DropdownMenuItem(child: Text("Jingle bells")),
                          DropdownMenuItem(child: Text("It's alright")),
                        ],
                        onChanged: (value) {},
                      ),
                      RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.play_arrow),
                            Text('Play'),
                          ],
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 58.0),
                    child: Text(
                      "Audio",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.volume_down, size: 20),
                      Slider(
                        onChanged: (double value) {},
                        value: 0.5,
                      ),
                      Icon(Icons.volume_up, size: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
