import 'package:flutter/material.dart';
import '../components/quizzy_drawer.dart';
class ProfilePage extends StatefulWidget {
  static String routeName = 'ProfilePageRoute';
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(drawer: QuizzyDrawer(),
      body: new Container(
        child: new Text('NEW PROFILE PAGE'),
      ),
    );
  }
}
