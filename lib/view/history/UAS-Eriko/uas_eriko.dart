import 'package:flutter/material.dart';

class LeapYearScreen extends StatefulWidget {
  @override
  _LeapYearScreenState createState() => _LeapYearScreenState();
}

class _LeapYearScreenState extends State<LeapYearScreen> {
  TextEditingController startYearController = TextEditingController();
  TextEditingController endYearController = TextEditingController();
  List<int> leapYears = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leap Year Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: startYearController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Start Year',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: endYearController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'End Year',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateLeapYears();
              },
              child: Text('Find Leap Years'),
            ),
            SizedBox(height: 20),
            if (leapYears.isNotEmpty) ...[
              Text(
                'Leap Years:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                leapYears.join(', '),
                style: TextStyle(fontSize: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void calculateLeapYears() {
    int startYear = int.tryParse(startYearController.text) ?? 0;
    int endYear = int.tryParse(endYearController.text) ?? 0;
    List<int> result = [];

    if (startYear > 0 && endYear > 0 && startYear <= endYear) {
      for (int year = startYear; year <= endYear; year++) {
        if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
          result.add(year);
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid input. Please enter valid years.'),
        ),
      );
    }

    setState(() {
      leapYears = result;
    });
  }
}