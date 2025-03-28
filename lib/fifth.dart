import 'package:flutter/material.dart';

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
            title: Text(
              "Images in Flutter",
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            elevation: 4,
            backgroundColor: Colors.yellow,
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Container(
                width: 250,
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 3.0)),
                child: Image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/dj5vvjv9q/image/upload/v1742581357/ez66lfwvmmpjy7zhwexo.png',
                    ),
                    fit: BoxFit.cover),
              ),
              SizedBox(height: 30),
              Container(
                  width: 250,
                  height: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 4.0)),
                  child: Image(
                    image: AssetImage(
                        'assets/alphine passive black cooling fan.png'),
                    fit: BoxFit.cover,
                  )),
              SizedBox(height: 30),
              Container(
                  width: 250,
                  height: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 4)),
                  child: Image(
                    image: AssetImage(
                        'assets/Cisco_Catalyst_ 9200.png'),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                          child: Text("Image not found!",
                              style: TextStyle(color: Colors.red)));
                    },
                  ))
            ],
          )),
    );
  }
}
