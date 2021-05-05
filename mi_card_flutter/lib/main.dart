import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Container(),
                flex: 3,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('images/photopro.jpg'),
                    ),
                    Text(
                      'Robin Tourné',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'KaushanScript'),
                    ),
                    Text(
                      'ETUDIANT - DEVELOPPEUR WEB - FREELANCE',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 3,
                        color: Colors.teal.shade100,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          child: SizedBox(
                            height: 20,
                            child: Divider(
                              color: Colors.teal.shade100,
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: ListTile(
                            leading: Icon(Icons.phone, color: Colors.teal),
                            title: Text(
                              '+33 6 29 27 72 29',
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 3,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SourceSansPro',
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: ListTile(
                            leading: Icon(
                              Icons.mail,
                              color: Colors.teal,
                            ),
                            title: Text(
                              'robin.tourne@gmail.com',
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 3,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SourceSansPro',
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(),
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LayoutChallenge extends StatelessWidget {
  const LayoutChallenge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
              Container(
                color: Colors.blue,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
