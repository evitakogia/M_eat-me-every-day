import 'package:flutter/material.dart';
import 'package:m_eat_me_everyday/arxiki_othoni.dart';
import 'globals.dart' as globals;
// import 'package:m_eat_me_everyday/social_media.dart';

// ignore: camel_case_types, must_be_immutable
class Epimerous_Stoxoi extends StatelessWidget {
  List items = List.generate(1, (index) => "$index ");

  Epimerous_Stoxoi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(highlightColor: const Color(0xFF96CEB4)),
        child: Scaffold(
            backgroundColor: const Color(0xFFFFEEAD),
            appBar: AppBar(
              title: const Text('Οι Στόχοι Μου'),
              backgroundColor: const Color(0xFF96CEB4),
            ),
            body: Container(
              decoration:
                  const BoxDecoration(color: Color(0xFFFFEEAD), boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFEEAD),
                )
              ]),
              margin: const EdgeInsets.all(10),
              child: ScrollConfiguration(
                behavior: const ScrollBehavior(),
                child: GlowingOverscrollIndicator(
                  axisDirection: AxisDirection.down,
                  color: const Color(0xFFFFEEAD),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                          child: Material(
                        color: const Color(0xFFFFEEAD),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                    'assets/icons/tacos.png',
                                    width: 70,
                                    height: 70,
                                  )),
                              const SizedBox(
                                height: 25,
                              ),
                              //Στόχος Θερμιδών box
                              Container(
                                height: 150,
                                width: 300,
                                alignment: Alignment.center,
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text("Στόχος Θερμιδών",
                                        style: TextStyle(fontSize: 25)),
                                    const Divider(
                                        color: Colors.black, thickness: 0.1),
                                    Text(globals.data.thermides,
                                        style: const TextStyle(fontSize: 25)),
                                    const IconButton(
                                      icon: Icon(Icons.flatware),
                                      // icon: Icon(Icons.restaurant),
                                      onPressed: null,
                                    ),
                                  ],
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 5),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              //Στόχος Αλάτων box
                              Container(
                                height: 150,
                                width: 300,
                                alignment: Alignment.center,
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text("Στόχος Αλάτων",
                                        style: TextStyle(fontSize: 25)),
                                    const Divider(
                                        color: Colors.black, thickness: 0.1),
                                    Text(globals.data.alati,
                                        style: const TextStyle(fontSize: 25)),
                                    const IconButton(
                                      icon: Icon(Icons.flatware),
                                      // icon: Icon(Icons.restaurant),
                                      onPressed: null,
                                    ),
                                  ],
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 5),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              //Στόχος Υδατανθράκων box
                              Container(
                                height: 150,
                                width: 300,
                                alignment: Alignment.center,
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text("Στόχος Υδατανθράκων",
                                        style: TextStyle(fontSize: 25)),
                                    const Divider(
                                        color: Colors.black, thickness: 0.1),
                                    Text(globals.data.idatanthrakes,
                                        style: const TextStyle(fontSize: 25)),
                                    const IconButton(
                                      icon: Icon(Icons.flatware),
                                      // icon: Icon(Icons.restaurant),
                                      onPressed: null,
                                    ),
                                  ],
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 5),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              //Στόχος Πρωτεινών box
                              Container(
                                height: 150,
                                width: 300,
                                alignment: Alignment.center,
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text("Στόχος Πρωτεινών",
                                        style: TextStyle(fontSize: 25)),
                                    const Divider(
                                        color: Colors.black, thickness: 0.1),
                                    Text(globals.data.proteines,
                                        style: const TextStyle(fontSize: 25)),
                                    const IconButton(
                                      icon: Icon(Icons.flatware),
                                      // icon: Icon(Icons.restaurant),
                                      onPressed: null,
                                    ),
                                  ],
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 5),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              ButtonTheme(
                                  minWidth: 70.0,
                                  height: 70.0,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100.0)),
                                  ),
                                  // ignore: deprecated_member_use
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        // ignore: deprecated_member_use
                                        RaisedButton(
                                          color: const Color(0xFF96CEB4),
                                          textColor: Colors.white,
                                          child:
                                              const Icon(Icons.check_outlined),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Arxiki_Othoni()));
                                          },
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        // ignore: deprecated_member_use
                                        RaisedButton(
                                            color: const Color(0xFF96CEB4),
                                            textColor: Colors.white,
                                            child:
                                                const Icon(Icons.share_rounded),
                                            onPressed: () {
                                              // Navigator.of(context).push(
                                              //     MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             const ShareData()));
                                            }),
                                      ]))
                            ]),
                      ));
                    },
                    itemCount: items.length,
                  ),
                ),
              ),
            )));
  }
}
