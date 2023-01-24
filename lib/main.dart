import 'dart:convert';

import 'package:flutter/material.dart';

import ' Json using serialization package/json_serialization.dart';
import 'Json Data Using ListView/json_data_using_listview.dart';
import 'Json Data Using Url/json_data_usin_url.dart';
import 'Json Example/json_example.dart';
import 'Json Inline/json_inline.dart';
import 'Json Nested Classes/Json_nested_classes.dart';
import 'Json Using Assets Directory /json_using_directory.dart';
import 'Json Using Assets/json_using_asaets.dart';
import 'Json inside model classes/Json_inside_model_class.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Example"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return jsoninline();
                                  })
                              );
                            },
                            child: Text("JSON Inline"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10 ,right: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return jsoninside();
                                  })
                              );
                            },
                            child: Text("JSON inside model classes"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Expanded(
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return jsonserialization();
                                  })
                              );
                            },
                            child: Text("Json USing Serialization Package"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10 ,right: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                   context,
                                  MaterialPageRoute(builder: (context){
                                    return jsonnestedclass();
                                  })
                              );
                            },
                            child: Text("Json Nested Classes"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Expanded(
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return jsonassets();
                                  })
                              );
                            },
                            child: Text("Json Using Assets"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10 ,right: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return jsonlistview();
                                  })
                              );
                            },
                            child: Text("Json Data Using ListView"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Expanded(
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return jsonurl();
                                  })
                              );
                            },
                            child: Text("Json Using Url"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10 ,right: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return jsondirectory();
                                  })
                              );
                            },
                            child: Text("Json Using Assets Directory"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Expanded(
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return jsonexample();
                                  })
                              );
                            },
                            child: Text("Json Example"),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10 ,right: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context){
                              //       return jsonexample2();
                              //     })
                              // );
                            },
                            child: Text(""),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}