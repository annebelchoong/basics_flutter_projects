import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
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
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent[400],
        elevation: 8.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //trigger the build function to rerun
          setState(() {
            ninjaLevel+=1;
          });
        },
        backgroundColor: Colors.pinkAccent[400],
        child: Icon(
          Icons.add,
          color: Colors.amber[200],
          size: 30.0,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.amber[200],
                radius: 65.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Profile-pic.jpg'),
                  radius: 60.0,
                ),
              ),
            ),

            Divider(
              height: 40.0,
              color: Colors.pinkAccent[200],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Adding a 10px box in between the widgets
            SizedBox(height: 10.0),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.pinkAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 6.0,
                    color: Color.fromARGB(150, 0, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Adding a 10px box in between the widgets
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.pinkAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 6.0,
                    color: Color.fromARGB(150, 0, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.amber[200],
                ),
                SizedBox(width: 10.0),
                Text(
                  'EMAIL ADDRESS',
                  style: TextStyle(
                    color: Colors.amber[200],
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 6.0,
                        color: Color.fromARGB(150, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'chun.li@thenetninja.com.my',
              style: TextStyle(
                color: Colors.pinkAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 6.0,
                    color: Color.fromARGB(150, 0, 0, 0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}



