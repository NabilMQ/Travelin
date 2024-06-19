// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:travelin/firebase_options.dart';


// Future <void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MainApp());
// }
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {

//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);

//     SystemChrome.setEnabledSystemUIMode(
//       SystemUiMode.immersive,
//       overlays: [

//       ],
//     );

//     SystemChrome.setSystemUIChangeCallback((systemOverlaysAreVisible) async {
//       await Future.delayed(const Duration(seconds: 1));
//       SystemChrome.restoreSystemUIOverlays();
//     });

//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Main(),
//     );
//   }
// }

// class Main extends StatefulWidget {
//   const Main({ super.key });

//   @override
//   State <Main> createState() => _MainState();
// }

// class _MainState extends State<Main> {
//   @override
//   Widget build(BuildContext context) {
//     return const GetStarted();
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Number Checker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeCheckerPage(),
    );
  }
}

class PrimeCheckerPage extends StatefulWidget {
  @override
  _PrimeCheckerPageState createState() => _PrimeCheckerPageState();
}

class _PrimeCheckerPageState extends State<PrimeCheckerPage> {
  final _startController = TextEditingController();
  final _endController = TextEditingController();
  List<int> _primeNumbers = [];

  bool isPrime(int number) {
    if (number <= 1) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  void findPrimesInRange(int start, int end) {
    List<int> primes = [];
    for (int i = start; i <= end; i++) {
      if (isPrime(i)) {
        primes.add(i);
      }
    }
    setState(() {
      _primeNumbers = primes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prime Number Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _startController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Start Number'),
            ),
            TextField(
              controller: _endController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'End Number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int start = int.parse(_startController.text);
                int end = int.parse(_endController.text);
                findPrimesInRange(start, end);
              },
              child: Text('Find Prime Numbers'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _primeNumbers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_primeNumbers[index].toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _startController.dispose();
    _endController.dispose();
    super.dispose();
  }
}
