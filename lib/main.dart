import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Text('Pokémon Card'),
        ),
        backgroundColor: Colors.lightGreen[700],
        body: SafeArea(
          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Chikorita',
                    style: TextStyle(
                      fontFamily: '',
                      color: Colors.white,
                      fontSize: 30.0,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 5,
                  ),
                ),
                child: Image(
                  width: 300,
                  image: AssetImage('images/chikorita.jpg'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.chevron_right, size: 40.0),
                  title: Text(
                    'Mysterious Powder - Flip a coin. if heads, the Defending Pokémon is Asleep and Confused. If tails, the Defending Pokémon is Asleep.',
                    style: TextStyle(
                      fontFamily: '',
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 350.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.filter_vintage,
                  ),
                  title: Text(
                      'Leaf Tackle - Flip 2 coins. This attack does 10 damage plus 10 more damage for each heads.'),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Icon(Icons.navigation),
            backgroundColor: Colors.black,
          ),
        ),
//        floatingActionButton: FloatingActionButton(onPressed: null),
      ),
    );
  }
}
