import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelin/firebase_options.dart';
import 'package:travelin/view/getStarted/get_started.dart';
import 'package:travelin/view/history/history.dart';
import 'package:travelin/view/history/review.dart';
import 'package:travelin/view/history/successReview/sent_review.dart';
import 'package:travelin/view/history/success_review.dart';
import 'package:travelin/view/signUp/sign_up.dart';

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

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return const History();
  }
}