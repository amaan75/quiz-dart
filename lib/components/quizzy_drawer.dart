import 'package:flutter/material.dart';
import '../home.dart';
import '../route_names.dart';
import '../pages/profile.dart';

class QuizzyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: _buildDrawerList(context),
      ),
    );
  }

  List<Widget> _buildDrawerList(BuildContext context) {
    List<Widget> drawerItems = [];
    drawerItems
      ..add(_buildUserAccount(context))
      ..addAll(_buildLabelWidgets(context));
    return drawerItems;
  }

  Widget _buildUserAccount(BuildContext context) {
    return new UserAccountsDrawerHeader(
      accountName: new Text(
        "Quizzy Test",
        style: _drawerHeaderTextStyle,
      ),
      accountEmail: new Text(
        'quizapp0@gmail.com',
        style: _drawerHeaderTextStyle,
      ),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: new AssetImage('assets/drawer-header.png'),
        ),
      ),
      currentAccountPicture: new CircleAvatar(
        backgroundColor: Colors.brown,
        child: Icon(Icons.book),
      ),
    );
  }

  List<Widget> _buildLabelWidgets(context) {
    List<Widget> labelListItems = [
      new ListTile(
        leading: new Text(
          'USER',
          style: _dividerTextStyle,
        ),
      ),
      new ListTile(
        leading: new Icon(Icons.edit),
        title: new Text('Edit Profile'),
        onTap: () {
          Navigator.of(context).popUntil(ModalRoute.withName('/'));
          Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (BuildContext context, _, __) {
                return new ProfilePage();
              }, transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                return new FadeTransition(opacity: animation, child: child);
              }));
        },
      ),
      new Divider(),
      new ListTile(
        leading: new Text(
          'QUIZ',
          style: _dividerTextStyle,
        ),
      ),
      new ListTile(
        leading: new Icon(Icons.format_list_numbered),
        title: new Text('Questions'),
        onTap: () {
          Navigator.of(context).popUntil(ModalRoute.withName('/'));
          Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (BuildContext context, _, __) {
                return new HomePage();
              }, transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                return new FadeTransition(opacity: animation, child: child);
              }));
        },
      ),
      new ListTile(
        leading: new Icon(Icons.bookmark),
        title: new Text('Previous Results'),
      ),
      new ListTile(
        leading: new Icon(Icons.library_books),
        title: new Text('Exams'),
      ),
      new Divider(),
      new ListTile(
        leading: new Text(
          'MISC',
          style: _dividerTextStyle,
        ),
      ),
      new ListTile(
        leading: Icon(Icons.supervised_user_circle),
        title: new Text('About us'),
      )
    ];

    return labelListItems;
  }

 
}

TextStyle _drawerHeaderTextStyle = new TextStyle(color: Colors.white);
TextStyle _dividerTextStyle = new TextStyle(fontWeight: FontWeight.bold);
