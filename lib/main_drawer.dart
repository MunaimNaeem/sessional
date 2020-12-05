import 'package:flutter/material.dart';
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
                      image: DecorationImage(image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fnature%2F&psig=AOvVaw3TAi4R8VFkPp0cKM9ASuzl&ust=1607257530437000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKjjz_Xqtu0CFQAAAAAdAAAAABAD',
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
            leading: Icon(Icons.settings),
            title: Text('SETTINGS', style: TextStyle(fontSize: 20,
            ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('LOGOUT', style: TextStyle(fontSize: 20,
            ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
