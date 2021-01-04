import 'package:cockoo_clock/root.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cockoo_clock/services/navigation_service.dart';
import 'package:cockoo_clock/screens/home/home_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavigationService()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Root(),
      ),
    );

    // return MaterialApp(
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   home: HomeScreen(),
    // );
  }
}
