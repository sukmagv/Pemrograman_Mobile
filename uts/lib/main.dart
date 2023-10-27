import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Link Aja',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FlutterLogo(
                    size: 30.0,
                  ),
                  Text(
                    "Link Aja",
                    style: TextStyle(color: Colors.red, fontSize: 30.0),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 20.0,
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  height: 200,
                  width: 700,
                  alignment: Alignment.topLeft,
                  color: Colors.red[600],
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 0),
                        child: Text(
                          "Hi, SOFYAN NOOR ARIEF, S.ST, M.KOM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Container(
                          height: 100,
                          width: 150,
                          alignment: Alignment.centerLeft,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Text(
                                "Your Balance",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.0,
                                ),
                              ),
                              Text(
                                "Rp 10.184",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ))
                    ],
                  )),
            ],
          )),
    );
  }
}
