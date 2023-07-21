// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DailyAdapter extends TypeAdapter<Daily> {
  @override
  final int typeId = 2;

  @override
  Daily read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Daily(
      date: fields[0] as DateTime,
      listPomodoro: (fields[1] as List).cast<Pomodoro>(),
    );
  }

  @override
  void write(BinaryWriter writer, Daily obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.listPomodoro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
