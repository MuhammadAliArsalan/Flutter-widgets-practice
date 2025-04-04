import "package:flutter/material.dart";

void main()=>runApp(ListViewBuilder());

class ListViewBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("ListView Builder Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black,

        ),
        body: SizedBox(
          height: double.infinity,
          width:380,
          child: Padding(padding: EdgeInsets.all(10),
          child: ListView.builder(itemCount: 10,itemBuilder:(context,int index){

            /*ListView.builder() dynamically creates a scrollable list.
             itemCount: 10 → Generates 10 items (from index 0 to index 9).
            itemBuilder creates each item dynamically. */
            
            return ListTile(
              leading: Icon(Icons.person),
              title: Text("Person $index",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              subtitle: Text("This is the subtitle for person $index",style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic)),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                print("Tapped on person $index");
              },

          );
          }
          ,
        ),
      ),
    )
      )
    );
  }

}
