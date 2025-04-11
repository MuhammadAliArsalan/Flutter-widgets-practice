import 'package:flutter/material.dart';
import 'package:my_app/screens/firstScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/first': (context) => FirstScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Multi Screen",
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Times New Roman',
            decoration: TextDecoration.underline,
            decorationThickness: 2.0,
            decorationColor: Colors.red,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Welcome to Home Screen",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Times New Roman',
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              child: Text("Go to Next Screen"),
            ),
          ],
        ),
      ),
    );
  }
}