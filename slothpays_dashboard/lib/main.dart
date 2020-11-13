import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

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
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: lightGrey,
                boxShadow: [
                  BoxShadow(
                    color: grey,
                    blurRadius: 20.0,
                    offset: Offset(-1, 0),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  //BrandIcon-------------
                  Container(
                    margin: const EdgeInsets.only(left: 50),
                    child: RichText(
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
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    //height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonWithAnimation(
                          icon: FontAwesomeIcons.home,
                          title: "Home",
                        ),
                        ButtonWithAnimation(
                          icon: FontAwesomeIcons.exclamationTriangle,
                          title: "Actions Required",
                        ),
                        ButtonWithAnimation(
                          icon: FontAwesomeIcons.solidFolder,
                          title: "Orders",
                        ),
                        ButtonWithAnimation(
                          icon: FontAwesomeIcons.fileInvoiceDollar,
                          title: "Invoice",
                        ),
                        ButtonWithNotification(
                          ButtonWithAnimation(
                            icon: FontAwesomeIcons.solidBell,
                            title: "Notification",
                          ),
                        ),
                        // ButtonWithAnimation(
                        //   icon: FontAwesomeIcons.solidBell,
                        //   title: "Notification",
                        // ),
                        ButtonWithAnimation(
                          icon: FontAwesomeIcons.cog,
                          title: "Settings",
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  ButtonWithAnimation(
                    icon: FontAwesomeIcons.signOutAlt,
                    title: "Signout",
                  ),
                  SizedBox(height: 20),
                ],
              ),
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
                            color: Colors.grey[50],
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
                            color: Colors.grey[50],
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
                            color: Colors.grey[50],
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
                            color: Colors.grey[50],
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
                  ],
                ),
              ),
            )
          ],
        ),
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

class ButtonWithAnimation extends StatefulWidget {
  final String title;
  final IconData icon;

  ButtonWithAnimation({
    @required this.title,
    @required this.icon,
  });

  @override
  _ButtonWithAnimationState createState() => _ButtonWithAnimationState();
}

class _ButtonWithAnimationState extends State<ButtonWithAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  Animation _animation;

  final ColorTween _colorTween =
      ColorTween(begin: lightGrey, end: Colors.grey[200]);

  bool isSelected = false;
  // bool newNotification = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        value: 0.0, duration: Duration(milliseconds: 50), vsync: this);
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeOutSine);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onHover: (isHovering) {
          if (isHovering) {
            _animationController.forward(from: 0.0);
          } else {
            _animationController.reverse();
          }
        },
        onTap: () {
          print("${widget.title} clicked!");
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: AnimatedBuilder(
          animation: _animation,
          builder: (_, __) {
            return Container(
              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.grey[50]
                    : _colorTween.evaluate(_animation),
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 4,
                        decoration: BoxDecoration(
                          color: isSelected ? blue : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        width: 20,
                        child: Center(
                          child: FaIcon(
                            widget.icon,
                            color: isSelected ? blue : deepBlue,
                            size: 16,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        widget.title,
                        style: TextStyle(
                            color: isSelected ? blue : deepBlue,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  //Notificaiton Orange dot------------------------------
                  // Container(
                  //   margin: const EdgeInsets.only(
                  //     right: 20,
                  //   ),
                  //   child: Container(
                  //     height: 6,
                  //     width: 6,
                  //     decoration: BoxDecoration(
                  //       color: newNotification
                  //           ? Colors.orange[800]
                  //           : Colors.transparent,
                  //       borderRadius: BorderRadius.circular(3.0),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            );
          },
        ));
  }
}

class ButtonWithNotification extends StatefulWidget {
  final ButtonWithAnimation _buttonWithAnimation;
  ButtonWithNotification(this._buttonWithAnimation);
  @override
  _ButtonWithNotificationState createState() => _ButtonWithNotificationState();
}

class _ButtonWithNotificationState extends State<ButtonWithNotification> {
  bool newNotification = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget._buttonWithAnimation,
        Positioned(
          right: 20,
          top: 22,
          child: Container(
            margin: const EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                color:
                    newNotification ? Colors.orange[800] : Colors.transparent,
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//Color Palette
Color lightGrey = Color.fromRGBO(247, 247, 247, 1);
Color lightBlueGrey = Color.fromRGBO(191, 199, 230, 1);
Color grey = Color.fromRGBO(205, 206, 209, 1);
Color darkGrey = Color.fromRGBO(77, 90, 100, 1);
Color lightPurple = Color.fromRGBO(77, 97, 178, 1);
Color blueGrey = Color.fromRGBO(115, 139, 177, 1);
Color parrotGreen = Color.fromRGBO(40, 152, 64, 1);
Color blue = Color.fromRGBO(0, 98, 227, 1);
Color deepBlue = Color.fromRGBO(0, 12, 36, 1);
