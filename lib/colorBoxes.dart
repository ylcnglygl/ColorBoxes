import 'dart:async';
import 'dart:math';

import 'package:colorboxes/gameOver.dart';
import 'package:colorboxes/main.dart';
import 'package:flutter/material.dart';

class ColorBoxes extends StatefulWidget {
  @override
  _ColorBoxesState createState() => _ColorBoxesState();
}

class _ColorBoxesState extends State<ColorBoxes> {
  Timer _timer;
  int _start = 10;
  int score = 0;
  bool _visible = true;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.popUntil(
                context, (r) => r.settings.name == Routes.thirdPage);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GameOver(
                        score: score,
                      )),
            );
          });
        } else {
          setState(() {
            _start--;
            _visible = !_visible;
          });
        }
      },
    );
  }

  List<Color> colors = [
    Color(0xFFA0E7E5),
    Color(0xFFFFAEBC),
    Color(0xFFB4F8C8),
    Color(0xffbb8918),
  ];

  var rng = new Random();
  var colorContainer1 = 1;
  var colorContainer2 = 1;
  var colorContainer3 = 1;
  var colorContainer4 = 1;
  var colorContainer5 = 1;
  var colorContainer6 = 1;
  var colorContainer7 = 1;
  var colorContainer8 = 1;
  var colorContainer9 = 1;
  var colorContainer10 = 1;
  var colorContainer11 = 1;
  var colorContainer12 = 1;
  var colorContainer13 = 1;
  var colorContainer14 = 1;
  var colorContainer15 = 1;

  int colorContainerPrev;

  void initState() {
    super.initState();

    setColors();

    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    if (colorContainer8 == colorContainer1 &&
        colorContainer8 == colorContainer2 &&
        colorContainer8 == colorContainer3 &&
        colorContainer8 == colorContainer4 &&
        colorContainer8 == colorContainer5 &&
        colorContainer8 == colorContainer6 &&
        colorContainer8 == colorContainer7 &&
        colorContainer8 == colorContainer9 &&
        colorContainer8 == colorContainer10 &&
        colorContainer8 == colorContainer11 &&
        colorContainer8 == colorContainer12 &&
        colorContainer8 == colorContainer13 &&
        colorContainer8 == colorContainer14 &&
        colorContainer8 == colorContainer15) {
      score += 10;
      _start += 5;
      setColors();
      GameOver(
        score: score,
      );
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1 / 10,
                width: MediaQuery.of(context).size.width * 1 / 1,
                color: Color(0xFFFBE7C6),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Score: $score",
                        style: TextStyle(color: Colors.red),
                      ),
                      Text("Time: $_start",
                          style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ),
              //BİRİNCİ SATIR
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer1;

                      setState(() {
                        colorContainer1 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer1) {
                          colorContainer1 += 1;
                          if (colorContainer1 == 4) {
                            colorContainer1 = 0;
                          }
                        }
                      });
                      print(colorContainer1);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer1],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer2;

                      setState(() {
                        colorContainer2 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer2) {
                          colorContainer2 += 1;
                          if (colorContainer2 == 4) {
                            colorContainer2 = 0;
                          }
                        }
                      });
                      print(colorContainer2);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer2],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer3;

                      setState(() {
                        colorContainer3 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer3) {
                          colorContainer3 += 1;
                          if (colorContainer3 == 4) {
                            colorContainer3 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer3],
                    ),
                  ),
                ],
              ),
              //İKİNCİ SATIR
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer4;

                      setState(() {
                        colorContainer4 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer4) {
                          colorContainer4 += 1;
                          if (colorContainer4 == 4) {
                            colorContainer4 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer4],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer5;

                      setState(() {
                        colorContainer5 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer5) {
                          colorContainer5 += 1;
                          if (colorContainer5 == 4) {
                            colorContainer5 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer5],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer6;

                      setState(() {
                        colorContainer6 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer6) {
                          colorContainer6 += 1;
                          if (colorContainer6 == 4) {
                            colorContainer6 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer6],
                    ),
                  ),
                ],
              ),
              //ÜÇÜNCÜ SATIR
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer7;

                      setState(() {
                        colorContainer7 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer7) {
                          colorContainer7 += 1;
                          if (colorContainer7 == 4) {
                            colorContainer7 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer7],
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: _visible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 500),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer8],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer9;

                      setState(() {
                        colorContainer9 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer9) {
                          colorContainer9 += 1;
                          if (colorContainer9 == 4) {
                            colorContainer9 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer9],
                    ),
                  ),
                ],
              ),
              //DÖRDÜNCÜ SATIR
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer10;

                      setState(() {
                        colorContainer10 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer10) {
                          colorContainer10 += 1;
                          if (colorContainer10 == 4) {
                            colorContainer10 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer10],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer11;

                      setState(() {
                        colorContainer11 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer11) {
                          colorContainer11 += 1;
                          if (colorContainer11 == 4) {
                            colorContainer11 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer11],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer12;

                      setState(() {
                        colorContainer12 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer12) {
                          colorContainer12 += 1;
                          if (colorContainer12 == 4) {
                            colorContainer12 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer12],
                    ),
                  ),
                ],
              ),
              //BEŞİNCİ SATIR
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer13;

                      setState(() {
                        colorContainer13 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer13) {
                          colorContainer13 += 1;
                          if (colorContainer13 == 4) {
                            colorContainer13 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer13],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer14;

                      setState(() {
                        colorContainer14 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer14) {
                          colorContainer14 += 1;
                          if (colorContainer14 == 4) {
                            colorContainer14 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer14],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      colorContainerPrev = colorContainer15;

                      setState(() {
                        colorContainer15 = rng.nextInt(4);
                        if (colorContainerPrev == colorContainer15) {
                          colorContainer15 += 1;
                          if (colorContainer15 == 4) {
                            colorContainer15 = 0;
                          }
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.8 / 10,
                      width: MediaQuery.of(context).size.width * 3333 / 10000,
                      color: colors[colorContainer15],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void setColors() {
    colorContainer1 = rng.nextInt(4);
    colorContainer2 = rng.nextInt(4);
    colorContainer3 = rng.nextInt(4);
    colorContainer4 = rng.nextInt(4);
    colorContainer5 = rng.nextInt(4);
    colorContainer6 = rng.nextInt(4);
    colorContainer7 = rng.nextInt(4);
    colorContainer8 = rng.nextInt(4);
    colorContainer9 = rng.nextInt(4);
    colorContainer10 = rng.nextInt(4);
    colorContainer11 = rng.nextInt(4);
    colorContainer12 = rng.nextInt(4);
    colorContainer13 = rng.nextInt(4);
    colorContainer14 = rng.nextInt(4);
    colorContainer15 = rng.nextInt(4);
  }
}
