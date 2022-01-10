// import 'package:flutter/material.dart';
// import 'package:nepali_ukhan_tukka/screens/homepage1.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(primarySwatch: Colors.blue),
//         title: "Ukhaan Tukka",
//         home: const HomePage1());
//   }
// }

import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "Listview.builder",
      home: ListViewBuilder()
      
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("ListView.builder"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            leading: const  Icon(Icons.list),
            trailing:const  Icon(Icons.delete),
            title:Text("List item $index")
            );
        }
        ),
    );
  }
}