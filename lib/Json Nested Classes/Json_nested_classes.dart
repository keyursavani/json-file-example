import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_example/Json%20Nested%20Classes/address.dart';
import 'package:json_example/Json%20Nested%20Classes/user.dart';

class jsonnestedclass extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return jsonnestedclassstate();
  }
}
class jsonnestedclassstate extends State<jsonnestedclass>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Nested Classes Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name:-${user.name}'),
            Text('Address:-${user.address}'),
          ],
        ),
      ),
    );
  }
}
// Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
//   'name': instance.name,
//   'address': instance.address,
// };

Address address = Address('My st.', 'Bhavnagar');
User user = User('Keyur', address);

// String jsonString =  '{"name":"savani","email":"savani@hyvikk.com"}';
//
// final myMap= json.decode(jsonString);
// final name = myMap['name'];
// final birthdateString = myMap['birthdate'];
// final birthdate = DateTime.parse(birthdateString);
// final decodedUser = User(name, address);