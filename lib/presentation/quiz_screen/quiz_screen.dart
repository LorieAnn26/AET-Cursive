import 'package:cursive/core/app_export.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'dart:math';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // DrawingBoard's state variables
  Color selectedColor = Colors.black;
  double strokeWidth = 5;
  List<DrawingPoint?> drawingPoints = [];
  List<Color> colors = [
    Colors.pink,
    Colors.red,
    Colors.black,
    Colors.yellow,
    Colors.amberAccent,
    Colors.purple,
    Colors.green,
  ];

  late MediaQueryData mediaQueryData;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: Stack(
          // Use Stack to overlay the drawing canvas on the UI
          children: [
            buildQuizScreenUI(),
            buildDrawingCanvas(),
          ],
        ),
      ),
    );
  }

  // Existing QuizScreen UI
  Widget buildQuizScreenUI() {
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgQuiz,
          ),
          fit: BoxFit.cover,
        ),
      ),
      // Your existing UI components go here...
    );
  }

  // Drawing canvas from DrawingBoard
  Widget buildDrawingCanvas() {
    return GestureDetector(
      onPanStart: (details) {
        setState(() {
          drawingPoints.add(DrawingPoint(details.localPosition, createPaint()));
        });
      },
      onPanUpdate: (details) {
        setState(() {
          drawingPoints.add(DrawingPoint(details.localPosition, createPaint()));
        });
      },
      onPanEnd: (details) {
        setState(() {
          drawingPoints.add(null);
        });
      },
      child: CustomPaint(
        painter: _DrawingPainter(drawingPoints),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }

  Paint createPaint() {
    return Paint()
      ..color = selectedColor
      ..isAntiAlias = true
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
  }
}

class _DrawingPainter extends CustomPainter {
  final List<DrawingPoint?> drawingPoints;

  _DrawingPainter(this.drawingPoints);

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < drawingPoints.length - 1; i++) {
      if (drawingPoints[i] != null && drawingPoints[i + 1] != null) {
        canvas.drawLine(drawingPoints[i]!.offset, drawingPoints[i + 1]!.offset,
            drawingPoints[i]!.paint);
      } else if (drawingPoints[i] != null && drawingPoints[i + 1] == null) {
        canvas.drawPoints(PointMode.points, [drawingPoints[i]!.offset],
            drawingPoints[i]!.paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class DrawingPoint {
  final Offset offset;
  final Paint paint;

  DrawingPoint(this.offset, this.paint);
}
