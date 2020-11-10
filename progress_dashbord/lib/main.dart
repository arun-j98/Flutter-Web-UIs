import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Rubrik"),
      home: ProgressDashboard(),
    );
  }
}

class ProgressDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //Vertical App Bar-------------------------
          Container(
            width: 120,
            height: double.infinity,
            color: lightBlueGrey,
            child: Column(
              children: [
                SizedBox(height: 50),
                BrandIcon(),
                SizedBox(height: 100),
                NavigationBar()
              ],
            ),
          ),

          //Main Progress Dashboard------------------
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              width: 400,
              height: double.infinity,
              color: Colors.white,
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Progress Dashboard",
                        style: TextStyle(
                          color: darkPurple,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [GroupInfoCard()],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          CourseCard(
                            courseName: "Grammar",
                            color: darkVioletPurple,
                            courseIcon: Icons.edit,
                            courseDescription: "+ 30 grammar rules.",
                          ),
                          SizedBox(width: 50),
                          CourseCard(
                            courseName: "Dictionary",
                            color: Colors.redAccent,
                            courseIcon: Icons.text_format,
                            courseDescription: "+ 10 new words.",
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //Profile Info-----------------------------
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            width: 400,
            height: double.infinity,
            color: lightBlueGrey,
            child: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ShortProfileInfoCard(
                  name: "Aiony Haust",
                  designation: "Business Analyst",
                  rating: 5,
                ),
                SizedBox(height: 40),
                CourseAdCard(
                  discountPercent: 10,
                  courseName: "Spanish A2",
                ),
                SizedBox(height: 40),
                Text(
                  'Courses Progress',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: darkPurple,
                  ),
                ),
                SizedBox(height: 20),
                CourseProgressCard(
                  percentCompleted: 63,
                  courseIcon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  courseName: "Grammar",
                  courseDescription: "Learn new rules.",
                  color: darkVioletPurple,
                ),
                SizedBox(height: 20),
                CourseProgressCard(
                  percentCompleted: 78,
                  courseIcon: Icon(
                    Icons.bookmark_outline,
                    color: Colors.white,
                  ),
                  courseName: "Dictionary",
                  courseDescription: "Learn 5 new words.",
                  color: orange,
                ),
                SizedBox(height: 20),
                CourseProgressCard(
                  percentCompleted: 32,
                  courseIcon: Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                  courseName: "Reading",
                  courseDescription: "Train your skill.",
                  color: Colors.redAccent[100],
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

class GroupInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 350,
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: lightBlueGrey,
            blurRadius: 30,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Group Info',
                style: TextStyle(
                  color: darkPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.notifications,
                color: darkBlueGrey,
                size: 18,
              )
            ],
          ),
          Text(
            "13 students in the group",
            style: TextStyle(
              color: darkBlueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Group Homework',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '5 students from your group',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      softWrap: true,
                    ),
                    Text(
                      'online now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      softWrap: true,
                    ),
                  ],
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today\'s lesson',
                style: TextStyle(
                  color: darkPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                '12:00',
                style: TextStyle(
                  color: darkPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Text(
            "Unit-6 Articles",
            style: TextStyle(
              color: darkBlueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonWithAnimation(buttonIconData: Icons.leaderboard),
          ButtonWithAnimation(buttonIconData: Icons.apps),
          ButtonWithAnimation(buttonIconData: Icons.person),
          ButtonWithAnimation(buttonIconData: Icons.timeline),
        ],
      ),
    );
  }
}

class ButtonWithAnimation extends StatefulWidget {
  final IconData buttonIconData;

  ButtonWithAnimation({this.buttonIconData});

  @override
  _ButtonWithAnimationState createState() => _ButtonWithAnimationState();
}

class _ButtonWithAnimationState extends State<ButtonWithAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  final Tween slideUpTween = Tween<double>(begin: 0.0, end: -2.0);
  final ColorTween colorTween =
      ColorTween(begin: darkBlueGrey, end: darkVioletPurple);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        value: 0.0, duration: Duration(milliseconds: 100), vsync: this);
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeOutSine);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: SystemMouseCursors.click,
      onHover: (isHovering) {
        if (isHovering) {
          _animationController.forward(from: 0.0);
        } else {
          _animationController.reverse(from: 1.0);
        }
      },
      onTap: () {
        print("Clicked!");
      },
      child: Container(
        height: 40,
        width: 40,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                child: Icon(
                  widget.buttonIconData,
                  color: darkBlueGrey,
                ),
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (_, __) {
                  return Positioned(
                    left: slideUpTween.evaluate(_animation),
                    top: slideUpTween.evaluate(_animation),
                    child: Icon(
                      widget.buttonIconData,
                      color: colorTween.evaluate(_animation),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BrandIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: lightBlueGrey,
        borderRadius: BorderRadius.circular(5),
        //border: Border(left: BorderSide(color: Colors.white, width: 2.0,))
      ),
      child: Center(
        child: Text(
          "P.",
          style: TextStyle(
            color: orange,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class CourseProgressCard extends StatelessWidget {
  final int percentCompleted;
  final Icon courseIcon;
  final String courseName;
  final String courseDescription;
  final Color color;

  CourseProgressCard(
      {@required this.courseDescription,
      @required this.courseIcon,
      @required this.courseName,
      @required this.percentCompleted,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: courseProgressBorderSide,
          top: courseProgressBorderSide,
          left: courseProgressBorderSide,
          right: courseProgressBorderSide,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Flex(
        direction: Axis.horizontal,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Percentage course completed------------------------
          Expanded(
            flex: 1,
            child: Text(
              percentCompleted.toString() + '%',
              style: TextStyle(
                  fontSize: 18, color: color, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(width: 10),
          //Course icon-----------------------------------------
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(8.0)),
            child: courseIcon,
          ),

          SizedBox(width: 20),
          //Course name and description-------------------------
          Expanded(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseName,
                  style: TextStyle(
                      fontSize: 16,
                      color: darkPurple,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  courseDescription,
                  style: TextStyle(
                      fontSize: 12,
                      color: darkBlueGrey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final IconData courseIcon;
  final String courseName;
  final String courseDescription;
  final Color color;

  CourseCard({
    @required this.courseDescription,
    @required this.courseIcon,
    @required this.courseName,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 280,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: courseProgressBorderSide,
            top: courseProgressBorderSide,
            left: courseProgressBorderSide,
            right: courseProgressBorderSide,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: color.withOpacity(0.2),
                          blurRadius: 5.0,
                          offset: Offset(2.0, 2.0))
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    courseIcon,
                    color: color,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courseName,
                      style: TextStyle(
                        fontSize: 16,
                        color: darkPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      courseDescription,
                      style: TextStyle(
                        fontSize: 12,
                        color: darkBlueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: darkPurple,
            )
          ],
        ));
  }
}

class CourseAdCard extends StatelessWidget {
  final int discountPercent;
  final String courseName;

  CourseAdCard({
    @required this.discountPercent,
    @required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 24.0,
        top: 30.0,
        bottom: 30.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: courseProgressBorderSide,
          top: courseProgressBorderSide,
          left: courseProgressBorderSide,
          right: courseProgressBorderSide,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get -$discountPercent% sell price',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: darkPurple),
              ),
              SizedBox(height: 3.0),
              Text(
                'for  <$courseName>  course',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: darkBlueGrey),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: lightBlueGrey,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-1, -1),
                    blurRadius: 1.0,
                  ),
                  BoxShadow(
                    color: darkBlueGrey,
                    offset: Offset(1, 1),
                    blurRadius: 1.0,
                  )
                ]),
            child: Icon(
              Icons.chevron_right,
              color: orange,
            ),
          ),
        ],
      ),
    );
  }
}

class ShortProfileInfoCard extends StatelessWidget {
  final String name;
  final String designation;
  final int rating;

  ShortProfileInfoCard({
    @required this.name,
    @required this.designation,
    @required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: darkBlueGrey,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: darkBlueGrey, blurRadius: 50)]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/portrait1.jpg",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                      color: lightBlueGrey,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 134, 99, 1),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                      child: Text(
                        rating.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: darkPurple,
          ),
        ),
        SizedBox(height: 10),
        Text(
          designation,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: darkBlueGrey,
          ),
        ),
      ],
    ));
  }
}

//Borders
//Course progess card border
BorderSide courseProgressBorderSide = BorderSide(
  color: darkBlueGrey.withOpacity(0.5),
  width: 1.5,
);

//Color Palette
Color lightBlueGrey = Color.fromRGBO(245, 246, 248, 1);
Color darkBlueGrey = Color.fromRGBO(185, 194, 209, 1);
Color darkVioletPurple = Color.fromRGBO(29, 17, 134, 0.8);
Color orange = Color.fromRGBO(255, 151, 87, 0.8);
Color darkPurple = Color.fromRGBO(54, 53, 65, 1);
