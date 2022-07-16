import 'dart:convert';
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:quick_log/quick_log.dart';
import 'package:jose/jose.dart';
import 'package:fleetonrouteapi/api.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as mt;

getMinLogLevel() {
  if (kReleaseMode) {
    return LogLevel.warning;
  } else {
    return LogLevel.fine;
  }
}

Map<String, dynamic> decodeJwt(String token) {
  final jwt = JsonWebSignature.fromCompactSerialization(token);
  final payloadMap = jsonDecode(jwt.unverifiedPayload.stringContent);
  if (payloadMap is! Map<String, dynamic>) {
    throw Exception('invalid payload');
  }
  return payloadMap;
}

// ignore: must_be_immutable
class ScheduleDateModelWithEquality extends Equatable
    implements ScheduleDateModel {
  @override
  int date;
  @override
  int hour;
  @override
  int minute;
  @override
  int month;
  @override
  int second;
  @override
  int year;
  @override
  ScheduleDateModelWithEquality({
    required this.year,
    required this.month,
    required this.date,
    required this.hour,
    required this.minute,
    required this.second,
  });

  static ScheduleDateModelWithEquality fromScheduleDateModel(
      ScheduleDateModel model) {
    if (model == null)
      return ScheduleDateModelWithEquality.fromDateTime(DateTime.now());
    return new ScheduleDateModelWithEquality(
        year: model.year,
        month: model.month,
        date: model.date,
        hour: model.hour,
        minute: model.minute,
        second: model.second);
  }

  static ScheduleDateModelWithEquality fromDateTime(DateTime date) {
    if (date == null)
      return ScheduleDateModelWithEquality.fromDateTime(DateTime.now());
    return new ScheduleDateModelWithEquality(
        year: date.year,
        month: date.month,
        date: date.day,
        hour: date.hour,
        minute: date.minute,
        second: date.second);
  }

  int toInt() {
    return this.toDateTime().millisecondsSinceEpoch;
  }

  DateTime toDateTime() {
    return DateTime(year, month + 1, date);
  }

  List<Object> get props => [year, month, date, hour, minute, second];

  @override
  Map<String, num> toJson() {
    return {
      "year": year,
      "month": year,
      "date": year,
      "hour": hour,
      "minute": minute,
      "seocnd": second
    };
  }

  int compareTo(ScheduleDateModelWithEquality other) {
    return this.toDateTime().compareTo(other.toDateTime());
  }
}

num? computeDistance(LatLngModel? a, LatLngModel? b) {
  if (a == null || b == null) {
    return null;
  }

  final _from = mt.LatLng(
    a.latitude.toDouble(),
    a.longitude.toDouble(),
  );
  final _to = mt.LatLng(
    b.latitude.toDouble(),
    b.longitude.toDouble(),
  );
  return mt.SphericalUtil.computeDistanceBetween(_from, _to) / 1000;
}

const minDistanceToDestination = 0.1;
