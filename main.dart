import 'dart:collection';
import 'dart:convert';
import 'dart:core';
import 'util.dart';

void main() {
  final v = {
    1: 'one',
    2: 'two',
    3: 'three',
  };
  print(v.keys.toList());
  print(v.keys.toList());
  print(v.values.toList());
  // print(DateTime.now());
  // List<String> valueList = List.from(v.values.toList());
  final test = FirestoreEvent(
      eventStartTime: DateTime.now(),
      title: 'event title',
      posterID: 'poster id here',
      eventType: 'eventType',
      eventSubscriptionID: 'subid',
      eventEndTime: DateTime.now());
  print(test);
  print(test.toJson());
  print(jsonDecode(test.toJson()));
  print(FirestoreEvent.fromJson(test.toJson()));
  print(FirestoreEvent.fromJson(test.toJson()).toJson());
  assert(FirestoreEvent.fromJson(test.toJson()).toJson() == test.toJson());

  // print(DateTime.tryParse('20210621 99:99'));
  // final month = '01';
  // final day = '20';
  // final year = '21';
  // final time = '17:00';
  // print(convertStringToDateTime(day, month, year, time));
  // print(int.parse('4') + 5);

  // print('hello world');
  // var l = <FirestoreEvent>[
  //   FirestoreEvent(
  //       eventStartTime: DateTime.now(),
  //       title: 'event title',
  //       posterID: 'poster id here',
  //       eventType: 'eventType',
  //       eventSubscriptionID: 'subid',
  //       eventEndTime: DateTime.now()),
  //   FirestoreEvent(
  //       eventStartTime: DateTime.fromMillisecondsSinceEpoch(1627256958462),
  //       title: 'event title',
  //       posterID: 'poster id here',
  //       eventType: 'eventType',
  //       eventSubscriptionID: 'subid',
  //       eventEndTime: DateTime.now()),
  //   FirestoreEvent(
  //       eventStartTime: DateTime.fromMillisecondsSinceEpoch(1626256958462),
  //       title: 'event title',
  //       posterID: 'poster id here',
  //       eventType: 'eventType',
  //       eventSubscriptionID: 'subid',
  //       eventEndTime: DateTime.now()),
  //   FirestoreEvent(
  //       eventStartTime: DateTime.fromMillisecondsSinceEpoch(1627256458462),
  //       title: 'event title',
  //       posterID: 'poster id here',
  //       eventType: 'eventType',
  //       eventSubscriptionID: 'subid',
  //       eventEndTime: DateTime.now()),
  //   FirestoreEvent(
  //       eventStartTime: DateTime.fromMillisecondsSinceEpoch(1627156958462),
  //       title: 'event title',
  //       posterID: 'poster id here',
  //       eventType: 'eventType',
  //       eventSubscriptionID: 'subid',
  //       eventEndTime: DateTime.now()),
  //   FirestoreEvent(
  //       eventStartTime: DateTime.fromMillisecondsSinceEpoch(1627156948462),
  //       title: 'event title',
  //       posterID: 'poster id here',
  //       eventType: 'eventType',
  //       eventSubscriptionID: 'subid',
  //       eventEndTime: DateTime.now()),
  //   FirestoreEvent(
  //       eventStartTime: DateTime.fromMillisecondsSinceEpoch(1627156968462),
  //       title: 'event title',
  //       posterID: 'poster id here',
  //       eventType: 'eventType',
  //       eventSubscriptionID: 'subid',
  //       eventEndTime: DateTime.now()),
  // ];
  // // _eventMap = Map<String,>
  // var test = [1, 2, 2].add(9);
  // print(test);

  // final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
  //     key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5),
  //     value: (item) => List.generate(
  //         item % 4 + 1, (index) => Event('Event $item | ${index + 1}')))
  //   ..addAll({
  //     kToday: [
  //       Event('Today\'s Event 1'),
  //       Event('Today\'s Event 2'),
  //     ],
  //   });
  // for (final x in _kEventSource.entries) {
  //   print(x);
  // }
  // final test = []

  // var _mapper = Map.fromIterable(l, key: (item) => isSameday(item.eventStartTime));
  // var _mapper = <int, List<FirestoreEvent>>{};
  // for (final val in l) {
  //   final dayOfEvent = getHashCode(val.eventStartTime);
  //   if (_mapper.containsKey(dayOfEvent)) {
  //     // _mapper[dayOfEvent] =
  //     _mapper[dayOfEvent]!.add(val);
  //   } else {
  //     _mapper[dayOfEvent] = [val];
  //   }
  // }
  // var _dateMapper = <DateTime, List<FirestoreEvent>>{};
  // for (final val in l) {
  //   DateTime start = val.eventStartTime;
  //   final time = DateTime.utc(start.year, start.day, start.hour);
  //   if (_dateMapper.containsKey(time)) {
  //     // _mapper[dayOfEvent] =
  //     _dateMapper[time]!.add(val);
  //   } else {
  //     _dateMapper[time] = [val];
  //   }
  // }

  // final kEvents = LinkedHashMap<DateTime, List<FirestoreEvent>>(
  //   equals: isSameDay,
  //   hashCode: getHashCode,
  // );

  // // var _dateMapper = {};
  // for (final val in l) {
  //   DateTime start = val.eventStartTime;
  //   final time = DateTime.utc(start.year, start.day, start.hour);
  //   if (kEvents.containsKey(time)) {
  //     // _mapper[dayOfEvent] =
  //     kEvents[time]!.add(val);
  //   } else {
  //     kEvents[time] = [val];
  //   }
  // }

  // var _dateMapper = <DateTime, List<FirestoreEvent>>{};
  // for (final val in l) {
  //   DateTime start = val.eventStartTime;
  //   final time = DateTime.utc(start.year, start.day, start.hour);
  //   if (_dateMapper.containsKey(time)) {
  //     // _mapper[dayOfEvent] =
  //     _dateMapper[time]!.add(val);
  //   } else {
  //     _dateMapper[time] = [val];
  //   }
  // }

  // print('=============================');
  // for (final x in kEvents.entries) {
  //   print(x);
  // }

  // final kEvents = LinkedHashMap.fromIterable(l,
  //     key: (val) => DateTime.utc(val.eventStartTime.year,
  //         val.eventStartTime.day, val.eventStartTime.month),
  //     value: (val) => [val],
  //     );
  // final kEvents = LinkedHashMap<DateTime, List<FirestoreEvent>>(
  //   equals: isSameDay,
  //   hashCode: getHashCode,
  // )..addAll(_dateMapper);
  // print('=============================');

  // for (final x in kEvents.entries) {
  //   print(x);
  // }

  //   final kEvents = LinkedHashMap<DateTime, List<FirestoreEvent>>(
  //   equals: isSameDay,
  //   hashCode: getHashCode,
  // );
  // print(_mapper);
  // for (FirestoreEvent event in l) {
  //   print(event);
  // }
  // print('=============================================================');

  // l.sort((a, b) => a.eventStartTime.compareTo(b.eventStartTime));
  // for (FirestoreEvent event in l) {
  //   print(event);
  // }

  // print(DateTime.now().subtract(Duration(days: 6)));
  // // print(l);
}

class FirestoreEvent {
  const FirestoreEvent({
    // general event name
    required this.title,

    //optional description
    this.description = '',
    // teacher/falculty who posted the event
    required this.posterID,
    // optional photo link
    this.posterPhoto = '',
    required this.eventStartTime,
    required this.eventEndTime,

    // You can enter the class name here maybe
    // or you could create general categories, like classes/homework/etc.
    required this.eventType,
    this.eventPhoto = '',

    // every class has it's unique ID which will be here
    // example, english101 class 3 is different from english101 class 4, and this
    // uid never changes regardless of the number of events that occurr
    required this.eventSubscriptionID,

    // optional UID for event itself
    this.eventUID = '',
  });

  final String title;
  final String description;
  final String posterID;
  final String posterPhoto;
  final DateTime eventStartTime;
  final DateTime eventEndTime;
  final String eventPhoto;
  final String eventType;
  final String eventSubscriptionID;
  final String eventUID;

  FirestoreEvent copyWith(
      {String? title,
      String? description,
      String? posterID,
      String? posterPhoto,
      DateTime? eventStartTime,
      DateTime? eventEndTime,
      String? eventPhoto,
      String? eventType,
      String? eventSubscriptionID,
      String? eventUID}) {
    return FirestoreEvent(
      title: title ?? this.title,
      description: description ?? this.description,
      posterID: posterID ?? this.posterID,
      posterPhoto: posterPhoto ?? this.posterPhoto,
      eventStartTime: eventStartTime ?? this.eventStartTime,
      eventEndTime: eventEndTime ?? this.eventEndTime,
      eventPhoto: eventPhoto ?? this.eventPhoto,
      eventType: eventType ?? this.eventType,
      eventSubscriptionID: eventSubscriptionID ?? this.eventSubscriptionID,
      eventUID: eventUID ?? this.eventUID,
    );
  }

  static FirestoreEvent fromJson(String jsonString) {
    final json = jsonDecode(jsonString);
    return FirestoreEvent(
      title: json['title'] as String,
      description: json['description'] as String,
      posterID: json['posterID'] as String,
      posterPhoto: json['posterPhoto'] as String,
      eventStartTime: DateTime.tryParse(json['eventStartTime']) ??
          DateTime.fromMillisecondsSinceEpoch(1627156968462),
      eventEndTime: DateTime.tryParse(json['eventEndTime']) ??
          DateTime.fromMillisecondsSinceEpoch(1627156968462),
      eventPhoto: json['eventPhoto'] as String,
      eventType: json['eventType'] as String,
      eventSubscriptionID: json['eventSubscriptionID'] as String,
      eventUID: json['eventUID'] as String,
    );
  }

  String toJson() {
    // jsonEncode(this);
    return jsonEncode({
      'title': title,
      'description': description,
      'posterID': posterID,
      'posterPhoto': posterPhoto,
      'eventStartTime': eventStartTime.toString(),
      'eventEndTime': eventEndTime.toString(),
      'eventPhoto': eventPhoto,
      'eventType': eventType,
      'eventSubscriptionID': eventSubscriptionID,
      'eventUID': eventUID,
    });
  }

  @override
  String toString() {
    return '''FirestoreEvent ${toJson()}
            ''';
  }
}

DateTime? convertStringToDateTime(
    String day, String month, String year, String time) {
  return DateTime.tryParse('20$year-$month-$day $time');
}

bool isSameDay(DateTime? a, DateTime? b) {
  if (a == null || b == null) {
    return false;
  }

  return a.year == b.year && a.month == b.month && a.day == b.day;
}

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}
// int getHashCode(DateTime key) {
//   return key.day * 1000000 + key.month * 10000 + key.year;
// }

// DateTime getDaytimeOfEvent(DateTime time) {}
