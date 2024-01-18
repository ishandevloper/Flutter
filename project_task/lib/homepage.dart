import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();
  List<String> calculationHistory = [];
  String quote = '';

  @override
  void initState() {
    super.initState();
    fetchQuote(); // Fetch a quote when the widget is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Quote of the Day:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('$quote',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter First Number'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Second Number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculate();
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: ${calculateResult()}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Calculation History:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: calculationHistory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(calculationHistory[index]),
                  );
                },
              ),
            ),],
        ),
      ),
    );}

  void calculate() {
    if (_firstNumberController.text.isNotEmpty &&
        _secondNumberController.text.isNotEmpty) {
      int firstNumber = int.parse(_firstNumberController.text);
      int secondNumber = int.parse(_secondNumberController.text);
      int result = firstNumber + secondNumber;

      String calculation = '$firstNumber + $secondNumber = $result';

      setState(() {
        calculationHistory.add(calculation);
      });
    }
  }

  String calculateResult() {
    if (_firstNumberController.text.isNotEmpty &&
        _secondNumberController.text.isNotEmpty) {
      int firstNumber = int.parse(_firstNumberController.text);
      int secondNumber = int.parse(_secondNumberController.text);
      int result = firstNumber + secondNumber;

      return result.toString();
    } else {
      return 'N/A';
    }
  }

  Future<void> fetchQuote() async {
    final response =
        await http.get(Uri.parse('https://zenquotes.io/api/random'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final quoteText = jsonData[0]['q'];
      setState(() {
        quote = quoteText;
      });
    } else {
      print('Failed to load quote. Status code: ${response.statusCode}');
    }
  }
}
