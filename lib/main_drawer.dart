import 'package:flare_tutorial/main.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:show_drawer/show_drawer.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

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
    );
  }
}
