import 'package:flutter/material.dart';

void main() {
  runApp(const CardExamplesApp());
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Examples',
        style:TextStyle(fontFamily: 'Times New Roman',fontSize: 20,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amber,
        centerTitle: true,),
        
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(child: _SampleCard(cardName: 'Elevated Card')),
              Card.filled(child: _SampleCard(cardName: 'Filled Card')),
              Card.outlined(child: _SampleCard(cardName: 'Outlined Card')),
            ],
          ),
        ),
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {    //_SampleCard is a custom widget
  const _SampleCard({required this.cardName});
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 300, height: 130, child: Center(child: Text(cardName)));
  }
}