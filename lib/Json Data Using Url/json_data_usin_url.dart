import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Json Data Using ListView/user.dart';

class jsonurl extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return jsonurlstate();
  }
}


class jsonurlstate extends State<jsonurl>{
  Future<List<User>> usersFuture = getUsers();

  static Future<List<User>> getUsers() async {
    const url ='https://raw.githubusercontent.com/johannesMilke/futurebuilder_example/master/assets/users.json';
    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body);
    return body.map<User>(User.fromJson).toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Data Using Url"),
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: usersFuture,
          builder: (context ,snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Colors.black45,
                  ),
                  SizedBox(height: 30),
                  Text("Loding...." , style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              );
            }
           else if(snapshot.hasData){
              final   users =snapshot.data!;
              return buildUsers(users);
            }
            else{
              return Text("No User Data!");
            }
          },
        )
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