import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var emailText = TextEditingController();
  var nameText = TextEditingController();
  var phonetext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title:
                  Text("TextField in Flutter", style: TextStyle(fontSize: 20)),
              centerTitle: true,
              backgroundColor: Colors.yellow,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 100,
                    child: TextField(
                      controller: nameText,
                      obscureText: true,
                      obscuringCharacter: '*',
                      // enabled: false, //This property disables the TextField, making it unresponsive to user input.
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            //This defines the border when the TextField is focused (i.e., when the user taps on it to enter text).
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                              //This defines the border when the TextField is enabled but not focused. The blue border appears when the user has not clicked on the TextField.
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 2.0)),
                          // disabledBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(20),
                          //     borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                          // )
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2.0)),
                          labelText: "Password",
                          hintText: "Enter your password",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ) //This adds an icon to the TextField.

                          ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      width: 200,
                      height: 100,
                      child: TextField(
                        controller: emailText,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 2.0)),
                            labelText: "Email",
                            hintText: "Enter your email",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ) //This adds an icon to the TextField.
                            ),
                      )),
                  SizedBox(height: 10),
                  Container(
                    width: 200,
                    height: 100,
                    child: TextField(
                      controller: phonetext,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2.0)),
                          labelText: "Phone",
                          hintText: "Enter your phone number",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ) //This adds an icon to the TextField.

                          ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String name = nameText.text;
                        String email = emailText.text;

                        if (phonetext.text.isNotEmpty) {
                          int phone = int.tryParse(phonetext.text) ?? 0;
                          print("Name: $name, Email: $email, Phone: $phone");
                        } else {
                          print("Phone number is empty!");
                        }
                      },
                      child: Text("Login"))
                ],
              ),
            )));
  }
}
