import 'package:flutter/material.dart';
import 'package:m_eat_me_everyday/arxiki_othoni.dart';
import 'package:m_eat_me_everyday/epimerous_stoxoi.dart';
import 'globals.dart' as globals;
import 'package:m_eat_me_everyday/notificationservice.dart';

// ignore: camel_case_types
class Neos_Stoxos extends StatefulWidget {
  const Neos_Stoxos({Key? key}) : super(key: key);

  @override
  _Neos_Stoxos createState() => _Neos_Stoxos();
}

// ignore: camel_case_types
class _Neos_Stoxos extends State<Neos_Stoxos> {
  final TextEditingController _text = TextEditingController();
  late final int _state;
  String dropdownvalue = 'Διατροφική Δήλωση ';

  // List of items in our dropdown menu
  var items = [
    'Διατροφική Δήλωση ',
    'Στόχος Θερμίδες',
    'Στόχος Πρωτεΐνες',
    'Στόχος Υδατάνθρακες',
    'Στόχος Αλάτι',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Container(
                alignment: Alignment.topRight,
                child: Image.asset('assets/icons/chocolate.png',
                    height: 70, width: 70)),
            DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: DropdownButton(
                      // iconEnabledColor: Colors.white,
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                      // Initial Value
                      value: dropdownvalue,
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: Text(items),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                        if (dropdownvalue == 'Διατροφική Δήλωση ') {
                          _state = -1;
                        } else if (dropdownvalue == 'Στόχος Θερμίδες') {
                          _state = 0;
                        } else if (dropdownvalue == 'Στόχος Πρωτεΐνες') {
                          _state = 1;
                        } else if (dropdownvalue == 'Στόχος Υδατάνθρακες') {
                          _state = 2;
                        } else if (dropdownvalue == 'Στόχος Αλάτι') {
                          _state = 3;
                        }
                      },
                    ))),
            const SizedBox(
              height: 40,
            ),
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                // alignment: Alignment.center,
                alignment: const AlignmentDirectional(0.0, 0.0),
                height: 180,
                width: 300,
                child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("Νέος Στόχος", style: TextStyle(fontSize: 25)),
                      const Divider(color: Colors.black, thickness: 0.1),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _text,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Πρόσθεσε καινούριο στόχο'),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                          color: const Color(0xFF96CEB4),
                          child: const Text('Αποθήκευση'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onPressed: () => {
                                if (_state == 0)
                                  {
                                    globals.data.thermides = _text.text,
                                  }
                                else if (_state == 1)
                                  {
                                    globals.data.proteines = _text.text,
                                  }
                                else if (_state == 2)
                                  {
                                    globals.data.idatanthrakes = _text.text,
                                  }
                                else if (_state == 3)
                                  {
                                    globals.data.alati = _text.text,
                                  },
                                NotificationService().showNotification(
                                    1,
                                    "Συγχαρητήρια!",
                                    "Μόλις όρισες νέο στόχο! Συνέχισε δυναμικά!",
                                    5),
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Epimerous_Stoxoi())),
                              })
                    ])),
          ])),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Arxiki_Othoni()));
          },
          child: const Icon(
            Icons.navigate_before_outlined,
            color: Colors.white,
          ),
          backgroundColor: const Color(0xFF96CEB4)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
