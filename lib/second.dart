import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("PC Parts Picker",
              style: TextStyle(
                  color: Colors.black54, fontFamily: 'Times New Roman')),
          backgroundColor: Colors.lightGreenAccent,
          elevation: 80,
          centerTitle: true,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: double.infinity,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(color: Colors.black, width: 5)),
                child: Text("Welcome To Hardware Store",
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'Times New Roman'))),

            SizedBox(height: 40),

            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Container(
                      width: 130,
                      height: 120,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.yellowAccent, Colors.red]),
                          color: Colors.amberAccent,
                          border: Border.all(color: Colors.black87, width: 5)),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Times New Roman'),
                      )),

                  SizedBox(width: 52),
                  
                  Container(
                      width: 130,
                      height: 120,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.yellow, // Dark Grey
                                Colors.red, // Medium Grey
                              ]),
                          color: Colors.amberAccent,
                          border: Border.all(color: Colors.black87, width: 5)),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Times New Roman'),
                      ))
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment(0, 0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 5),
                color: Colors.blueAccent,
              ),
              child: Text(
                "Email us at arsalanali873@gmail.com",
                style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
