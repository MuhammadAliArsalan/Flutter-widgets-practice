import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Using Stack",
                  style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              elevation: 100,
              backgroundColor: Colors.indigo,
              centerTitle: true,
            ),
            body: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 35, 142, 142),
                  border: Border.all(color:Colors.deepOrangeAccent,width: 3)
                  
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 250,       
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color:Colors.lightBlueAccent,width: 3)
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: 180,
                      height: 180,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 35, 142, 142),
                          border: Border.all(color: Colors.purple,width: 3),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Colors.black.withAlpha(0),
                                Colors.black12,
                                Colors.black45
                              ]
                            )
                        ),
                        child:Text(
                          "Bottom appears first",
                          style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),
                        )
                    )
                  ],
                )
              )
            ) 
          );
  }
}
