import 'package:flutter/material.dart';

// void main() {
//   runApp(const History());
// }

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HistoryPage(),
    );
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Transaction History',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Pending',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            labelStyle: TextStyle(fontSize: 15.0),
            indicatorColor: Colors.red,
          ),
        ),
        body: TabBarView(
          children: [
            // Isi dari Tab 1
            Container(
              color: Colors.grey[200], // Warna latar belakang Tab 1
              child: Center(
                  child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'All transaction is completed!\n',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Mulish', // Ukuran teks untuk baris pertama
                        fontWeight:
                            FontWeight.bold, // Bobot teks untuk baris pertama
                        color: Colors.black, // Warna teks untuk baris pertama
                      ),
                    ),
                    TextSpan(
                      text: 'Any pending transaction will appear in this page',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Mulish', // Ukuran teks untuk baris kedua
                        fontWeight:
                            FontWeight.normal, // Bobot teks untuk baris kedua
                        color: Colors.black, // Warna teks untuk baris kedua
                      ),
                    ),
                  ],
                ),
              )),
            ),
            // Isi dari Tab 2
            Container(
              color: Colors.grey[200], // Warna latar belakang Tab 2
              child: Center(
                  child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'All transaction is completed!\n',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Mulish', // Ukuran teks untuk baris pertama
                        fontWeight:
                            FontWeight.bold, // Bobot teks untuk baris pertama
                        color: Colors.black, // Warna teks untuk baris pertama
                      ),
                    ),
                    TextSpan(
                      text: 'Any done transaction will appear in this page',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Mulish', // Ukuran teks untuk baris kedua
                        fontWeight:
                            FontWeight.normal, // Bobot teks untuk baris kedua
                        color: Colors.black, // Warna teks untuk baris kedua
                      ),
                    ),
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
