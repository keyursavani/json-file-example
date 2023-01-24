
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class jsonexample extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return jsonexamplestate();
  }
}

class jsonexamplestate extends State<jsonexample>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Json Example"),
     ),
     body: Center(
       child: FutureBuilder(
         builder: (context ,snapshot){
           var showdata = json.decode(snapshot.data.toString());
           return ListView.builder(
               itemBuilder: (BuildContext context ,int index){
                return Card(
                  child: ListTile(
                    title: Text(showdata[index]['username']),
                    subtitle: Text(showdata[index]['email']),
                    leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(showdata[index]['urlAvatar']),
                  ),
                  ),
                );
               },
             itemCount: showdata.length,
           );
         },
         future: DefaultAssetBundle.of(context).loadString("assets/assets/userdata.json"),
       ),
     ),
   );
  }
}