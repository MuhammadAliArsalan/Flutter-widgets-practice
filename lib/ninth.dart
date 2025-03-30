import "package:flutter/material.dart";

void main() => runApp(const CardExamples());

class CardExamples extends StatelessWidget {
  const CardExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Text("Cards in Flutter",
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.yellowAccent,
                      decorationThickness: 2.0)),
              centerTitle: true,
              backgroundColor: Colors.pinkAccent),
          body: Center(
              child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: 300,
                    height: 500,
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/gfg.png'),
                              radius: 100,
                            ),
                            SizedBox(height: 10.0),
                            Text("Geeks for Geeks",
                                style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.green,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2.0,
                                    decorationColor: Colors.grey)),
                            SizedBox(height: 10.0),
                            Text(
                                "GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles!",
                                style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.lightGreen,
                                    fontStyle: FontStyle.italic)),
                            SizedBox(
                              height: 10.0,
                            ),
                            SizedBox(
                                height:50,
                                width: 120,
                                child: ElevatedButton(
                                    onPressed: (){print("Visite me");},
                                    style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.black,
                                        backgroundColor: Colors.yellowAccent,
                                        // padding: EdgeInsets.symmetric(
                                        //     horizontal: 25, vertical: 10),
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        elevation: 5,
                                        ),
                                    child: Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.touch_app),
                                            Text("Visit Me")
                                          ],
                                        ))))
                          ],
                        )),
                  )))),
    );
  }
}
