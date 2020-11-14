import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './widgets/widgets.dart';

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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DeadlineCard(
                            title: "Exam - Unit 5",
                            description: "Spanish for beginners.",
                            cardColor: darkVioletPurple,
                            imagesPaths: [
                              "assets/images/pp1.jpg",
                              "assets/images/pp2.jpg",
                              "assets/images/pp3.jpg"
                            ],
                          ),
                          Row(
                            children: [
                              TaskDoneCard(
                                title: "HomeWork",
                                description: "For today's lesson.",
                                cardColor: Colors.red,
                              ),
                              SizedBox(width: 20.0),
                              TaskDoneCard(
                                title: "Vocablury",
                                description: "25 words per week.",
                                cardColor: darkVioletPurple,
                              ),
                              SizedBox(width: 20.0),
                              TaskDoneCard(
                                title: "Reading",
                                description: "25 pages per week.",
                                cardColor: Colors.green,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GroupInfoCard(),
                          CurrentCourseProgress(
                            title: "Physics for beginners",
                            percentCompleted: 75,
                            progressBarcolor: darkVioletPurple,
                          ),
                          CurrentCourseProgress(
                            title: "Spanish for beginners",
                            percentCompleted: 34,
                            progressBarcolor: orange,
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CourseCard(
                            courseName: "Grammar",
                            color: darkVioletPurple,
                            courseIcon: Icons.edit,
                            courseDescription: "+ 30 grammar rules.",
                          ),
                          CourseCard(
                            courseName: "Dictionary",
                            color: Colors.redAccent,
                            courseIcon: Icons.text_format,
                            courseDescription: "+ 10 new words.",
                          ),
                          CourseCard(
                            courseName: "Reading",
                            color: Colors.greenAccent,
                            courseIcon: Icons.book,
                            courseDescription: "+ Knowledge.",
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

