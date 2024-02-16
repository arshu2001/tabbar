import 'dart:io';

import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  var text1 = TextEditingController();
  var text2 = TextEditingController();
  var t1 ;
  var t2 ;

  var res ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            controller: text1,
            style: TextStyle(color: Colors.amber),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10)
              ),
              labelText: 'enter the text',
              labelStyle: TextStyle(color: Colors.black)
            ),
          ),
          
          TextFormField(
            controller: text2,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10)
              ),
              labelText: 'enter the text',
              labelStyle: TextStyle(color: Colors.black)
            ),

          ),
          ElevatedButton(onPressed: () {
            t1 = int.parse(text1.text);
            t2 = int.parse(text2.text);
            
            setState(() {
              res=t1+t2;
            });
            
          }, child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Submit'),
          ) ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              height: 40,
              width: 80,
              color: Colors.cyan,
              child: Center(child: Text(res != null? res.toString() : ''))),
          ),
          

        ],
      ),
      
    );
  }
}