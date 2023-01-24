
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_example/Json%20inside%20model%20classes/user.dart';

class jsoninside extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return jsoninsidestate();
  }
}

class jsoninsidestate extends State<jsoninside>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Inside Model Class"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name:-${user.name}'),
            Text('Email:-${user.email}'),
            Text('Name:-${person.name}'),
            Text('Email:-${person.email}'),

          ],
        ),

      ),
    );
  }
}

//  JSON → object
String jsonString = '{"name":"savani","email":"savani@hyvikk.com"}';
Map<String, dynamic> userMap = jsonDecode(jsonString);
var user = User.fromJson(userMap);


//  Object → JSON
User person = User('keyur','keyur@hyvikk.com');
Map<String, dynamic> map = person.toJson();
String rawJson = jsonEncode(map);
