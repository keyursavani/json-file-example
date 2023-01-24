import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_example/Json%20Data%20Using%20ListView/user.dart';
import 'package:http/http.dart' as http;

class jsonlistview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return jsonlistviewstate();
  }
}
class jsonlistviewstate extends State<jsonlistview>{

  // local json folder example

  List<User> users = getUsers();
  static List<User> getUsers(){
     const  data =[
      {
        "username" : "Keyur",
        "email" : "keyur@hyvikk.com",
        "urlAvatar" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6RJbcigqmXIVh-GoFT7H7BFDlmBkZS6O58Q&usqp=CAU"
      },
      {
        "username" : "Savani",
        "email" : "savani@hyvikk.com",
        "urlAvatar" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMXNd1I8B8sodyJWGBEDFqGT3zD2g-8LbLYg&usqp=CAU"
      }
    ];
    return data.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Data Using ListView"),
      ),
      body: Center(
        child:buildUsers(users),
      ),
    );
  }
}

Widget buildUsers(List<User> users) => ListView.builder(
  itemCount: users.length,
    itemBuilder: (context , index){
    final user = users[index];
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(user.urlAvatar),
        ),
        title: Text(user.username),
        subtitle: Text(user.email),
      ),
    );
    }
);


// raw.githubusercontent.com/johannesMilke/futurebuilder_example/master/assets/users.json