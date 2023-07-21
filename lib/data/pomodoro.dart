import 'package:hive/hive.dart';

part 'pomodoro.g.dart';

@HiveType(typeId: 1)
class Pomodoro extends HiveObject {
  Pomodoro({required this.start, required this.end});

  @HiveField(0)
  DateTime start;

  @HiveField(1)
  DateTime end;

  @override
  String toString() {
    return '$start: $end';
  }
}
