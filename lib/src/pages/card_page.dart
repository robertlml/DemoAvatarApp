

import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
           SizedBox(height: 30.0),
          _cardTipo2(),
           SizedBox(height: 30.0),
          _cardTipo2(),
           SizedBox(height: 30.0),
          _cardTipo2(),
           SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );     
  }
  Widget _cardTipo1() {

     return Card(
        elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0) ),
       child: Column(
         children: <Widget>[
           ListTile (
             leading: Icon(Icons.album, color: Colors.blueAccent),
             title: Text('Titulo'),
             subtitle: Text('Subtitulo .........descripcion.......'),
             ),
             Row(
               mainAxisAlignment:  MainAxisAlignment.end,
               children: <Widget>[
                 FlatButton(
                   child: Text('Cancelar'),
                   onPressed: (){},
                 ),
                 FlatButton(
                   child: Text('OK'),
                   onPressed: (){},
                 )
               ],
             )
         ],
       ),
     );
   }

  Widget _cardTipo2() {

    final card =  Container(
     //clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
       
       FadeInImage(
         image: NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/09/30/e1/db/costanera.jpg'),
         placeholder: AssetImage('assets/jar-loading.gif'),
         fadeInDuration: Duration(milliseconds: 200),
         height: 300.0,
         fit: BoxFit.cover,
       ),
       
       //   Image(
       //     image: NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/09/30/e1/db/costanera.jpg'),
       //   ),
            Container(
            padding: EdgeInsets.all(10.0),
            child:Text('No tengo idea de q poner')
            )
        ],
      ),
      );
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
        color : Colors.black26,
        blurRadius: 10.0,
        spreadRadius: 2.0,
        offset: Offset(2.0,-10.0)
        )
      ]
      ),
     child: ClipRRect(
       borderRadius: BorderRadius.circular(30.0),
        child: card,
     )      
  );
  }


}