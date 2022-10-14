import 'package:flutter/material.dart';
import 'network.dart';
import 'package:flutter_socket/homepage.dart';
import 'package:provider/provider.dart';
import 'package:flutter_socket/table_model.dart';
import 'package:flutter_socket/map_model.dart';

void main() async {
  NetworkManager.getInstance().start("127.0.0.1", 9898);

  runApp(const RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => TableModel(),
        ),
        ChangeNotifierProxyProvider<MapModel, TableModel>(
          create: (context) => TableModel(),
          update: (context, value, previous) {
            return previous;
          },
        )
      ],
      child: MaterialApp(
        title: '测试Socket',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage(title: '测试Socket首页'),
      ),
    );
  }
}
