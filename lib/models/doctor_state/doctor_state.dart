import 'package:click_desk/utils/date_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_state.freezed.dart';
part 'doctor_state.g.dart';

Map<int, String> weekdays = {
  1: "mon",
  2: "tue",
  3: "wed",
  4: "thu",
  5: "fri",
  6: "sat",
  7: "sun",
};

@freezed
class DoctorState with _$DoctorState {
  const DoctorState._();

  const factory DoctorState(
      {@Default("") String id,
      @Default("") String userId,
      @Default(0) int seq,
      @Default("") String code,
      @Default("") String name,
      @Default("") String jinchalName,
      @Default("") String kwamokName,
      @Default(DoctorWorks()) DoctorWorks works}) = _DoctorState;

  bool get isWorking {
    DateTime now =  DateUtil.now();
    final day = weekdays[now.weekday];

    final timeRange = works[day!].firstOrNull;
    if (timeRange == null) {
      return false;
    }

    final start = timeRange.start;
    final end = timeRange.end;
    TimeValue nowTv = TimeValue(hour: now.hour, minute: now.minute);

    if (start > end) {
      // 시작일시가 더 큰 경우
      return start <= nowTv || end >= nowTv;
    }
    return start <= nowTv && nowTv <= end;
  }

  factory DoctorState.fromJson(Map<String, dynamic> json) =>
      _$DoctorStateFromJson(json);
}

@freezed
class DoctorWorks with _$DoctorWorks {
  const DoctorWorks._();
  const factory DoctorWorks({
    @Default([]) List<TimeRange> mon,
    @Default([]) List<TimeRange> tue,
    @Default([]) List<TimeRange> wed,
    @Default([]) List<TimeRange> thu,
    @Default([]) List<TimeRange> fri,
    @Default([]) List<TimeRange> sat,
    @Default([]) List<TimeRange> sun,
  }) = _DoctorWorks;

  factory DoctorWorks.fromJson(Map<String, dynamic> json) =>
      _$DoctorWorksFromJson(json);
  List<TimeRange> operator [](String day) {
    switch (day) {
      case 'mon':
        return mon;
      case 'tue':
        return tue;
      case 'wed':
        return wed;
      case 'thu':
        return thu;
      case 'fri':
        return fri;
      case 'sat':
        return sat;
      default:
        return sun;
    }
  }
}

@freezed
class TimeRange with _$TimeRange {
  const factory TimeRange({
    required TimeValue start,
    required TimeValue end,
  }) = _TimeRange;

  factory TimeRange.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFromJson(json);
}

@freezed
class TimeValue with _$TimeValue {
  const factory TimeValue({
    required int hour,
    required int minute,
  }) = _TimeValue;

  factory TimeValue.fromJson(Map<String, dynamic> json) =>
      _$TimeValueFromJson(json);
}

extension TimeValueComparison on TimeValue {
  bool operator >(TimeValue other) {
    if (hour > other.hour) return true;
    if (hour == other.hour && minute > other.minute) return true;
    return false;
  }

  bool operator <(TimeValue other) {
    if (hour < other.hour) return true;
    if (hour == other.hour && minute < other.minute) return true;
    return false;
  }

  bool operator >=(TimeValue other) {
    return this > other || this == other;
  }

  bool operator <=(TimeValue other) {
    return this < other || this == other;
  }
}
