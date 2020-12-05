import 'main.dart';
import 'package:flutter/material.dart';
import 'dart:io';
class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About US"),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                minRadius: 10,
                maxRadius: 100,
                backgroundImage: AssetImage("assets/logo.png"),
              ),
              SizedBox(
                height: 30,
              ),

              Text('MNUMAIM NAEEM', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),
              Text('03023571424', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),
              Text('Munaimnaeem@gmail.com', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 20,),
              Text('https://github.com/MunaimNaeem/sessional', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            });
          },
          child: Icon(Icons.keyboard_arrow_down),
          backgroundColor: Colors.black,
        ) );
  }
}
