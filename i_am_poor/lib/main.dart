import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String path = "assets/images/broken_pig.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade300,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Container(
          color: Colors.amber.shade800,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      path = 'images/diamond.png';
                    });
                  },
                  child: Text(
                    "I am rich",
                    style: TextStyle(fontSize: 24),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      path = 'assets/images/broken_pig.jpg';
                    });
                  },
                  child: Text(
                    "I am poor",
                    style: TextStyle(fontSize: 24),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image(
          image: AssetImage(path),
        ),
      )),
    );
  }
}
