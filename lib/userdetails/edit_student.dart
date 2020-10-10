import 'package:flutter/material.dart';
import 'package:fluttervit_app/userdetails/teacher.dart';

class addScreenS extends StatefulWidget {
  @override
  _addScreenSState createState() => _addScreenSState();
}

class _addScreenSState extends State<addScreenS> {

  final myController = TextEditingController();

  _printLatestValue() {
    print("${myController.text}");
  }
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit your details:', style: TextStyle( color: Colors.black),),
        backgroundColor: Colors.amber[200],
      ),
      backgroundColor: Colors.orange[200],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.all(Radius.circular(35.0))),
                  height: 170,
                  width: 150,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Name",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              )),
                        )),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Age: \n"
                    "Location: \n"
                    "Gender: \n", style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildkey("About me"),
                  buildkey("Grade"),
                  buildkey("Preferred mode of tutoring"),
                  buildkey("Need help in subjects"),
                  buildkey("Timings"),
                  buildkey("Email ID"),
                  buildkey("Ph number"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Card buildkey(String t) {
    return Card(
      color: Colors.blue[900],
      child: ListTile(
        dense: true,
        title: Text("$t: ",  style: TextStyle(color: Colors.white70, fontSize: 20)),
        // TextField instead of text to take in values
        // controller: myController,
        subtitle: TextField(controller: myController,),
      ),
    );
  }
}