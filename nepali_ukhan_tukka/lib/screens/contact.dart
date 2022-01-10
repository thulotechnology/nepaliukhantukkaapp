import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
        centerTitle: true,
        backgroundColor: Color(0xffe0a36e),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Color(0xffe0a36e),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red[400],
                            radius: 108,
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "images/bookbajar.png"),
                              //NetworkImage
                              radius: 100,
                            ), //CircleAvatar
                          ), //CirclAvatar
                          const SizedBox(
                            height: 40,
                          ), //SizedBox
                          const Text(
                            'Books Bazaar',
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          const Text(
                            'Pokhara, Nepal',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'booksbazaar.com.np',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'info@booksbazaar.com',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            ' +977 9856004751',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                        ],
                      ), //Column
                    ), //Padding
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}