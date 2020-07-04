import 'package:flutter/material.dart';


class AvaterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.elcomercio.com/files/article_main/uploads/2019/03/19/5c91511f3d867.jpeg'),
              radius: 23.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JR'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/original.gif'), 
          image: NetworkImage('https://media.vandalsports.com/i/640x360/5-2018/2018517103857_1.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          ),
      ),
    );
  }
}