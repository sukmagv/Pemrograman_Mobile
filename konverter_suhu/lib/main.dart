import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _inputUser = new TextEditingController();
  double kelvin = 0.0;
  double reamur = 0.0;

  void convertTemperature() {
    double userInput = double.tryParse(_inputUser.text) ?? 0.0;
    // Lakukan konversi ke Kelvin dan Reamor
    double kelvinTemperature = userInput + 273.15;
    double reamurTemperature = userInput * 0.8;

    setState(() {
      kelvin = kelvinTemperature;
      reamur = reamurTemperature;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konversi Suhu"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                  controller: _inputUser,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Suhu Dalam Celcius',
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Suhu dalam Kelvin'),
                      Text(
                        kelvin.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Suhu dalam Reamur'),
                      Text(
                        reamur.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    child: ElevatedButton(
                      onPressed: () {
                        convertTemperature();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48.0),
                      ),
                      child: const Text('Konversi Suhu'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
