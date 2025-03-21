import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Notes App",
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              centerTitle: true,
              elevation: 90,
              backgroundColor: const Color.fromARGB(255, 187, 133, 197),
            ),
            body: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.grey,
                ),
                Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      width: 100,
                      height: 160,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Study DSA",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                Positioned(
                    top: 50,
                    right: 30,
                    child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("Make LMS project",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Positioned(
                    top: 240,
                    left: 20,
                    child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10),
                          ),
                          color: Colors.deepOrange,
                        ),
                        child: Text(
                          "Make Ecommerce APIs",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                Positioned(
                    top: 400,
                    left: 20,
                    child: Row(
                      children: [
                        Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment(0, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10),
                                right: Radius.circular(10),
                              ),
                              color: Colors.greenAccent,
                            ),
                            child: Text(
                              "Study AI",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        SizedBox(width: 40),
                        Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment(0, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10),
                                right: Radius.circular(10),
                              ),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Text(
                              "Study Flutter",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                    ))
              ],
            )));
  }
}
