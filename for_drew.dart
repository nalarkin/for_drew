import 'dart:convert';
import 'dart:core';

void main() {
  final test = FirestoreEvent(
      eventStartTime: DateTime.now(),
      title: 'event title',
      posterID: 'poster id here',
      eventType: 'eventType',
      eventSubscriptionID: 'subid',
      eventEndTime: DateTime.now());
  print('test');
  print(test);
  print('test.toJson()');
  print(test.toJson());
  print('jsonDecode(test.toJson())');
  print(jsonDecode(test.toJson()));
  print('FirestoreEvent.fromJson(test.toJson())');
  print(FirestoreEvent.fromJson(test.toJson()));
  print('FirestoreEvent.fromJson(test.toJson()).toJson()');
  print(FirestoreEvent.fromJson(test.toJson()).toJson());
  assert(FirestoreEvent.fromJson(test.toJson()).toJson() == test.toJson());
}

class FirestoreEvent {
  const FirestoreEvent({
    required this.title,
    this.description = '',
    required this.posterID,
    this.posterPhoto = '',
    required this.eventStartTime,
    required this.eventEndTime,
    required this.eventType,
    this.eventPhoto = '',
    required this.eventSubscriptionID,
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
