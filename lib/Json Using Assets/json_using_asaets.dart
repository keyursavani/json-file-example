import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class jsonassets extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return  jsonassetsstate();
  }
}

class jsonassetsstate extends State<jsonassets>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Data Using Assets"),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/assets/data.json"),
        builder: (context ,snapshot){
          var mydata = json.decode(snapshot.data.toString());
          if (mydata == null){
            return Center(
              child: Text("Loading" ,style: TextStyle(
                fontSize: 25,
              ),
              ),
            );
          }
          else{
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Index:- ${mydata["items"][0]["index"]}'),
                  SizedBox(height: 10),
                  Text('Name:- ${mydata["items"][1]["name"]}'),
                  SizedBox(height: 10),
                  Text('Email:- ${mydata["items"][2]["email"]}'),
                  SizedBox(height: 10),
                  Text('Number:-${mydata["items"][3]["number"]}'),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}