import "package:flutter/material.dart";

void main() {
  runApp(GridViewExample());
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  title: Text("GridView Example",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  centerTitle: true,
                  backgroundColor: Colors.lightBlue,
                  elevation: 5,
                  bottom: TabBar(
                    tabs: [
                    Tab(text: "Home", icon: Icon(Icons.home)),
                    Tab(text: "Favorite", icon: Icon(Icons.favorite)),
                    Tab(text: "Settings", icon: Icon(Icons.settings)),
                  ]
                  ),
                ),
                body: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            scrollDirection: Axis.horizontal,

                            // reverse: true,
                            children: [
                              Container(
                                color: Colors.lightGreen,
                                child: Center(
                                    child: Text(
                                  "Item 1",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Container(
                                color: Colors.lightBlue,
                                child: Center(
                                    child: Text(
                                  "Item 2",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Container(
                                color: Colors.lightGreen,
                                child: Center(
                                    child: Text(
                                  "Item 3",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Container(
                                color: Colors.lightBlue,
                                child: Center(
                                    child: Text(
                                  "Item 4",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Container(
                                color: Colors.lightGreen,
                                child: Center(
                                    child: Text(
                                  "Item 5",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Container(
                                color: Colors.lightBlue,
                                child: Center(
                                    child: Text(
                                  "Item 6",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ]))))));
  }
}
