import 'package:flutter/material.dart';
import 'package:m_eat_me_everyday/arxiki_othoni.dart';
import 'globals.dart' as globals;

// ignore: camel_case_types
class CreateUser extends StatefulWidget {
  const CreateUser({Key? key}) : super(key: key);

  @override
  State<CreateUser> createState() => _CreateUser();
}

// ignore: camel_case_types
class _CreateUser extends State<CreateUser> {
  final TextEditingController _name = TextEditingController();
  String dropdownvalue = 'Βάρος';

  var items = [
    'Βάρος',
    '45>',
    '45-50',
    '50-55',
    '55-60',
    '60-65',
    '65-70',
    '75-80',
    '85-90',
    '95-100',
    '100<'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEEAD),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.topRight,
                child: Image.asset('assets/icons/bread.png',
                    height: 60, width: 60)),
            const Text('Create User', style: TextStyle(fontSize: 25)),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: TextField(
                  controller: _name,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF96CEB4), width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                      labelText: 'Πληκτρολόγησε το User Name που επιθυμείς',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ))),
            ),
            const SizedBox(height: 40),
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
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
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
                        }))),
            const SizedBox(height: 40),
            // ignore: deprecated_member_use
            RaisedButton(
                color: const Color(0xFF96CEB4),
                child: const Text('Αποθήκευση'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                onPressed: () => {
                      if (globals.name != _name.text)
                        {globals.name = _name.text},
                      if (globals.kilo != dropdownvalue)
                        {globals.kilo = dropdownvalue},
                      globals.baros = int.parse(globals.kilo.substring(0, 2)),
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Arxiki_Othoni())),
                    })
          ],
        ),
      ),
    );
  }
}
