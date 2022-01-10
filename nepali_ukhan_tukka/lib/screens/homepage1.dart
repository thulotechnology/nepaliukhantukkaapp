import 'package:flutter/material.dart';
import 'package:nepali_ukhan_tukka/screens/constant.dart';
import 'package:nepali_ukhan_tukka/screens/drawer.dart';
import 'package:nepali_ukhan_tukka/screens/ukhaan.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffe0a36e),
        title: const Text(
          "उखान टुक्का ",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  child: ListTile(
                    title: Text("Setting"),
                    leading: Icon(Icons.settings),
                  ),
                ),
                const PopupMenuItem<int>(
                  child: ListTile(
                    title: Text("Share"),
                    leading: Icon(Icons.share),
                  ),
                ),
                const PopupMenuItem<int>(
                  child: ListTile(
                    title: Text("Help"),
                    leading: Icon(Icons.help),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      drawer: const DrawerSlide(),
      body: SafeArea(
          child: Container(
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //   image: NetworkImage(
        //       "https://news.cgtn.com/news/2020-09-20/Spider-flower-The-flower-with-a-distinctive-display-TVYLozFKg0/img/9c42156e261a4d2282370c03fce43a0a/9c42156e261a4d2282370c03fce43a0a.jpeg"),
        //   fit: BoxFit.cover,
        // )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: ListData.allData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      color: Color(0xffe0a36e),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        // tileColor: Colors.red[400],
                        title: Text(
                          '${ListData.allData[index].startfrom} ',
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(
                          '${ListData.allData[index].startfrom} बाट आउने उखान र टुक्काहरु ',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UkhanTukka(
                                      title: ListData.allData[index].startfrom,
                                      datas: ListData.allData[index].azdata)));
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              }),
        ),
      )),
    );
  }
}
