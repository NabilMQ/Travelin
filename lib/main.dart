import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelin/firebase_options.dart';
import 'package:travelin/view/auth/auth.dart';
import 'package:travelin/view/getStarted/get_started.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
      overlays: [

      ],
    );

    SystemChrome.setSystemUIChangeCallback((systemOverlaysAreVisible) async {
      await Future.delayed(const Duration(seconds: 1));
      SystemChrome.restoreSystemUIOverlays();
    });

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({ super.key });

  @override
  State <Main> createState() => _MainState();
}

// class _MainState extends State<Main> {
//   @override
//   Widget build(BuildContext context) {
//     return const Auth();
//   }
// }


class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return const GetStarted();
  }
}


 
// TextEditingController firstDateController = TextEditingController();
// TextEditingController secondDateController = TextEditingController();

// class _MainState extends State<Main> {


// List <String> getDifferenceWithWeekends(DateTime startDate, DateTime endDate) {
//   List <String> nbDays = [];
//   DateTime currentDay = startDate;
//   while (currentDay.isBefore(endDate)) {
//     currentDay = currentDay.add(Duration(days: 1));
//     if (currentDay.weekday == DateTime.saturday || currentDay.weekday == DateTime.sunday) {
//       nbDays.add("${currentDay.weekday.toString()}, ${currentDay.day} ${currentDay.month} ${currentDay.year}");
//     }
//   }
//   return nbDays;
// }

//   @override
//   Widget build(BuildContext context) {

//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(20),
//         width: size.width,
//         height: size.height,
//         child: Column(
//           children: [

//             Text(
//               "First Date",
//             ),
//             TextField(
//               controller: firstDateController,
//               keyboardType: TextInputType.none,
//               readOnly: true,
//               onTap: () async {
//                 dynamic tempDate = await showDatePicker(
//                   context: context,
//                   firstDate: DateTime.fromMillisecondsSinceEpoch(0),
//                   lastDate: DateTime.now(),
//                   barrierDismissible: false,
//                 );
            
//                 firstDateController.text = tempDate.toString();
//               },
//               decoration: const InputDecoration(
//                 contentPadding: EdgeInsets.all(15),
//               ),
//             ),

//             Text(
//               "last Date",
//             ),
//             TextField(
//               controller: secondDateController,
//               keyboardType: TextInputType.none,
//               readOnly: true,
//               onTap: () async {
//                 dynamic tempDate = await showDatePicker(
//                   context: context,
//                   firstDate: DateTime.fromMillisecondsSinceEpoch(0),
//                   lastDate: DateTime.now(),
//                   barrierDismissible: false,
//                 );
            
//                 secondDateController.text = tempDate.toString();
//               },
//               decoration: const InputDecoration(
//                 contentPadding: EdgeInsets.all(15),
//               ),
//             ),


//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) {
//                       List <String> getDays = getDifferenceWithWeekends(DateTime.parse(firstDateController.text), DateTime.parse(secondDateController.text));
//                       return Scaffold(
//                         body: Padding(
//                           padding: const EdgeInsets.all(30),
//                           child: Text(
//                             getDays.toString(),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//               child: Text("Cari"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }