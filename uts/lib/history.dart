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
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Transaction History',
              style: TextStyle(color: Colors.black, fontSize: 17.0)),
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Pending',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.black),
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
              color: Colors.grey[300], // Warna latar belakang Tab 1
              child: Center(
                child: Text('All transaction is Completed!'),
              ),
            ),
            // Isi dari Tab 2
            Container(
              color: Colors.grey[300], // Warna latar belakang Tab 2
              child: Center(
                child: Text('All transaction is Completed!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
