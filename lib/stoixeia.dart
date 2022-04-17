// ignore_for_file: unnecessary_string_interpolations, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:m_eat_me_everyday/arxiki_othoni.dart';
import 'package:m_eat_me_everyday/proionta.dart';

class Stoixeia extends StatefulWidget {
  const Stoixeia({Key? key}) : super(key: key);

  @override
  State<Stoixeia> createState() => StoixeiaState();
}

class StoixeiaState extends State<Stoixeia> {
  String radioButtonItem = '1';
  String radioButtonItem2 = '1';
  int id = 1;
  int id2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
          Container(
              height: 230,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1.0,
                  color: Colors.white,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Μερίδες Προιόντος = ' + '$radioButtonItem',
                          style: const TextStyle(fontSize: 14))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = '1';
                            id = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = '2';
                            id = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = '3';
                            id = 3;
                          });
                        },
                      ),
                      Radio(
                        value: 4,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = '4';
                            id = 4;
                          });
                        },
                      ),
                      Radio(
                        value: 5,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = '5';
                            id = 5;
                          });
                        },
                      ),
                      Radio(
                        value: 6,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = '6';
                            id = 6;
                          });
                        },
                      ),
                      Radio(
                        value: 7,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = '7';
                            id = 7;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          '1',
                          style: TextStyle(fontSize: 11.0),
                        ),
                        Text(
                          '2',
                          style: TextStyle(fontSize: 11.0),
                        ),
                        Text(
                          '3',
                          style: TextStyle(fontSize: 11.0),
                        ),
                        Text(
                          '4',
                          style: TextStyle(fontSize: 11.0),
                        ),
                        Text(
                          '5',
                          style: TextStyle(fontSize: 11.0),
                        ),
                        Text(
                          '6',
                          style: TextStyle(fontSize: 11.0),
                        ),
                        Text(
                          '7',
                          style: TextStyle(fontSize: 11.0),
                        )
                      ]),
                  Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                          'Μερίδες Που Καταναλώθηκαν = ' + '$radioButtonItem2',
                          style: const TextStyle(fontSize: 14))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: id2,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem2 = '1';
                            id2 = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: id2,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem2 = '2';
                            id2 = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: id2,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem2 = '3';
                            id2 = 3;
                          });
                        },
                      ),
                      Radio(
                        value: 4,
                        groupValue: id2,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem2 = '4';
                            id2 = 4;
                          });
                        },
                      ),
                      Radio(
                        value: 5,
                        groupValue: id2,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem2 = '5';
                            id2 = 5;
                          });
                        },
                      ),
                      Radio(
                        value: 6,
                        groupValue: id2,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem2 = '6';
                            id2 = 6;
                          });
                        },
                      ),
                      Radio(
                        value: 7,
                        groupValue: id2,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem2 = '7';
                            id2 = 7;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        '1',
                        style: TextStyle(fontSize: 11.0),
                      ),
                      Text(
                        '2',
                        style: TextStyle(fontSize: 11.0),
                      ),
                      Text(
                        '3',
                        style: TextStyle(fontSize: 11.0),
                      ),
                      Text(
                        '4',
                        style: TextStyle(fontSize: 11.0),
                      ),
                      Text(
                        '5',
                        style: TextStyle(fontSize: 11.0),
                      ),
                      Text(
                        '6',
                        style: TextStyle(fontSize: 11.0),
                      ),
                      Text(
                        '7',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/icons/pear.png',
              )),
          ButtonTheme(
              minWidth: 70.0,
              height: 70.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              // ignore: deprecated_member_use
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // ignore: deprecated_member_use
                    RaisedButton(
                      color: const Color(0xFF96CEB4),
                      textColor: Colors.white,
                      child: const Icon(Icons.navigate_before_outlined),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Arxiki_Othoni()));
                      },
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        color: const Color(0xFF96CEB4),
                        textColor: Colors.white,
                        child: const Icon(Icons.check),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Proionta()));
                        }
                        // onPressed: _toggleDropdown,
                        )
                  ]))
        ])));
  }
}
