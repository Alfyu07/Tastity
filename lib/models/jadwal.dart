import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
part 'jadwal.freezed.dart';
part 'jadwal.g.dart';

enum Status { waiting, complete, pending }

@Freezed()
class Jadwal with _$Jadwal {
  const factory Jadwal({
    required int id,
    DateTime? from,
    DateTime? until,
    @Default(Status.waiting) Status? status,
  }) = _Jadwal;

  factory Jadwal.fromJson(Map<String, dynamic> json) => _$JadwalFromJson(json);
}

List<Jadwal> dummyJadwal = [
  Jadwal(
    id: 1,
    from: DateFormat("yyyy-MM-dd HH:mm").parse("2022-03-01 12:00"),
    until: DateFormat("yyyy-MM-dd HH:mm").parse("2022-03-01 14:00"),
    status: Status.waiting,
  ),
  Jadwal(
    id: 2,
    from: DateFormat("yyyy-MM-dd HH:mm").parse("2022-03-02 12:00"),
    until: DateFormat("yyyy-MM-dd HH:mm").parse("2022-03-02 14:00"),
    status: Status.waiting,
  )
];
