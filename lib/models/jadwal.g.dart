// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jadwal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Jadwal _$$_JadwalFromJson(Map<String, dynamic> json) => _$_Jadwal(
      id: json['id'] as int,
      from:
          json['from'] == null ? null : DateTime.parse(json['from'] as String),
      until: json['until'] == null
          ? null
          : DateTime.parse(json['until'] as String),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']) ??
          Status.waiting,
    );

Map<String, dynamic> _$$_JadwalToJson(_$_Jadwal instance) => <String, dynamic>{
      'id': instance.id,
      'from': instance.from?.toIso8601String(),
      'until': instance.until?.toIso8601String(),
      'status': _$StatusEnumMap[instance.status],
    };

const _$StatusEnumMap = {
  Status.waiting: 'waiting',
  Status.complete: 'complete',
  Status.pending: 'pending',
};
