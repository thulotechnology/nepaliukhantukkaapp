import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({ Key? key }) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('About Us'),centerTitle: true,backgroundColor: Color(0xffe0a36e),),
      body: SafeArea(child: Column(children: [
        Container(
          padding: const EdgeInsets.only(top:20),
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
              "images/shape1.jpg"),
          fit: BoxFit.cover,
        )),
          child: Column
          
          (
            
            children: [
            const CircleAvatar(
                    radius: 45.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                        'images/bookbajar.png'),
                  ),
                  
                  const SizedBox(height: 10,),
                  Container(
                    width: 300,
                    height:100,
                    child: const Text('Welcome to BookBazaar suppliers, we provide digital solution. we are dedicated to providing you the best apps, with a focus on dependability customer service\n ',textAlign: TextAlign.center,style: TextStyle(color:Colors.white,fontSize: 17),)),
                  
                  

          ],),
        ),
        const Divider(thickness: 5,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              
              
              
              Card(
                
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: const ListTile(title: Text('Share App',style:TextStyle(fontWeight: FontWeight.bold)),
                leading:Icon(Icons.share,color: Colors.green,)),
              ),
                
              Card(
                
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(title: const Text('Like us on Facebook',style:TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(Icons.thumb_up,color:Colors.blue),
                onTap: () => launch('https://www.facebook.com/thulotechnology')
                ),
              ),
                
              Card(
                
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(title:const  Text('Visit our website',style:TextStyle(fontWeight: FontWeight.bold)),
                leading:const Icon(Icons.web_stories,color: Colors.deepPurple,),
                onTap: () => launch('https://booksbazaar.com.np/')
                ),
              ),
              Card(
                
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(title:const  Text('Read the policy',style:TextStyle(fontWeight: FontWeight.bold)),
                leading:const Icon(Icons.policy,color: Colors.deepOrange),
                onTap: () => launch('https://booksbazaar.com.np/')
                ),
              ),
            ],),
        ),
      ],)
      ),
      
    );
  }
}