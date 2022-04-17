import 'package:flutter/material.dart';
import 'package:m_eat_me_everyday/notificationservice.dart';
import 'package:m_eat_me_everyday/createuser.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'm_eat_me_everyday',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFFEEAD)),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            iconSize: 256,
            icon: Image.asset('assets/icons/received_457377722600385.webp'),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CreateUser()));
            },
          ),
          Container(
              alignment: const Alignment(0.61, 0.61),
              child: Image.asset(
                'assets/icons/bread.png',
              )),
          Container(
              alignment: const Alignment(-0.7, -0.7),
              child: Image.asset(
                'assets/icons/bacon.png',
              )),
          Container(
              alignment: const Alignment(0.6, -0.6),
              child: Image.asset(
                'assets/icons/egg.png',
              )),
          Container(
              alignment: const Alignment(-0.7, 0.6),
              child: Image.asset(
                'assets/icons/pear.png',
              )),
        ],
      ),
    ));
  }
}
