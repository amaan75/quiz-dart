import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'colors.dart';
import './pages/profile.dart';
import 'route_names.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Quiz App',
      routes: <String, WidgetBuilder>{
        RouteConstants.homePageRouteName: (BuildContext context) =>
            new HomePage(),
        //TODO: Implement atleast the GUI for these
        // '/Results':(BuildContext context)=> new ResultsPage(),
        // '/Exams':(BuildContext context)=> new ExamsPage(),
        RouteConstants.profilePageRouteName: (BuildContext context) =>
            new ProfilePage(),
      },
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      home: HomePage(),
      theme: _kGkTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name == '/login') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => LoginPage(),
        fullscreenDialog: true,
      );
    }

    return null;
  }
}

final ThemeData _kGkTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kGkLime900,
    primaryColor: kGkBlue100,
    buttonColor: kGkBlue100,
    scaffoldBackgroundColor: kGkBackgroundWhite,
    cardColor: kGkBackgroundWhite,
    textSelectionColor: kGkBlue100,
    errorColor: kGkErrorRed,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
    ),
    primaryIconTheme: base.iconTheme.copyWith(color: kGkLime900),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        body2: base.body2.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kGkLime900,
        bodyColor: kGkLime900,
      );
}
