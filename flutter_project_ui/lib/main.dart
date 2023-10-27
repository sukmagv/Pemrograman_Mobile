import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(200, 200, 20, 20),
            title: const Text("MyApp"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'BERITA TERBARU',
                ),
                Tab(
                  text: 'PERTANDINGAN HARI INI',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SizedBox(
                width: 500,
                height: 300,
                child: Column(
                  children: [
                    Image.network(
                      'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8f381d19d9c8d246/60dc02d820a5380ed1a4489e/b21af15a62b1f217b7e68c5b183e50f8facb7109.jpg?auto=webp&format=pjpg&width=3840&quality=60',
                      width: 500,
                      height: 200,
                      fit: BoxFit.cover, // Mengatur tampilan gambar
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: const Text(
                        'Costa Mendekat Ke Palmaeiras', // Teks di bawah gambar
                        style: TextStyle(
                          fontSize: 20, // Ukuran teks
                          fontWeight: FontWeight.bold, // Ketebalan teks
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.purple,
                      alignment: Alignment.centerLeft,
                      // ignore: sort_child_properties_last
                      child: const Text(
                        'Transfer',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      height: 50.0,
                      width: 400.0,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3, // Ganti dengan jumlah item yang sesuai
                        itemBuilder: (context, index) {
                          const itemImage =
                              'https://static.bongda24h.vn/medias/standard/2019/4/7/costa.jpg';
                          const itemTitle =
                              'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat';
                          const itemDate = '20-08-2023';
                          return ListTile(
                            leading: Image.network(
                              itemImage,
                              // Atur lebar gambar sesuai keinginan
                              width: 250,
                              height: 250,
                              fit: BoxFit.cover, // Mengatur tampilan gambar
                            ),
                            title: const Text(
                              itemTitle,
                              style: TextStyle(
                                fontSize:
                                    12.0, // Atur ukuran font sesuai keinginan
                              ),
                            ),
                            subtitle: const Text(
                              itemDate,
                              style: TextStyle(
                                fontSize:
                                    12.0, // Atur ukuran font sesuai keinginan
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text('Konten Pertandingan Hari ini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
