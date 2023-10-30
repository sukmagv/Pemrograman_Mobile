import 'package:flutter/material.dart';
import 'package:uts/home.dart';
import 'package:uts/history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static const tabScreens = [
    Home(),
    History(),
  ];

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp.tabScreens[_tabIndex],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          mini: true,
          onPressed: () {},
          child: const Icon(
            Icons.qr_code,
            color: Colors.white,
            size: 30,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _tabIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            if (index > 1) return;
            setState(() => _tabIndex = index);
          },
        ),
      ),
    );
  }
}
