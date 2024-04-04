class EventModel {
  String title;
  String imgUrl;
  String location;
  String organizerName;
  String twitter;
  String facebook;
  String instagram;
  String description;
  int hits;
  int shares;
  String eventStatus;
  String eventType;
  DateTime eventStart;
  DateTime eventEnd;

  EventModel({
    required this.title,
    required this.imgUrl,
    required this.location,
    required this.organizerName,
    required this.hits,
    required this.description,
    required this.shares,
    required this.eventStatus,
    required this.eventType,
    required this.eventStart,
    required this.eventEnd,
    // Optional fields with default values
    this.twitter = '',
    this.facebook = '',
    this.instagram = '',
  });
}
