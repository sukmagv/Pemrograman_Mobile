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
  final _inputUser = TextEditingController();
  double kelvin = 0.0;
  double reamur = 0.0;

  var listItem = ["Kelvin", "Reamur"];
  String newValue = "Kelvin";
  double _result = 0;

  final listViewItem = <String>[];

  void convertTemperature() {
    final userInput = double.tryParse(_inputUser.text) ?? 0.0;

    setState(() {
      if (newValue == "Kelvin") {
        _result = userInput + 273;
      } else {
        _result = (4 / 5) * userInput;
      }
    });

    listViewItem.add("$newValue : $_result");
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
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: newValue,
                onChanged: (changeValue) {
                  setState(() {
                    newValue = changeValue.toString();
                  });
                },
              ),
              Column(
                children: [
                  const Text(
                    'Hasil',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Text(
                    _result.toStringAsFixed(2),
                    style: const TextStyle(
                        fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: const Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: listViewItem.length,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(listViewItem[index]),
                        );
                      })),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  const Result({
    required Key key,
    required this.result,
  }) : super(key: key);
  final double result;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hasil",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            result.toStringAsFixed(1),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
    // );
  }
}
