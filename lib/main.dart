import 'package:final_exam/answer1.dart';
import 'package:final_exam/answer2.dart';
import 'package:final_exam/component/profile_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: const ExpressCalculator());
  }
}

// class MyProfile extends StatefulWidget {
//   const MyProfile({super.key});

//   @override
//   State<MyProfile> createState() => _MyProfileState();
// }

// class _MyProfileState extends State<MyProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Profile'),
//         centerTitle: true,
//         backgroundColor: Colors.pink,
//         titleTextStyle: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 24
//         ),
//       ),
//       body: MyProfileCard(
//         name: 'Parnfa Phathabannaporn',
//         email: ' : phathabannaporn_p@silpakorn.edu',
//         phoneNum: ' : 0836346915',
//         imageUrl:
//             'https://i.pinimg.com/736x/62/22/56/622256276539da997eb8e12e4324dbd3.jpg',
//         hobby: 'listen music, play game, coding',
//       ),
//     );
//   }
// }
