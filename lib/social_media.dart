// import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:share/share.dart';

// class ShareData extends StatefulWidget {
//   const ShareData({Key? key}) : super(key: key);

//   @override
//   ShareDataState createState() => ShareDataState();
// }

// class ShareDataState extends State<ShareData> {
//   String text = '';
//   String subject = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xFFFFEEAD),
//         appBar: AppBar(
//           backgroundColor: const Color(0xFF96CEB4),
//           title: const Text('Share'),
//           centerTitle: true,
//           automaticallyImplyLeading: false,
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 TextField(
//                   decoration: const InputDecoration(
//                     labelText: 'Share text:',
//                     labelStyle: TextStyle(color: Colors.black),
//                     hintText: 'Enter some text and/or link to share',
//                   ),
//                   maxLines: 2,
//                   onChanged: (String value) => setState(() {
//                     text = value;
//                   }),
//                 ),
//                 TextField(
//                   decoration: const InputDecoration(
//                     labelText: 'Share subject:',
//                     labelStyle: TextStyle(color: Colors.black),
//                     hintText: 'Enter subject to share (optional)',
//                   ),
//                   maxLines: 2,
//                   onChanged: (String value) => setState(() {
//                     subject = value;
//                   }),
//                 ),
//                 const Padding(padding: EdgeInsets.only(top: 12.0)),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Builder(
//                       builder: (BuildContext context) {
//                         // ignore: deprecated_member_use
//                         return RaisedButton(
//                           color: const Color(0xFF96CEB4),
//                           child: const Text('Share'),
//                           onPressed: () => _onShareWithEmptyFields(context),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

//   _onShareWithEmptyFields(BuildContext context) async {
//     await Share.share("text");
//   }
// }
