import 'package:hive/hive.dart';
import 'package:pomodoro/data/pomodoro.dart';

part 'daily.g.dart';

@HiveType(typeId: 2)
class Daily extends HiveObject {
  Daily({required this.date, required this.listPomodoro});

  @HiveField(0)
  DateTime date;

  @HiveField(1)
  List<Pomodoro> listPomodoro;

  @override
  String toString() {
    return '$date: $listPomodoro';
  }
}
