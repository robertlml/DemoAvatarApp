
import  'package:flutter/material.dart';
 

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(        
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding :EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://ichef.bbci.co.uk/news/660/cpsprodpb/A85B/production/_104299034_tv050571340.jpg'),
              radius: 20.0,                    
            ),
          ),

          Container(
            padding: EdgeInsets.only(right:2.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.greenAccent,             
            ),       
          )
        ],
      ), 
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://static.comicvine.com/uploads/original/11132/111326990/5926617-8693560337-48875.png'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )
      ),    
      );
  }
}