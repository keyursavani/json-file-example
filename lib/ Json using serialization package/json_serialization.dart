import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_example/%20Json%20using%20serialization%20package/user.dart';

class jsonserialization extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return jsonserializationstate();
  }
}

class jsonserializationstate extends State<jsonserialization>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text("Json Serialization Package"),
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
// De-Serialization
// JSON → object
// Json --------->   Map     ------>  Object
//       (Decode)
String jsonString = '{"name":"savani1","email":"savani1@gmail.com"}';
Map<String, dynamic> userMap = jsonDecode(jsonString);
var user = User.fromJson(userMap);

// Serialization
//  Object → JSON
// Object -------> Map     ------>  Json(encode)
// (class)    ("name":"keyur")
User person = User('keyur2','keyur2@hyvikk.com');
Map<String, dynamic> map = person.toJson();
String rawJson = jsonEncode(map);