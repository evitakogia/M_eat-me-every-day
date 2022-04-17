import 'package:flutter/material.dart';
import 'package:m_eat_me_everyday/arxiki_othoni.dart';
import 'globals.dart' as globals;
import "dart:math";

// ignore: camel_case_types
class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _List();
}

// ignore: camel_case_types
class _List extends State<List> {
  var people = [
    'Lagertha',
    'Floki',
    'Bjorn Lothbrok',
    'Torvi',
    'Ragnar Lothbrok',
    'Rollo',
    'Ubbe',
    'Hvitserk',
    'King Harald',
    'Athelstan',
    'Queen Aslaug'
  ];

  final random = Random();
  late double alati = 2.0;
  late double ydatanthrakes = 255;
  late double proteines = 0.83 * globals.baros;
  late double thermides = (14.8 * globals.baros) + 485;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color(0xFFFFEEAD),
          appBar: AppBar(
            title: Text('Κατάταξη ${globals.kilo}kg ατόμων'),
            backgroundColor: const Color(0xFF96CEB4),
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    tabs: const [
                      Tab(
                        child: Text(
                          'Θερμίδες',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Αλάτι',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Υδατάνθρακες',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Πρωτείνες',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ]),
                preferredSize: const Size.fromHeight(30.0)),
            actions: const <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 16.0),
              ),
            ],
          ),
          body: TabBarView(children: <Widget>[
            ListView.builder(
                itemCount: people.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: const Color(0xFF96CEB4),
                              child: Text((index + 1).toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15))),
                          title: Text(people[Random().nextInt(people.length)]
                              // people[index]
                              ),
                          trailing: Text(double.parse((thermides =
                                      thermides + random.nextDouble())
                                  .toStringAsFixed(2))
                              .toString())));
                }),
            ListView.builder(
                itemCount: people.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: const Color(0xFF96CEB4),
                              child: Text((index + 1).toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15))),
                          title: Text(people[Random().nextInt(people.length)]
                              // people[index]
                              ),
                          trailing: Text(double.parse((alati =
                                      alati + random.nextDouble())
                                  .toStringAsFixed(2))
                              .toString())));
                }),
            ListView.builder(
                itemCount: people.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: const Color(0xFF96CEB4),
                              child: Text((index + 1).toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15))),
                          title: Text(people[Random().nextInt(people.length)]
                              // people[index]
                              ),
                          trailing: Text(double.parse((ydatanthrakes =
                                      ydatanthrakes + random.nextDouble())
                                  .toStringAsFixed(2))
                              .toString())));
                }),
            ListView.builder(
                itemCount: people.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: const Color(0xFF96CEB4),
                              child: Text((index + 1).toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15))),
                          title: Text(people[Random().nextInt(people.length)]
                              // people[index]
                              ),
                          trailing: Text(double.parse((proteines =
                                      proteines + random.nextDouble())
                                  .toStringAsFixed(2))
                              .toString())));
                })
          ]),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Arxiki_Othoni()));
                alati = 2.0;
                ydatanthrakes = 200;
                proteines = 0.83 * globals.baros;
                thermides = (14.8 * globals.baros) + 485;
              },
              child: const Icon(
                Icons.navigate_before_outlined,
                color: Colors.white,
              ),
              backgroundColor: const Color(0xFF96CEB4)),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ));
  }
}
