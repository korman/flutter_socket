import 'package:flutter/material.dart';
import 'network.dart';
import 'package:flutter_socket/homepage.dart';

void main() async {
  NetworkManager.getInstance().start("127.0.0.1", 9898);

  runApp(const RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(title: 'Flutter Demo Home Page'),
    );
  }
}
