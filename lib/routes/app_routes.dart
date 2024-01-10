import 'package:flutter/material.dart';
import 'package:cursive/presentation/homepage_screen/homepage_screen.dart';
import 'package:cursive/presentation/pageone_screen/pageone_screen.dart';
import 'package:cursive/presentation/pagetwo_screen/pagetwo_screen.dart';
import 'package:cursive/presentation/pagethree_screen/pagethree_screen.dart';
import 'package:cursive/presentation/cursiveletter_screen/cursiveletter_screen.dart';
import 'package:cursive/presentation/printedletters_screen/printedletters_screen.dart';
import 'package:cursive/presentation/word_screen/word_screen.dart';
import 'package:cursive/presentation/quiz_screen/quiz_screen.dart';
import 'package:cursive/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homepageScreen = '/homepage_screen';

  static const String pageoneScreen = '/pageone_screen';

  static const String pagetwoScreen = '/pagetwo_screen';

  static const String pagethreeScreen = '/pagethree_screen';

  static const String cursiveletterScreen = '/cursiveletter_screen';

  static const String printedlettersScreen = '/printedletters_screen';

  static const String wordScreen = '/word_screen';

  static const String quizScreen = '/quiz_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homepageScreen: (context) => HomepageScreen(),
    pageoneScreen: (context) => PageoneScreen(),
    pagetwoScreen: (context) => PagetwoScreen(),
    pagethreeScreen: (context) => PagethreeScreen(),
    cursiveletterScreen: (context) => CursiveletterScreen(),
    printedlettersScreen: (context) => PrintedlettersScreen(),
    wordScreen: (context) => WordScreen(),
    quizScreen: (context) => QuizScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
