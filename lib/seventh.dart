import "package:flutter/material.dart";
import "dart:io";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int num1 = 34;
  int num2 = 66;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Buttons in Flutter",
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.yellowAccent,
                      fontWeight: FontWeight.bold,
                      decorationThickness: 2.0)),
              centerTitle: true,
              backgroundColor: Colors.lightBlueAccent,
            ),
            bottomNavigationBar: Container(
              height:90,
              width: double.infinity,
              
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                
              ),
              child: Center(child:Text("This is a bottom navigation bar",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily:'Times New Roman')))
              
            ),
            body: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.blueGrey,
                ),
                Positioned(
                    top: 20,
                    left: 20,
                    child: ElevatedButton(
                        onPressed: () {
                          print("My name is ALi");
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.yellowAccent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Colors.deepOrange, width: 2.0))),
                        child: Text("Press Me"))),
                Positioned(
                    top: 20,
                    left: 160,
                    child: TextButton(
                      onPressed: () {
                        int sum = num1 + num2;
                        print("The sum is $sum");
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.deepPurpleAccent,
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: Colors.deepOrange, width: 2.0),
                          )),
                      child: Text("Sum"),
                    )),
                Positioned(
                    top: 20,
                    left: 270,
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.black,
                          size: 30,
                        ))),
                Positioned(
                    top: 80,
                    left: 135,
                    child: OutlinedButton(
                      onPressed: () {
                        print("Item deleted");
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.redAccent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        textStyle: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      child: Text("Delete"),
                    ))
              ],
            )));
  }
}
