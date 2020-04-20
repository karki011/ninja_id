import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard()
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      appBar: AppBar(
        title: Text('Ninja Card'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[600],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon((Icons.add)),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/originals/cc/59/0d/cc590d6cce856363118c1da7f974db72.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
                height: 60,
                color:Colors.grey[200]
            ),
            Center(
              child: Text(
                'NAME',
                style: TextStyle(
                    color: Colors.white,
                  letterSpacing: 2
                ),
              ),
            ),
            SizedBox(height:10.0),
            Center(
              child: Text(
                'SUBAHS KARKI',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height:10.0),
            Center(
              child: Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2
                ),
              ),
            ),
            SizedBox(height:10.0),
            Center(
              child: Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,

                ),
              ),
            ),
            SizedBox(height:10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text(
                  'skarki@uab.edu',
                  style: TextStyle(
                    color: Colors.amberAccent[700],
                    letterSpacing: 1.0,
                    fontSize: 18
                  ),
                )
              ],
            ),

          ],
        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
        ],
      ),
    );
  }
}


