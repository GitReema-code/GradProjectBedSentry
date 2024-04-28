// To parse this JSON data, do
//
//     final notificationListResponse = notificationListResponseFromJson(jsonString);

import 'dart:convert';

NotificationListResponse notificationListResponseFromJson(String str) =>
    NotificationListResponse.fromJson(json.decode(str));

String notificationListResponseToJson(NotificationListResponse data) =>
    json.encode(data.toJson());

class NotificationListResponse {
  String title;
  String body;
  String? imageUrl;

  NotificationListResponse({
    required this.title,
    required this.body,
    required this.imageUrl,
  });

  factory NotificationListResponse.fromJson(Map<String, dynamic> json) =>
      NotificationListResponse(
        title: json["title"],
        body: json["body"],
        imageUrl: json["imageUrl"]
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
        "imageUrl" : imageUrl
  };
}
