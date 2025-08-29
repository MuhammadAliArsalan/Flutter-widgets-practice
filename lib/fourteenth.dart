import "package:flutter/material.dart";


void main() {
  runApp(AnimatedContainerExample());
}

class AnimatedContainerExample extends StatefulWidget {
  
  const AnimatedContainerExample({Key? key}) : super(key: key);
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
  
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Animated Container Example",
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                    decorationColor: Colors.red,
                  )),
              centerTitle: true,
              backgroundColor: Colors.lightGreenAccent,
            ),
            body: Center(
                child: ColoredBox(
                    color: Colors.yellow,
                    child: SizedBox(
                        height: 400,
                        width: 400,
                        child: Center(
                            child: Column(
                          children: [
                            AnimatedContainer(
                                duration: Duration(seconds: 3),
                                curve: Curves.decelerate,
                                height: isBig ? 200 : 100,
                                width: isBig ? 200 : 100,
                                color: isBig ? Colors.red : Colors.blue,
                                padding: isBig
                                    ? EdgeInsets.all(20)
                                    : EdgeInsets.all(10),
                                child: Center(
                                    child: Text(
                                  "Cont.",
                                  style: isBig
                                      ? TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
                                      : TextStyle(fontSize: 20),
                                ))),
                            SizedBox(height: 20),
                            ElevatedButton(
                                onPressed: () => {
                                      setState(() {
                                        isBig = !isBig;
                                      })
                                    },
                                child: Text("Tap"))
                          ],
                        )))))));
  }
}
