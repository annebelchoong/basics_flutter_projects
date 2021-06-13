import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    //home(properties)- specify what we gonna show on home screen when load
    //Scaffold is a widget(build in widget)  - wrapper to a few different widget
    //properties: Widget
    home: Home(),
  ));


//Custom stateless widget class
//Using stateless widget help to auto hot reload when there is a changes inside this class and also make the code more reusable
class Home extends StatelessWidget {
  //override - redefining the build widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.teal[400],
      ),
      //Padding widget is only for padding
      body: Row(
        children: [
          //Expanded widget on image is to contain the image
          Expanded(
            flex: 3,
              child: Image.asset('assets/wallpaper-1.jpg')
          ),
          Expanded(
            flex: 1, //the higher the number for portion, the bigger the space
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.redAccent,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.deepOrangeAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.orangeAccent,
              child: Text('3'),
            ),
          ),
        ],
      ),
      // Column(
      //   //For column, the main axis is top and down
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text('hello'),
      //         Text(' world'),
      //       ],
      //     ),
      //     Container(
      //         padding: EdgeInsets.all(40.0),
      //         color: Colors.redAccent,
      //         child: Text('one')
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40.0),
      //       color: Colors.deepOrangeAccent,
      //       child: Text('two'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40.0),
      //       color: Colors.orangeAccent,
      //       child: Text('three'),
      //     ),
      //   ],
      // ),
      // Row(
      //   //for row, the main axis is left to right
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   //A list of widgets
      //   children: [
      //     Text('hello world'),
      //     TextButton(
      //         onPressed: () {},
      //         style: TextButton.styleFrom(
      //          backgroundColor : Colors.redAccent,
      //           primary: Colors.white,
      //         ),
      //         child: Text('click me'),
      //     ),
      //     Container(
      //       color: Colors.deepPurple,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('inside container'),
      //     ),
      //   ],
      // ),
      // Padding(
      //   padding: EdgeInsets.all(90.0),
      //   child: Text('hello'),
      // ),
      //If the Container have a child, it will restrict itself to the size of the child widget
      //Use container when you want to use padding, margin, color
      // Container(
      //   //Padding is the inside space of the element, margin is the outside space of the element
      //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   margin: EdgeInsets.all(30.0),
      //   color: Colors.black45,
      //   child: Text('hello'),
      // ),
      // Center(
        //Always must have properties inside a widget
        //Using child because nesting inside another widget
        // child: IconButton(
        //   onPressed: () {
        //     print('you clicked me!');
        //   },
        //   icon: Icon(Icons.alternate_email),
        //   color: Colors.redAccent,
        // )
        // ElevatedButton.icon(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.mail
        //     ),
        //     label: Text('Mail me'),
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.redAccent,
        //     ),
        // )
        // ElevatedButton( //or TextButton(same as FlatButton)
        //   onPressed: () {
        //     print('you clicked me!');
        //   },
        //   child: Text('click me'),
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.pink,
        //     onPrimary: Colors.white,
        //   )
        // ),
        // Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.pink[900],
        //   size: 50.0,
        // ),
          // image: NetworkImage('https://i.pinimg.com/564x/65/dd/36/65dd36d1e531b30966edd1e5a5d0787a.jpg'), or Image.network()
          // image: AssetImage('assets/wallpaper3.jpg'), or Image.asset(name)
      // ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.teal[400],
        onPressed: (){},
      ),
    );
  }
}


