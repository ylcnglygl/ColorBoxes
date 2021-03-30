import 'package:colorboxes/colorBoxesDB.dart';
import 'package:flutter/material.dart';

import 'colorBoxes.dart';
import 'databaseHelper.dart';
import 'main.dart';

// ignore: must_be_immutable
class GameOver extends StatefulWidget {
  int score = 0;
  GameOver({this.score});
  @override
  _GameOverState createState() => _GameOverState();
}

class _GameOverState extends State<GameOver> {
  List<ColorBoxesDB> allScores;
  DatabaseHelper databaseHelper;

  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    allScores = List<ColorBoxesDB>();
    databaseHelper = DatabaseHelper();
    databaseHelper.addScore(ColorBoxesDB(widget.score));
    databaseHelper.getScore().then((comingScore) {
      for (Map readingMap in comingScore) {
        allScores.add(ColorBoxesDB.fromMap(readingMap));
        print(allScores);
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: databaseHelper.getScoreList(),
      builder: (context, AsyncSnapshot<List<ColorBoxesDB>> snapshot) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text("Your Score"),
                          Text("${widget.score}"),
                          Text("Your Highscore"),
                          Text(
                            "${allScores[0]}",
                            style: TextStyle(color: Colors.black),
                          ),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            onPressed: () {
                              Navigator.popUntil(context,
                                  (r) => r.settings.name == Routes.thirdPage);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ColorBoxes()),
                              );
                            },
                            child: Text("New Game"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ])),
        );
      },
    );
  }
}
