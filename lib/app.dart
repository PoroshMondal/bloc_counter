import 'package:bloc_counter/counterTwo/view/CounterPageTwo.dart';
import 'package:bloc_counter/counterTwo/view/counter_page_with_consumer.dart';
import 'package:flutter/material.dart';

import 'counter/view/counter_page.dart';

class CounterApp extends MaterialApp{
  //const CounterApp({super.key}) : super(home: const CounterPage());
  //const CounterApp({super.key}) : super(home: const CounterPageTwo());
  const CounterApp({super.key}) : super(home: const CounterPageWithConsumer());

  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.lightGreen),
      debugShowCheckedModeBanner: false,
      home: const CounterPage(),
    );
  }*/

}