import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey[300], // Warna latar belakang Container
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                              top: 70, bottom: 20, left: 20, right: 10),
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 50,
                            height: 50,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.white,
                        margin: const EdgeInsets.only(
                            top: 70, bottom: 20, left: 10),
                        padding: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.confirmation_num_outlined,
                          size: 40,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        margin: const EdgeInsets.only(
                            top: 70, bottom: 20, left: 10, right: 20),
                        padding: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.star,
                          size: 40,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[700],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 170,
                margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 22, bottom: 22, left: 15, right: 15),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Hi, SOFYAN NOOR ARIEF, S.ST, M.KOM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 80,
                        width: 150,
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 23, bottom: 5, right: 60),
                              child: const Text(
                                "Your Balance",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                  bottom: 15,
                                  left: 10,
                                ),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Rp 10.184 ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_rounded,
                                      size: 15,
                                      color: Colors.red,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 80,
                        width: 150,
                        // margin: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 23, bottom: 5, left: 10, right: 60),
                              child: const Text(
                                "Bonus Balance",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                  bottom: 15,
                                  left: 10,
                                ),
                                child: Row(
                                  children: const [
                                    Text(
                                      textAlign: TextAlign.start,
                                      "0 ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_rounded,
                                      size: 15,
                                      color: Colors.red,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.star, size: 40),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "TopUp",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.star, size: 40),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "TopUp",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.star, size: 40),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "TopUp",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.star, size: 40),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "TopUp",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
