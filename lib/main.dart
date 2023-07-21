import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pomodoro/data/daily.dart';
import 'package:pomodoro/data/pomodoro.dart';

import 'app.dart';

void main() {
  var path = Directory.current.path;
  Hive
    ..init(path)
    ..registerAdapter(DailyAdapter())
    ..registerAdapter(PomodoroAdapter());
  runApp(const MyApp());
}
