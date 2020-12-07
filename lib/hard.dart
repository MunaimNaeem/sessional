import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:math';
import 'dart:io';
import 'option_guss.dart';
import 'dart:async';
guss correct=guss();
class hard extends StatefulWidget {
  @override
  _hardState createState() => _hardState();
}

class _hardState extends State<hard> {
  int rold=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hard Level"),
    ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.green,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage('https://drive.google.com/file/d/18SC4KsiMOCZxzIDaqKXTsHTPlH8lkOnt/view?usp=sharing',
                        ),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Text(
                      'MUNAIM NAEEM', style: TextStyle(fontSize: 22, color: Colors.white,
                    ),
                    ),
                    Text(
                      'Munaimnaeem@gmail.com', style: TextStyle(fontSize: 20, color: Colors.white,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('PROFILE', style: TextStyle(fontSize: 20,
              ),
              ),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('BACK TO HOME', style: TextStyle(fontSize: 20,
              ),
              ),
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('EXIT', style: TextStyle(fontSize: 20,
              ),
              ),
              onTap: (){
                exit(0);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ROLE DICE",style: TextStyle(fontSize: 50,color: Colors.white, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
              ),
              height: 200,
              width: 200,
              child:FlatButton(onPressed: (){
                setState(() {
                  rold=Random().nextInt(5)+1;
                  correct.get_correct(rold);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>guss()));
                });
              },
                child:Image(image: AssetImage('assets/dice$rold.png')),
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}