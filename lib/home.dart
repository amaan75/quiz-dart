import 'package:flutter/material.dart';
import './components/quizzy_drawer.dart';

class HomePage extends StatelessWidget {



  final List<String> itemsList = ['PHYSICS', 'MATHS', 'CHEMISTRY'];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Quizzy'),
      ),
      drawer: QuizzyDrawer(),
      body: new SafeArea(
        child: new Container(
          padding: const EdgeInsets.all(12.0),
          child: new ListView(
            children: _buildListViewItems(context, itemsList),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildListViewItems(
      BuildContext context, List<String> itemNames) {
    List<Widget> childList = [];
    itemNames.forEach((name) {
      childList.add(new ListTile(
        title: new Container(
          decoration: new BoxDecoration(
            border: new Border.all(color: const Color(0x80000000)),
            borderRadius: new BorderRadius.circular(5.0),
          ),
          padding: const EdgeInsets.all(10.0),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(name),
              ),
              new Icon(Icons.arrow_right),
            ],
          ),
        ),
      ));
    });
    return childList;
  }
}
