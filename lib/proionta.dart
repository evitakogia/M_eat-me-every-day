import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:m_eat_me_everyday/arxiki_othoni.dart';
import 'dart:math';
import 'package:m_eat_me_everyday/globals.dart' as globals;
import 'package:m_eat_me_everyday/stoixeia.dart';

class Proionta extends StatefulWidget {
  const Proionta({Key? key}) : super(key: key);

  @override
  State<Proionta> createState() => ProiontaState();
}

class ProiontaState extends State<Proionta> {
  bool _showPreview = false;
  String _image = "assets/icons/1.jpg";

  List items = List.generate(1, (index) => "$index ");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ημερήσια Καταμέτρηση'),
          backgroundColor: const Color(0xFF96CEB4),
        ),
        body: Center(
            child: Stack(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/icons/tomato.png',
                      height: 60, width: 60)),
              Container(
                  decoration:
                      const BoxDecoration(color: Color(0xFFFFEEAD), boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFFEEAD),
                    )
                  ]),
                  margin: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        Container(
                          height: 150,
                          width: 300,
                          alignment: Alignment.center,
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              const SizedBox(
                                height: 15,
                              ),
                              const Text("Συνολικές Θερμίδες",
                                  style: TextStyle(fontSize: 25)),
                              const Divider(
                                  color: Colors.black, thickness: 0.1),
                              Text(
                                  ((globals.Thermides).toStringAsFixed(2))
                                      .toString(),
                                  style: const TextStyle(fontSize: 25)),
                              const IconButton(
                                icon: Icon(Icons.flatware),
                                onPressed: null,
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 5),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
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
                                height: 15,
                              ),
                              const Text("Συνολικά Άλατα",
                                  style: TextStyle(fontSize: 25)),
                              const Divider(
                                  color: Colors.black, thickness: 0.1),
                              Text(
                                  ((globals.Alati).toStringAsFixed(2))
                                      .toString(),
                                  style: const TextStyle(fontSize: 25)),
                              const IconButton(
                                icon: Icon(Icons.flatware),
                                onPressed: null,
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 5),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
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
                                height: 15,
                              ),
                              const Text("Συνολικοί Υδατάνθρακες",
                                  style: TextStyle(fontSize: 25)),
                              const Divider(
                                  color: Colors.black, thickness: 0.1),
                              Text(
                                  ((globals.Ydatanthrakes).toStringAsFixed(2))
                                      .toString(),
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
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
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
                                height: 15,
                              ),
                              const Text("Συνολικές Πρωτείνες",
                                  style: TextStyle(fontSize: 25)),
                              const Divider(
                                  color: Colors.black, thickness: 0.1),
                              Text(
                                  ((globals.Proteines))
                                      .toStringAsFixed(2)
                                      .toString(),
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
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ]))),
              Container(
                  height: 250,
                  width: 390,
                  color: Colors.white,
                  child: GridView.builder(
                    itemCount: globals.imagearray.length, //images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onLongPress: () {
                          setState(() {
                            _showPreview = true;
                            Image.file(File(globals.imagearray[index]));
                            //_image = "assets/icons/${images[index]}";
                            _image = globals.imagearray[index];
                            //Image.file(new File(globals
                            // .globalString));
                          });
                        },
                        onLongPressEnd: (details) {
                          setState(() {
                            _showPreview = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            clipBehavior: Clip.none,
                            child: //Stack(children: [
                                // Image.asset(images[index]),
                                //Image.file(new File(globals.globalString)),
                                //]
                                // )
                                Image.file(File(globals.imagearray[index])),
                          ),
                        ),
                      );
                    },
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
                                builder: (context) => const Stoixeia()));
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
                                  builder: (context) => const Arxiki_Othoni()));
                              (globals.Alati =
                                      globals.Alati + Random().nextDouble())
                                  .toStringAsFixed(2);
                              (globals.Thermides = globals.Thermides +
                                      Random().nextDouble() +
                                      1647.12)
                                  .toStringAsFixed(2);
                              (globals.Ydatanthrakes = globals.Ydatanthrakes +
                                      Random().nextDouble() +
                                      63.75)
                                  .toStringAsFixed(2);
                              (globals.Proteines = globals.Proteines +
                                      Random().nextDouble() +
                                      14.52)
                                  .toStringAsFixed(2);
                            }
                            // onPressed: _toggleDropdown,
                            )
                      ])),
            ]),
            if (_showPreview) ...[
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Center(
                      child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 350,
                      maxWidth: 350,
                    ),
                    child:
                        // Image.asset(
                        //_image,
                        //),
                        //Stack(children: [
                        //Image.asset(_image),
                        Image.file(File(_image)),
                    //Image.file(new File(globals.globalString)),
                    //]
                    //)
                  )),
                ),
              ),
            ],
          ],
        )));
  }
}
