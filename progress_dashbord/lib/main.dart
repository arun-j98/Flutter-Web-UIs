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
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Rubik"),
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
                width: 400, height: double.infinity, color: Colors.white),
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
                  name: "Harrison Phillips",
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
          NavigationBarButton(buttonIconData: Icons.leaderboard),
          NavigationBarButton(buttonIconData: Icons.apps),
          NavigationBarButton(buttonIconData: Icons.person),
          NavigationBarButton(buttonIconData: Icons.timeline),
        ],
      ),
    );
  }
}

class NavigationBarButton extends StatefulWidget {
  final IconData buttonIconData;

  NavigationBarButton({this.buttonIconData});

  @override
  _NavigationBarButtonState createState() => _NavigationBarButtonState();
}

class _NavigationBarButtonState extends State<NavigationBarButton>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  final Tween slideUpTween = Tween<double>(begin: 0.0, end: -2.0);
  final ColorTween colorTween = ColorTween(begin: darkBlueGrey, end: darkVioletPurple);

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
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                height: 34,
                width: 34,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 134, 99, 1),
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: lightBlueGrey),
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
BorderSide courseProgressBorderSide =
    BorderSide(color: darkBlueGrey, width: 1.0);

//Color Palette
Color lightBlueGrey = Color.fromRGBO(245, 246, 248, 1);
Color darkBlueGrey = Color.fromRGBO(185, 194, 209, 1);
Color darkVioletPurple = Color.fromRGBO(29, 17, 134, 0.8);
Color orange = Color.fromRGBO(253, 90, 40, 0.8);
Color darkPurple = Color.fromRGBO(54, 53, 65, 1);
