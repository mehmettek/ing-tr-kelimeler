import 'dart:convert';
 
import 'package:flutter/material.dart';

 class MyHomePage extends StatefulWidget {
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   List ingkelimeler; 
 

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Sozluk"),),
        body: SafeArea(
          child: Container(
          padding: EdgeInsets.all(15.0),
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString("assets/data/kelimeler.json"),
                builder: (context,cevap){
                ingkelimeler=jsonDecode(cevap.data.toString().toLowerCase());
                return ListView.separated(
              separatorBuilder: (context, i) => Divider(
        color: Colors.black,),
         itemCount:ingkelimeler.length,
        itemBuilder: (context,i){
          return Row(
             mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
              new Text(ingkelimeler[i]['kelime']),
             new Text(ingkelimeler[i]['anlami']),
          ],

          );  
  
        },
                );
    },
              ),
  ),
    ),
  );
   }
 } 
