import 'package:flutter/material.dart';

void main() {
  runApp(listView());
}

class listView extends StatelessWidget {
  listView({super.key});

  List<String> leadingIcons = [
    "person",
    "person",
    "person",
    "person",
    "person",
    "person",
    "person",
    "person",
    "person",
    "person"
  ];
  List<String> titles = [
    "Person 1",
    "Person 2",
    "Person 3",
    "Person 4",
    "Person 5",
    "Person 6",
    "Person 7",
    "Person 8",
    "Person 9",
    "Person 10"
  ];

  List<String> subtitles = [
    "This is the subtitle for person 1",
    "This is the subtitle for person 2",
    "This is the subtitle for person 3",
    "This is the subtitle for person 4",
    "This is the subtitle for person 5",
    "This is the subtitle for person 6",
    "This is the subtitle for person 7",
    "This is the subtitle for person 8",
    "This is the subtitle for person 9",
    "This is the subtitle for person 10"
  ];

  List<String> trailingIcons = [
    "arrow_forward",
    "arrow_forward",
    "arrow_forward",
    "arrow_forward",
    "arrow_forward",
    "arrow_forward",
    "arrow_forward",
    "arrow_forward",
    "arrow_forward",
    "arrow_forward"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("ListView exmaples",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: SizedBox(
          height: double.infinity,
          width: 400,
          child: Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 2),
                  ),
                  child: ListView.builder(itemCount: titles.length,itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(leadingIcons[index] == "person"
                          ? Icons.person
                          : Icons.home),
                      title: Text(titles[index],
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 10)),
                      subtitle: Text(subtitles[index],
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              color: Colors.deepOrange)),
                      trailing: Icon(trailingIcons[index] == "arrow_forward"
                          ? Icons.arrow_forward
                          : Icons.arrow_back),
                      onTap: () => {
                        print("Tapped on ${titles[index]}"),
                      },
                    );
                  })))),
    ));
  }
}
