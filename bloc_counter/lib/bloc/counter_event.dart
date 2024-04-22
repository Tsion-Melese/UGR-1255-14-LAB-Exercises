import 'package:flutter/material.dart';

@immutable
abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}
