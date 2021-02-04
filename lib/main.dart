import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(28.0),
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                      'https://media.gq-magazine.co.uk/photos/5fca181cea319833403830d4/master/w_2121,c_limit/04112020_Watches_09.jpg')),
              Stack(
                alignment: Alignment.bottomCenter,
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.00),
                          topRight: Radius.circular(50.00),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Blancpain',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 26),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            ' £11,900',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Watch of the collection: It was in 1953 that Blancpain unveiled what it bills as the first “modern” diving watch. The Fifty Fathoms has since been made available in as many as 100 variations, with the latest being the Bathyscaphe Mokarran',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: -30,
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
