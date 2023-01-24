

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class jsoninline extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return jsoninlinestate();
  }
}
class jsoninlinestate extends State<jsoninline>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Josn Inline Example"),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Name:- ${user['name']}'),
           Text('Name:- ${user['name2']}'),
           Text('Name:- ${user['name3']}'),
           Text('Name:- ${user['name4']}'),
         ],
       )
     ),
   );
  }
}

String jsonString =
    '{"name":"keyur", '
    '"name2":"savani",'
    '"name3":"Keyur2"}';
Map<String, dynamic> user = jsonDecode(jsonString);
// final List<Map<String,Object>> _people = [
//   {
//     "name":"keyur",
//     "name2":"9099466922",
//   },
//   {
//     "name":"savani",
//     "name2":"9099465201",
//   },
//   {
//     "name":"keyur savani",
//     "name2":"9099460071",
//   },
//   {
//     "name":"xyz",
//     "name2":"9599460071",
//   },
//   {
//     "name":"abc",
//     "name2":"9979460071",
//   },
//   {
//     "name":"krs",
//     "name2":"7435460071",
//   },
// ];