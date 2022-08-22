import 'package:flutter/material.dart';


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Vaccine"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
            decoration: InputDecoration(
              hintText: "Pincode",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'result');
                },
                child: Text('Search',style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),

    );
  }
}


