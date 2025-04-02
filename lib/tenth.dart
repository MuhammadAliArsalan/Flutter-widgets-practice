import "package:flutter/material.dart";

void main()=>runApp(ListViewExample());

class ListViewExample extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Padding(padding:EdgeInsets.all(5),
          child: ListView(
            scrollDirection: Axis.vertical,
           // reverse: true,  // This property reverses the order of the items in the list.   
            children: [
              ListTile(  /*ListTile is a built-in Flutter widget used to create structured rows with leading/trailing icons,
               titles, and subtitles. It is commonly used inside a ListView to display lists in a neat and consistent format. */
                leading: Icon(Icons.home),
                title: Text("Home"),
                subtitle: Text("This is the home page"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                subtitle: Text("This is the settings page"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.contact_page),
                title: Text("Contact"),
                subtitle: Text("This is the contact page"),
                trailing: Icon(Icons.arrow_forward),
              ),
              Text("Item1",style: TextStyle(fontFamily: 'Times New Roman',fontSize: 20))
              
            ],
          ),),
          )
      ),
    );
  }
}

  
  




  
