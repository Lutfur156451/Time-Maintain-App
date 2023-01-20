import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:time_maintain/model/DataList.dart';



class DataControl{

  Future <DataList?> fatchData() async{

    var uri="https://jsonplaceholder.typicode.com/comments";
    final response= await http.get(Uri.parse(uri));


    if(response.statusCode==200){
      print(response.body);
      return DataList();
    }

  }




}