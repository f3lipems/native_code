import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native Code',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _a = 0;
  int _b = 0;
  int _sum = 0;

  void _calcSum() {
    setState(() {
      _sum = _a + _b;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Native Code'),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(20),
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Soma... $_sum',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() {
                _a = int.tryParse(value) ?? 0;
              }),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() {
                _b = int.tryParse(value) ?? 0;
              }),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _calcSum,
              child: const Text('Somar'),
            ),
          ],
        )),
      ),
    );
  }
}
