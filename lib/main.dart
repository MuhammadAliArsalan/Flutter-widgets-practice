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
            appBar: AppBar(
              title: Text("HOMEPAGE",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                )
            ),
              backgroundColor: Colors.green,
              elevation: 80,
              centerTitle: true,
            ),
            body: Center(
              child: Container(
                  width: 300,
                  height: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      border: Border.all(color: Colors.black, width: 5),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Welcome to PC Parts Picker",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
            )));
  }
}