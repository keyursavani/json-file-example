import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_example/Json%20Inline/json_inline.dart';

import '../Json Data Using ListView/user.dart';

class jsondirectory extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return  jsondirectorystate();
  }
}
class jsondirectorystate extends State<jsondirectory>{
   late Future<List<User>> userFuture;
   @ override
   void initState(){
     super.initState();
     userFuture = getUsers(context);
   }
   static Future<List<User>> getUsers(BuildContext context) async {
     final assetBundle =  DefaultAssetBundle.of(context);
     final data = await assetBundle.loadString('assets/assets/userdata.json');
     final body = json.decode(data);
     return body.map<User>(User.fromJson).toList();
   }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Using Assets Directory"),
      ),
      body: Center(
          child: FutureBuilder<List<User>>(
            future: userFuture,
            builder: (context ,snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text("Loding.....")
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
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return mainpage(user: user);
              }),
            );
          },
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

class mainpage extends StatelessWidget{
   final User user;
  const mainpage({
    required this.user,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(user.username),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user.urlAvatar),
              radius: 80,
            ),
            SizedBox(height: 40),
            Text(user.username),
            SizedBox(height: 30),
            Text(user.email),
          ],
        ),
      ),
    );
  }
}