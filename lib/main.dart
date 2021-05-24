import 'package:flutter/material.dart';
import 'package:places/models/category.dart';
import 'package:places/screens/home.dart';
import 'package:places/screens/itemdetail.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PlaceLists(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Home(),
        routes: {
          ItemDetail.routName: (context) => ItemDetail(),
          Home.routName: (context) => Home(),
        },
      ),
    );
  }
}
