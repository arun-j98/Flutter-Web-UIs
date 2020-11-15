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

enum Status { Approved, Hold }

class InvoiceData {
  int invoiceNo;
  String clientName;
  double amount;
  Status status;
  DateTime dateTime;

  InvoiceData({
    @required this.invoiceNo,
    @required this.clientName,
    @required this.amount,
    @required this.status,
    @required this.dateTime,
  });
}

List<InvoiceData> invoiceData = [
  InvoiceData(
    invoiceNo: 3232,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 983,
    clientName: "XYZ Pvt. Ltd.",
    amount: 465325,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 2742,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 945,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 765,
    clientName: "XYZ Pvt. Ltd.",
    amount: 465325,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 23,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 154,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 23453,
    clientName: "XYZ Pvt. Ltd.",
    amount: 465325,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 234,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 765,
    clientName: "XYZ Pvt. Ltd.",
    amount: 465325,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 23,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 154,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 154,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 154,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 154,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 154,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
  InvoiceData(
    invoiceNo: 154,
    clientName: "ABC Pvt. Ltd.",
    amount: 7542154,
    dateTime: DateTime.now(),
    status: Status.Approved,
  ),
];

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
