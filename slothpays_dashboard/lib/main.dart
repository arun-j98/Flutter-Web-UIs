import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import 'package:intl/intl.dart';
import 'package:slothpays_dashboard/widgets/vertical_navigation_bar.dart';
import 'dummy_data.dart';
import 'theme_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SlothPays-Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Roboto"),
      home: SlothPaysDashboard(),
    );
  }
}

class SlothPaysDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: grey.withOpacity(0.4),
        child: Row(
          children: [
            //Vertical Navigation Bar-------------------------
            VerticalNavigationBar(
              title: slothPaysBrandIcon,
            ),
            //Main Dashboard------------------------------
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    //Top Row----------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Search Bar--------------------------
                        Container(
                          height: 30,
                          width: 300,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white //Colors.grey[50],
                              ),
                          child: Center(
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.search,
                                  color: darkGrey,
                                  size: 14,
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: darkGrey,
                                    ),
                                    decoration: InputDecoration(
                                        hintText: "Search",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: grey,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        border: InputBorder.none),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //Info Bar------------------------------
                        Container(
                          width: 300,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'SynatyPay Ltd.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: deepBlue,
                                      fontSize: 14,
                                      fontFamily: "Overpass"),
                                ),
                                //Vertical Divider------
                                Container(
                                  width: 1,
                                  height: 20,
                                  color: grey,
                                ),
                                //////----------
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.solidComments,
                                      color: grey,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Stack(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.solidBell,
                                          color: grey,
                                          size: 14,
                                        ),
                                        Positioned(
                                          right: 0,
                                          child: Container(
                                            child: Container(
                                              height: 6,
                                              width: 6,
                                              decoration: BoxDecoration(
                                                color: true //(Condition)
                                                    ? Colors.orange[800]
                                                    : Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(3.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                //Vertical Divider------
                                Container(
                                  width: 1,
                                  height: 20,
                                  color: grey,
                                ),
                                //////----------
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Aiony Haust',
                                      style: TextStyle(
                                          color: darkGrey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          "assets/images/portrait1.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    //OverView row-------------------------------------

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Overview',
                          style: TextStyle(
                            color: deepBlue,
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Overpass",
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //New Invoice Button-------------------------
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 160,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: blue.withOpacity(0.2)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.plusCircle,
                                      color: blue,
                                      size: 12,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'New Invoice',
                                      style: TextStyle(
                                        color: blue,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 160,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: blue,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.plusCircle,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'New Order',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    //OverviewRow END-------------------
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          height: 120,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Limit Utilizaion',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Used',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '256k of 500k',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: deepBlue,
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                              AnimatedCircularProgress(51)
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          height: 120,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Upcoming Invoices',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '278k',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: deepBlue,
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                              AnimatedCircularProgress(51)
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          height: 120,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cleared Invoices',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '675k',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: deepBlue,
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                              AnimatedCircularProgress(65)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    //Notification Board--------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Graph----------------------
                            Text("Recent Invoices",
                                style: TextStyle(
                                    color: deepBlue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            //Orders Data Table----------
                            Container(
                              height: 420,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: DataTable(
                                  dataRowHeight: 30,
                                  horizontalMargin: 16,
                                  headingRowColor:
                                      MaterialStateColor.resolveWith(
                                          (states) => Colors.grey[100]),
                                  headingTextStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: blueGrey),
                                  headingRowHeight: 30,
                                  dataRowColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.white),
                                  columns: [
                                    DataColumn(
                                        label: Text(
                                      "Invoice no.",
                                    )),
                                    DataColumn(
                                      label: Text(
                                        "Client",
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        "Value",
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        "Status",
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        "Date",
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(""),
                                    ),
                                  ],
                                  rows: dataRows(invoiceData),
                                ),
                              ),
                            ),
                          ],
                        ),
                        NotificationBoard(notifications)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //Widgets Funcs--------------------------
  //Data row in invoice info table----------------
  List<DataRow> dataRows(List<InvoiceData> invoiceData) {
    List<DataRow> invoiceDataRows = [];

    for (int i = 0; i < invoiceData.length; ++i) {
      List<DataCell> tempDataRow = [];

      tempDataRow.add(DataCell(Text(
        "${invoiceData[i].invoiceNo}",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: deepBlue.withOpacity(0.8),
        ),
      )));
      tempDataRow.add(DataCell(Text(
        "${invoiceData[i].clientName}",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: deepBlue.withOpacity(0.8),
        ),
      )));
      tempDataRow.add(DataCell(Text(
        "\$${invoiceData[i].amount}",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: deepBlue.withOpacity(0.8),
        ),
      )));
      tempDataRow.add(
        DataCell(
          Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              decoration: BoxDecoration(
                  color: parrotGreen, borderRadius: BorderRadius.circular(2)),
              child: Text(
                "${invoiceData[i].status == Status.Approved ? "Approved" : "Hold"}",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )),
        ),
      );
      tempDataRow.add(DataCell(Text(
        "${DateFormat.yMMMd().format(invoiceData[i].dateTime)}",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: deepBlue.withOpacity(0.8),
        ),
      )));
      tempDataRow.add(DataCell(FaIcon(FontAwesomeIcons.ellipsisV, size: 14)));
      invoiceDataRows.add(DataRow(cells: tempDataRow));
    }
    return invoiceDataRows;
  }
}

class NotificationBoard extends StatelessWidget {
  final List<NotificationData> _notifications;
  NotificationBoard(this._notifications);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 450,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Notifications (${_notifications.length})",
                style: TextStyle(
                  color: Colors.blueGrey[700],
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FaIcon(
                FontAwesomeIcons.ellipsisV,
                color: Colors.blueGrey[700],
                size: 14,
              )
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: _notifications.length,
              itemBuilder: (_, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NotificationCard(_notifications[index]),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final NotificationData _notificationData;
  NotificationCard(this._notificationData);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: _notificationData.isSeen ? darkGrey : blue,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _notificationData.subject,
            style: TextStyle(
                color: deepBlue, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(
                "${DateFormat.yMMMd().format(_notificationData.dateTime)}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "${DateFormat.jm().format(_notificationData.dateTime)}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              )
            ],
          ),
          Spacer(),
          Text(
            _notificationData.content,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedCircularProgress extends StatefulWidget {
  final double percentCompleted;
  AnimatedCircularProgress(this.percentCompleted);
  @override
  _AnimatedCircularProgressState createState() =>
      _AnimatedCircularProgressState();
}

class _AnimatedCircularProgressState extends State<AnimatedCircularProgress>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  Tween<double> _percentCompletedTween;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(
          seconds: 1,
        ),
        vsync: this);
    _percentCompletedTween =
        Tween<double>(begin: 0, end: widget.percentCompleted);
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeOutSine);

    Future.delayed(Duration(seconds: 1))
        .then((value) => _animationController.forward(from: 0.0));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          painter: CircularProgresBarCustomPainter(widget.percentCompleted),
          size: Size(80, 80),
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (_, __) {
            return Stack(
              alignment: Alignment.center,
              children: [
                CustomPaint(
                  painter: CircularProgressBarArc(
                    _percentCompletedTween.evaluate(_animation),
                  ),
                  size: Size(80, 80),
                ),
                Text(
                  "${_percentCompletedTween.evaluate(_animation).toInt()}%",
                  style: TextStyle(
                    color: blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

// class CircularProgressBar extends StatelessWidget {
//   final double percentCompleted;
//   CircularProgressBar(this.percentCompleted);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           CustomPaint(
//             painter: CircularProgresBarCustomPainter(percentCompleted),
//             size: Size(80, 80),
//           ),
//           Text(
//             "${percentCompleted.toInt()}%",
//             style: TextStyle(
//               color: blue,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class CircularProgressBarArc extends CustomPainter {
  final double percentCompleted;
  CircularProgressBarArc(this.percentCompleted);
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) - 4;

    double arcAngle = (percentCompleted / 100) * 2 * pi;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      0,
      2 * pi,
      false,
      Paint()
        ..color = Colors.white
        ..strokeWidth = 5
        //..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      arcAngle,
      false,
      Paint()
        ..color = blue
        ..strokeWidth = 5
        //..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CircularProgresBarCustomPainter extends CustomPainter {
  final double percentCompleted;
  CircularProgresBarCustomPainter(this.percentCompleted);
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) - 4;

    //Shadow-------------------------
    Path path = Path();
    path.addArc(
        Rect.fromCircle(center: center, radius: radius + 10), -pi, 2 * pi);
    canvas.drawPath(
        path,
        Paint()
          ..color = Colors.grey[300]
          ..maskFilter =
              MaskFilter.blur(BlurStyle.normal, convertRadiusToSigma(6)));

    //Main---------------------------
    canvas.drawCircle(center, radius, Paint()..color = Colors.grey[100]);

    // double arcAngle = (percentCompleted / 100) * 2 * pi;

    // canvas.drawArc(
    //   Rect.fromCircle(center: center, radius: radius),
    //   0,
    //   2 * pi,
    //   false,
    //   Paint()
    //     ..color = Colors.white
    //     ..strokeWidth = 5
    //     //..strokeCap = StrokeCap.round
    //     ..style = PaintingStyle.stroke,
    // );

    // canvas.drawArc(
    //   Rect.fromCircle(center: center, radius: radius),
    //   -pi / 2,
    //   arcAngle,
    //   false,
    //   Paint()
    //     ..color = blue
    //     ..strokeWidth = 5
    //     //..strokeCap = StrokeCap.round
    //     ..style = PaintingStyle.stroke,
    // );
  }

  static double convertRadiusToSigma(double radius) {
    return radius * 0.57735 + 0.5;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//SlothPays BrandIcon------------
Widget slothPaysBrandIcon = RichText(
  text: TextSpan(
    text: "Sloth",
    style: TextStyle(
      color: deepBlue,
      fontSize: 32,
      fontWeight: FontWeight.w900,
      fontFamily: "Overpass",
    ),
    children: [
      TextSpan(
        text: "Pays",
        style: TextStyle(
          color: blue,
          fontSize: 32,
          fontWeight: FontWeight.w900,
          fontFamily: "Overpass",
        ),
      ),
    ],
  ),
);
