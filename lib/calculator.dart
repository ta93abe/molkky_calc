import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/keypad.dart';
import 'fin.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _hold = 0;
  int _score = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Molkky",
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Score:',
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  '$_score',
                  style: TextStyle(
                    fontSize: 100.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      KeyPad(
                        number: "10",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 10;
                            },
                          );
                        },
                      ),
                      KeyPad(
                        number: "11",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 11;
                            },
                          );
                        },
                      ),
                      KeyPad(
                        number: "12",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 12;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      KeyPad(
                        number: "7",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 7;
                            },
                          );
                        },
                      ),
                      KeyPad(
                        number: "8",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 8;
                            },
                          );
                        },
                      ),
                      KeyPad(
                        number: "9",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 9;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      KeyPad(
                        number: "4",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 4;
                            },
                          );
                        },
                      ),
                      KeyPad(
                        number: "5",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 5;
                            },
                          );
                        },
                      ),
                      KeyPad(
                        number: "6",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 6;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      KeyPad(
                        number: "1",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 1;
                            },
                          );
                        },
                      ),
                      KeyPad(
                        number: "2",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 2;
                            },
                          );
                        },
                      ),
                      KeyPad(
                        number: "3",
                        onPressed: () {
                          setState(
                            () {
                              _hold = 3;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                child: Text(
                  'clear',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  setState(
                    () => _score = 0,
                  );
                },
                color: Colors.red,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            if (_score + _hold == 50) {
              setState(() {
                _score = 0;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Finish(),
                ),
              );
            } else if (_score + _hold > 50) {
              setState(() {
                _score = 25;
                _hold = 0;
              });
            } else {
              setState(() {
                _score += _hold;
                _hold = 0;
              });
            }
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
