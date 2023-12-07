import 'package:bloc/bloc.dart';
import 'package:bloc_counter/app.dart';
import 'package:flutter/material.dart';

import 'counter_observer.dart';

void main() {
  //runApp(const MyApp());
  CounterObserver observer = CounterObserver() ;
  runApp(const CounterApp());
}


