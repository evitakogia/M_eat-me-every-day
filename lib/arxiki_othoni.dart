import 'package:flutter/material.dart';
//import 'package:m_eat_me_everyday/notificationservice.dart';
import 'package:timezone/data/latest.dart' as tz;
//import 'package:m_eat_me_everyday/stoixeia.dart';
import 'package:m_eat_me_everyday/cam.dart';
import 'package:m_eat_me_everyday/epimerous_stoxoi.dart';
import 'package:m_eat_me_everyday/neos_stoxos.dart';
import 'package:m_eat_me_everyday/list.dart';

// ignore: camel_case_types
class Arxiki_Othoni extends StatefulWidget {
  const Arxiki_Othoni({key}) : super(key: key);

  @override
  State<Arxiki_Othoni> createState() => _Arxiki_Othoni();
}

// ignore: camel_case_types
class _Arxiki_Othoni extends State<Arxiki_Othoni> {
  @override
  void initState() {
    super.initState();

    tz.initializeTimeZones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
        Container(
            alignment: Alignment.topRight,
            child:
                Image.asset('assets/icons/tomato.png', height: 60, width: 60)),
        ButtonTheme(
          minWidth: 256.0,
          height: 65.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          // ignore: deprecated_member_use
          child: RaisedButton(
            color: Colors.white,
            textColor: Colors.black,
            child: const Icon(Icons.add_a_photo_outlined),
            onPressed: () {
              /*Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CameraPreview(controller)));*/
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Camera()));
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonTheme(
          minWidth: 256.0,
          height: 65.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          // ignore: deprecated_member_use
          child: RaisedButton(
              color: Colors.white,
              textColor: Colors.black,
              child: const Text('Νέος Στόχος'),
              onPressed: () {
                // NotificationService().showNotification(1, "Συγχαρητήρια!",
                //   "Μόλις όρισες νέο στόχο! Συνέχισε δυναμικά!", 5);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Neos_Stoxos()));
              }),
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonTheme(
          minWidth: 256.0,
          height: 65.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          // ignore: deprecated_member_use
          child: RaisedButton(
            color: Colors.white,
            textColor: Colors.black,
            child: const Text('Οι στόχοι μου'),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Epimerous_Stoxoi()));
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonTheme(
          minWidth: 256.0,
          height: 65.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          // ignore: deprecated_member_use
          child: RaisedButton(
            color: Colors.white,
            textColor: Colors.black,
            child: const Text('Κατάταξη'),
            onPressed: () {
              /*Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CameraPreview(controller)));*/
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const List()));
            },
          ),
        ),
      ])),
    );
  }
}
