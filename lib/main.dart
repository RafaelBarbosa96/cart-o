import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Layout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Cartão',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.card_giftcard,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Digital',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              Container(
                child: CircleAvatar(
                  maxRadius: 80,
                  minRadius: 80,
                  child: Image.asset(
                    "assets/images/img.png",
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Rafael Barbosa',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'Programador',
                      style: TextStyle(fontSize: 23),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Container(
                child: FlatButton(
                  child: Container(
                    height: 50,
                    width: 330,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green,
                    ),
                    child: Text(
                      'WhatsApp',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: IconButton(
                            alignment: Alignment.bottomCenter,
                            icon: FaIcon(
                              FontAwesomeIcons.phone,
                              size: 30,
                              color: Colors.green,
                            ),
                            onPressed: () {}),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: IconButton(
                            alignment: Alignment.bottomCenter,
                            icon: FaIcon(
                              FontAwesomeIcons.solidEnvelope,
                              size: 30,
                              color: Colors.blueAccent,
                            ),
                            onPressed: () {}),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: IconButton(
                            alignment: Alignment.bottomCenter,
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              size: 30,
                              color: Colors.red,
                            ),
                            onPressed: () {}),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: IconButton(
                            alignment: Alignment.bottomCenter,
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                              size: 30,
                              color: Colors.blueAccent,
                            ),
                            onPressed: () {}),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
