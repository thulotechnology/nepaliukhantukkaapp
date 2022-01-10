import 'package:flutter/material.dart';

class UkhanTukka extends StatefulWidget {
  final String title;
  final List<String> datas;

  const UkhanTukka({required this.title, required this.datas});

  @override
  _UkhanTukkaState createState() => _UkhanTukkaState();
}

class _UkhanTukkaState extends State<UkhanTukka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('नेपाली  उखान र  टुक्का हरु'),
        centerTitle: true,
        backgroundColor: Color(0xffe0a36e),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '${widget.title}\n बाट सुरु हुने उखान र टुक्काहरु ',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(height: 2, thickness: 2),
                const SizedBox(
                  height: 20,
                ),
                ...widget.datas.map((ukhan) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: Color(0xffe0a36e),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ListTile(
                          title: Text(
                            ukhan,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          //tileColor: Colors.red.shade400,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
