import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyResult extends StatefulWidget {
  const MyResult({Key? key}) : super(key: key);



  @override
  State<MyResult> createState() => _MyResultState();
}

class _MyResultState extends State<MyResult> {

  var session=[];

  var listC=0;

  @override
  void initState() {
    print("results page open");
    getData();
    // TODO: implement initState
    super.initState();
  }

  getData() async{
    var url = Uri.parse(
        'https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByPin?pincode=380015&date=21-08-2022');
    var response = await http.get(url);



    var decode = jsonDecode( response.body);
    session = decode['sessions'];

    setState(() {
      listC = session .length ;
    });
    print( session );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Results"),
        ),
      body: Container(
        child: ListView.builder(
            itemCount: listC,
            itemBuilder: (BuildContext contex, int index){
              return Container(
                margin: EdgeInsets.only(top: 10,right: 20,left: 20) ,
                height: 200,
                child: Container(
                    margin: EdgeInsets.only(top: 10,right: 20,left: 20),

                  child: Card (
                    child:Column (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(session[index]['name']),
                        Text(session[index]['address']),
                        Text(session[index]['vaccine']),
                        Text(session[index]['fee_type'])


                      ],
                    ),
                  ),
                ),

              );
            }),
      ),
    );
  }
}
