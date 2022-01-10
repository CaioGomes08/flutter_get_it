import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:unit_test_mobx/counter_store.dart';
import 'package:unit_test_mobx/home.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<Counter>(Counter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
