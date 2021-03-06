import 'package:flutter/material.dart';
import 'package:sufismart/recource/strings.dart';
import 'package:sufismart/ui/all_news.dart';
import 'package:sufismart/ui/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        RouteName.home: (BuildContext context) => HomeView(
              gotoShowAll: () {
                Navigator.pushNamed(context, RouteName.allNews);
              },
              gotoBranch: () {},
              gotoCredit: () {},
              gotoDetailNews: (e) {},
              gotoForgotPassword: () {},
              gotoInstallment: () {},
              gotoPayment: () {},
              gotoProduct: () {},
              gotoPromo: () {},
              gotoSignup: () {},
            ),
        RouteName.allNews: (BuildContext context) => AllNews(
              gotoDetailNews: (e) {},
            ),
      },
      initialRoute: RouteName.home,
    );
  }
}

String initialRouteName = RouteName.splashScreen;

class RouteName {
  static const String splashScreen = "splashScreen";
  static const String home = "home";
  static const String allNews = "allNews";
}
