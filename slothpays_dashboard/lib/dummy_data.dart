import 'package:flutter/material.dart';

//Notifications--------------------------------
class NotificationData {
  String subject;
  DateTime dateTime;
  String content;
  bool isSeen;

  NotificationData({
    @required this.subject,
    @required this.dateTime,
    @required this.content,
    @required this.isSeen,
  });
}

List<NotificationData> notifications = [
  NotificationData(
    subject: "Recieve personalized forecasts",
    dateTime: DateTime.now(),
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    isSeen: false,
  ),
  NotificationData(
    subject: "User specific names and preferences",
    dateTime: DateTime.now(),
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    isSeen: true,
  ),
  NotificationData(
    subject: "Message comes across personal",
    dateTime: DateTime.now(),
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    isSeen: true,
  ),
  NotificationData(
    subject: "Effectiveness at both entertaining",
    dateTime: DateTime.now(),
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    isSeen: true,
  ),
  NotificationData(
    subject: "Recieve personalized forecasts",
    dateTime: DateTime.now(),
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    isSeen: false,
  ),
  NotificationData(
    subject: "User specific names and preferences",
    dateTime: DateTime.now(),
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    isSeen: true,
  ),
  NotificationData(
    subject: "Message comes across personal",
    dateTime: DateTime.now(),
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    isSeen: true,
  ),
  NotificationData(
    subject: "Effectiveness at both entertaining",
    dateTime: DateTime.now(),
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    isSeen: true,
  ),
];
